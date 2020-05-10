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

import com.sedesoft.planillaweb.model.Puesto;
import com.sedesoft.planillaweb.service.PuestoSrv;

@Controller
public class PuestoCtrlr {

	@Autowired
	PuestoSrv puestoSrv;
	
	@GetMapping("/catalog/company/position/list") 
	public String showPuesto(Model model) {
		Puesto puesto = new Puesto(); 
		model.addAttribute("puesto", puesto);
		model.addAttribute("lista", puestoSrv.findAll());
		model.addAttribute("date", LocalDateTime.now());
		model.addAttribute("userId", puestoSrv.userId());
		return"/config/empresa/puestos";
	}

	@GetMapping("/catalog/company/position/save/") 
	public String savePuesto(@ModelAttribute("puesto") @Valid Puesto puestoEntity, Model model) {
		puestoSrv.save(puestoEntity);
		Puesto puesto = new Puesto(); 
		model.addAttribute("puesto", puesto);
		model.addAttribute("lista", puestoSrv.findAll());
		return"/config/empresa/puestos";
	}
	
	@GetMapping("/catalog/company/position/delete/{id}") 
	public String deletePuesto(@PathVariable("id") Long id, Model model) {
		puestoSrv.deleteById(id);
		Puesto puesto = new Puesto(); 
		model.addAttribute("puesto", puesto);
		model.addAttribute("lista", puestoSrv.findAll());
		return"/config/empresa/puestos";
	}
	
	@GetMapping("/catalog/company/position/sets_modifie/{id}") 
	public String setPuesto(@PathVariable("id") Long id, Model model) {
		Optional<Puesto> puesto =  puestoSrv.findById(id);
		model.addAttribute("puesto", puesto);
		model.addAttribute("lista", puestoSrv.findAll());
		return"/config/empresa/puestos";
	}
	
	@GetMapping("/catalog/company/position/modifie") 
	public String modificaPuesto(@ModelAttribute("puesto") @Valid Puesto e, Model model) {
		puestoSrv.save(e);
		Puesto puesto = new Puesto(); 
		model.addAttribute("puesto", puesto);
		model.addAttribute("lista", puestoSrv.findAll());
		return"/config/empresa/puestos";
	}
}
