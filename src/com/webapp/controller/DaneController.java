package com.webapp.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.webapp.dao.DaneDAO;
import com.webapp.entity.Dane;
import com.webapp.service.DaneService;



@Controller
@RequestMapping("/dane")
public class DaneController {
	
	//need to inject customer service
	@Autowired
	private DaneService daneService;
	
	@GetMapping("/list")
	public String listDane(Model theModel) {
	
		//get dane from dao
		List<Dane> theDane = daneService.getDane();
		
		//add customers to the model
		theModel.addAttribute("dane",theDane);
		
		
		return "list-dane";
	}

	@GetMapping("/showFormForAdd")
	public String showFormForAdd (Model theModel) {
		
		// create model attribute to bind form data
		Dane theDane = new Dane();
		
		theModel.addAttribute("dane",theDane);
		return "dane-form";
	}
	
	@PostMapping("/saveDane")
	public String saveDane (@ModelAttribute("dane") Dane theDane) {
		// save data using service
		daneService.saveDane(theDane);
		
		return "redirect:/dane/list";
	}
	
	@GetMapping("/showFormForUpdate")
	public String showFormForUpdate (@RequestParam("daneId") int theId, Model theModel) {
		// get customer from service
		Dane theDane = daneService.getDane(theId);
		
		//set customer as a model 
		theModel.addAttribute("dane", theDane);
		//send over to form
		
		return "dane-form";
	}
		
	@GetMapping("/delete")
	public String deleteDane(@RequestParam("daneId")int theId) {
		
		// delete dane
		daneService.deleteDane(theId);
		
		return "redirect:/dane/list";
	}
	
	
	
}
