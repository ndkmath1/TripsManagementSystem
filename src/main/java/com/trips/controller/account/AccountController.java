package com.trips.controller.account;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.trips.entity.Account;
import com.trips.service.AccountService;

@Controller
@RequestMapping("/admin/account")
public class AccountController {

	@Autowired
	private AccountService accountService;

	@GetMapping(value = "/list")
	public String index(Model model) {
		model.addAttribute("accountList", accountService.findAll());
		return "admin/account/list";
	}

	@GetMapping("/create")
	public String create() {
		return "admin/account/form";
	}

	@PostMapping("/save")
	public String save(@Valid Account account, BindingResult result, RedirectAttributes redirect) {

		return "redirect:/admin/account";
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
