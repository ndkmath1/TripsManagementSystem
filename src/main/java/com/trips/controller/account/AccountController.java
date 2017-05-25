package com.trips.controller.account;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.trips.entity.Account;
import com.trips.model.AccountForm;
import com.trips.service.AccountService;
import com.trips.util.PaginationUtil;
import com.trips.validator.AccountValidator;

@Controller
@RequestMapping(value = "/admin/account", produces = "text/plain;charset=UTF-8")
public class AccountController {

	@Autowired
	private AccountService accountService;
	
	@Autowired
	private AccountValidator accountValidator;
	
	@InitBinder
	private void initBinder(WebDataBinder dataBinder) {
		Object target = dataBinder.getTarget();
		if (target == null) {
			return;
		}
		if (target.getClass() == AccountForm.class) {
			dataBinder.setValidator(accountValidator);
		}
	}

//	@GetMapping(value = "/list")
//	public String index(Model model) {
//		model.addAttribute("accountList", accountService.findAll());
//		return "admin/account/list";
//	}
	
	@GetMapping("/list")
    public String list(Model model, @RequestParam(value = "page", defaultValue = "1") String page) {
        int currentPage = 1;
        String redirectUrl = "redirect:/admin/account/list?page=1";
        try {
            currentPage = Integer.parseInt(page);
        } catch (Exception e) {
            return redirectUrl;
        }
        if (currentPage <= 0) {
            return redirectUrl;
        }
        PaginationUtil<Account> paging = accountService.pagingAccount(currentPage);
        if (!paging.isFound()) {
            return redirectUrl;
        } else {
            model.addAttribute("paging", paging);
            return "admin/account/list";
        }
    }
	
	private String formAccount(Model model, AccountForm account) {
		model.addAttribute("accountForm", account);
		if (account.getId() == null) {
//			System.out.println("### create new account");
			model.addAttribute("accountFormTitle", "Create new account");
		} else {
//			System.out.println("### edit account");
			model.addAttribute("accountFormTitle", "Edit an account");
		}
		return "admin/account/form";
	}

	@GetMapping("/create")
	public String create(Model model) {
		AccountForm account = new AccountForm();
		return formAccount(model , account);
	}

	@PostMapping("/save")
	public String save(Model model, @ModelAttribute("accountForm") @Validated AccountForm accountFromForm, BindingResult result, RedirectAttributes redirect) {
		if (result.hasErrors()) {
			return formAccount(model, accountFromForm);
		} else {
			accountService.saveAccountFromForm(accountFromForm);
			redirect.addFlashAttribute("success", "Save account successfully");
			return "redirect:/admin/account/list";
		}
	}

	@GetMapping("/{id}/edit")
	public String edit(@PathVariable int id, Model model) {
		return formAccount(model, accountService.findAccountForm(id));
	}

	@GetMapping("/{id}/delete")
	public String delete(@PathVariable int id, RedirectAttributes redirect) {
		accountService.delete(id);
		redirect.addFlashAttribute("success", "Delete account successfully!");
		return "redirect:/admin/account/list";
	}

	@GetMapping("/search")
	public String search(@RequestParam("q") String q, Model model) {
		if (q.equals("")) {
			return "redirect:/admin/account";
		}
		model.addAttribute("accountList", accountService.search(q));
		return "/admin/account/list";
	}

}
