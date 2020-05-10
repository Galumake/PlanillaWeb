package com.sedesoft.planillaweb.web;

import javax.validation.Valid;


import java.util.Optional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;

import com.sedesoft.planillaweb.model.Nacionalidad;
import com.sedesoft.planillaweb.service.NacionalidadSrv;

@Controller
public class NacionalidadCtrl {

	@Autowired
	NacionalidadSrv nacSrv;
	
	@GetMapping("/catalog/nac")
	public String showNac(Model model) {
		Nacionalidad nacionalidad = new Nacionalidad();
		model.addAttribute("nacionalidad", nacionalidad);
		model.addAttribute("nacs",nacSrv.findAll());
		return "/config/persona/nacionalidad";
	}
	
	@GetMapping("/catalog/save/")
	public String saveNac(@ModelAttribute("nacionalidad") @Valid Nacionalidad nac, Model model) {
		nacSrv.save(nac);
		Nacionalidad nacionalidad = new Nacionalidad();
		model.addAttribute("nacionalidad", nacionalidad);
		model.addAttribute("nacs",nacSrv.findAll());
		return"/config/persona/nacionalidad";
	}
	
	@GetMapping("/catalog/delete/{id}")
	public String deleteNac(@PathVariable("id") Long id, Model model) {
		nacSrv.deleteById(id);
		Nacionalidad nacionalidad = new Nacionalidad();
		model.addAttribute("nacionalidad", nacionalidad);
		model.addAttribute("nacs",nacSrv.findAll());
		return"/config/persona/nacionalidad";
	}
	
	@GetMapping("/catalog/sets_modifie/{id}")
	public String sets_modifie(@PathVariable("id") Long id, Model model) {
        Optional<Nacionalidad> nacionalidadParaEditar = nacSrv.findById(id);        
		model.addAttribute("nacionalidad", nacionalidadParaEditar);
		model.addAttribute("nacs",nacSrv.findAll());
		return"/config/persona/nacionalidad";
	}
	
	@GetMapping("/catalog/modifie") 
	public String modifica(@ModelAttribute("nacionalidad") @Valid Nacionalidad nac, Model model) {
		nacSrv.save(nac);
		Nacionalidad nacionalidad = new Nacionalidad();
		model.addAttribute("nacionalidad", nacionalidad);
		model.addAttribute("nacs",nacSrv.findAll());
		return"/config/persona/nacionalidad";
	}
	

}