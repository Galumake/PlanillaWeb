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

import com.sedesoft.planillaweb.model.Departamento;
import com.sedesoft.planillaweb.service.DepartamentoSrv;

@Controller
public class DepartamentoCtrlr {
	
	@Autowired
	DepartamentoSrv deptoSrv;
	
	@GetMapping("/catalog/company/depto/list")
	public String showDepto(Model model) {
		Departamento depto = new Departamento();
		model.addAttribute("depto", depto);	
		model.addAttribute("lista", deptoSrv.findAll());
		model.addAttribute("date", LocalDateTime.now());
		model.addAttribute("userId", deptoSrv.userId());
		return"/config/empresa/departamentos";
	}
	
	@GetMapping("/catalog/company/depto/save/")
	public String saveDepto(@ModelAttribute("depto") @Valid Departamento deptEntity, Model model) {
		deptoSrv.save(deptEntity);
		Departamento depto = new Departamento();
		model.addAttribute("depto", depto);
		model.addAttribute("lista", deptoSrv.findAll());
		return"/config/empresa/departamentos";
	}
	
	@GetMapping("/catalog/company/depto/delete/{id}")
	public String deleteDepto(@PathVariable("id") Long id, Model model) {
		deptoSrv.deleteById(id);
		Departamento depto = new Departamento();
		model.addAttribute("depto", depto);
		model.addAttribute("lista", deptoSrv.findAll());
		return"/config/empresa/departamentos";
	}
	
	@GetMapping("/catalog/company/depto/sets/{id}")
	public String setsDepto(@PathVariable("id") Long id, Model model) {
		Optional<Departamento> depto = deptoSrv.findById(id); 
		model.addAttribute("depto", depto);
		model.addAttribute("lista", deptoSrv.findAll());
		return"/config/empresa/departamentos";
	}
	
	@GetMapping("/catalog/company/depto/modifie")
	public String modificaDepto(@ModelAttribute("depto") @Valid Departamento e, Model model) {
		deptoSrv.save(e); 
		Departamento depto = new Departamento();
		model.addAttribute("depto", depto);
		model.addAttribute("lista", deptoSrv.findAll());
		return"/config/empresa/departamentos";
	}

}
