package com.trips.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.trips.dao.DriverDao;
import com.trips.model.DriverForm;
/*import com.trips.model.AccountDriver;*/
import com.trips.service.DriveService;


@Controller
@RequestMapping("/admin/driver")
public class DriveController {
	
	@Autowired
	private DriveService driveService;
	
	@Autowired
	private DriverDao driverDao;
	
	
	@GetMapping("/list")
	public String listDriver(Model model){
		model.addAttribute("driverList", driveService.listDriver());
		
		return "admin/driver/list";
	}
	
	private String formDriver(Model model, DriverForm driverForm){
		model.addAttribute("formDriver", driverForm);
		return "formDriver";
	}
	
	@GetMapping("/{id}/edit")
	public String edit(@PathVariable int id, Model model){
		DriverForm driverForm = null;
		if(id != 0){
			driverForm = this.driveService.findDriverForm(id);
		}
		if (driverForm == null) {
			return "redirect:/admin/driver/list";
		}
		return this.formDriver(model, driverForm);	
	}
	
	@GetMapping("/{id}/delete")
	public String deleteDriver(Model model, @PathVariable int id){
		if(id != 0){
			this.driverDao.deleteDriver(id);
		}
		return "redirect:/admin/driver/list";
	}
	
	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public String saveDriver(Model model, @ModelAttribute("applicantForm") @Validated DriverForm driverForm, final RedirectAttributes redirectAttributes){
		this.driverDao.saveDriver(driverForm);
		redirectAttributes.addAttribute("message", "Save Driver Success");
		return "redirect:admin/driver/list";
	}
	
}
