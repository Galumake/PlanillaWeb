package com.sedesoft.planillaweb.web;

import java.time.LocalDateTime;
import java.util.Optional;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;

import com.sedesoft.planillaweb.model.Sede;
import com.sedesoft.planillaweb.service.SedeSrv;

@Controller
public class SedeCtrlr {
	
	@Autowired
	SedeSrv sedeSrv;

	@GetMapping("/catalog/company/sede/list")
	public String showArea(Model model){
		Sede sede = new Sede();
		model.addAttribute("sede", sede);
		model.addAttribute("lista", sedeSrv.findAll());
		model.addAttribute("date", LocalDateTime.now());
		model.addAttribute("userId", sedeSrv.userId());
		return "/config/empresa/sedes";
	}
	
	@GetMapping("/catalog/company/sede/save/")
	public String saveArea(@ModelAttribute("sede") @Valid Sede sedeEntity, Model model){
		sedeSrv.save(sedeEntity);
		Sede sede = new Sede();
		model.addAttribute("sede", sede);
		model.addAttribute("lista", sedeSrv.findAll());
		return "/config/empresa/sedes";
	}
	
	@GetMapping("/catalog/company/sede/delete/{id}")
	public String deleteSede(@PathVariable("id") Long id, Model model){
		sedeSrv.deleteById(id);
		Sede sede = new Sede();
		model.addAttribute("sede", sede);
		model.addAttribute("lista", sedeSrv.findAll());
		return "/config/empresa/sedes";
	}
	
	@GetMapping("/catalog/company/sede/sets_modifie/{id}")
	public String setArea(@PathVariable("id") Long id, Model model){
		Optional<Sede> sedeEditar = sedeSrv.findById(id);
		model.addAttribute("sede", sedeEditar);
		model.addAttribute("lista", sedeSrv.findAll());
		return "/config/empresa/sedes";
	}
	
	@GetMapping("/catalog/company/sede/modifie")
	public String modificaArea(@ModelAttribute("sede") @Valid Sede sedeEntity, Model model){
		sedeSrv.save(sedeEntity);
		Sede sede = new Sede();
		model.addAttribute("sede", sede);
		model.addAttribute("lista", sedeSrv.findAll());
		return "/config/empresa/sedes";
	}
	


}
