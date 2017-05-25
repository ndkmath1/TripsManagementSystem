package com.trips.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.trips.service.CarService;

@Controller
@RequestMapping("/admin/car")
public class CarController {
	
	@Autowired
	private CarService carService;
	
	@GetMapping("/list")
	public String listCar(Model model) {
		model.addAttribute("carList", carService.listCar());
		return "admin/car/list";
	}
	
	
	
}
