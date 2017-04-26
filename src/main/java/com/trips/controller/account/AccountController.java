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

import com.trips.model.Account;
import com.trips.service.AccountService;
import com.trips.validator.AccountValidator;

@Controller
@RequestMapping("/admin/account")
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
		if (target.getClass() == Account.class) {
			dataBinder.setValidator(accountValidator);
		}
	}

	@GetMapping(value = "/list")
	public String index(Model model) {
		model.addAttribute("accountList", accountService.findAll());
		return "admin/account/list";
	}
	
	private String formAccount(Model model, Account account) {
		model.addAttribute("accountForm", account);
		if (account.getId() == null) {
			model.addAttribute("accountFormTitle", "Create new account");
		} else {
			model.addAttribute("accountFormTitle", "Edit an account");
		}
		return "admin/account/form";
	}

	@GetMapping("/create")
	public String create(Model model) {
		Account account = new Account();
		return formAccount(model , account);
	}

	@PostMapping("/save")
	public String save(Model model, @ModelAttribute("accountForm") @Validated Account account, BindingResult result, RedirectAttributes redirect) {
		if (result.hasErrors()) {
			return formAccount(model, account);
		} else {
			return "redirect:/admin/account";
		}
	}

	@GetMapping("/{id}/edit")
	public String edit(@PathVariable int id, Model model) {
		model.addAttribute("account", accountService.findOne(id));
		return "/admin/account/form";
	}

	@GetMapping("/{id}/delete")
	public String delete(@PathVariable int id, RedirectAttributes redirect) {
		accountService.delete(id);
		redirect.addFlashAttribute("success", "Delete account successfully!");
		return "redirect:/admin/account";
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
