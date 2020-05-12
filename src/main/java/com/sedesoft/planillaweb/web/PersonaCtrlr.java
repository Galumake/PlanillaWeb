package com.sedesoft.planillaweb.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.sedesoft.planillaweb.service.PersonaSrv;

@Controller
public class PersonaCtrlr {
	
	@Autowired
	PersonaSrv personaSrv;
	
	@GetMapping("/config/person/employee/show")
	public String personaShow(Model model) {
		return  "/config/persona/colaboradores";
	}

}
