package com.sedesoft.planillaweb.web;

import java.sql.Date;
import java.time.LocalDate;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.sedesoft.planillaweb.model.Persona;
import com.sedesoft.planillaweb.service.DepartamentoSrv;
import com.sedesoft.planillaweb.service.NacionalidadSrv;
import com.sedesoft.planillaweb.service.PersonaSrv;
import com.sedesoft.planillaweb.service.PuestoSrv;
import com.sedesoft.planillaweb.service.SedeSrv;

@Controller
public class PersonaCtrlr {
	
	@Autowired
	PersonaSrv personaSrv;
	
	@Autowired
	NacionalidadSrv nacSrv;
	
	@Autowired
	SedeSrv sedeSrv;
	
	@Autowired
	PuestoSrv puestoSrv;
	
	@Autowired
	DepartamentoSrv departamentoSrv;

	@GetMapping("/config/person/employee/show")
	public String personaShow(Model model) {
		Date date = java.sql.Date.valueOf(LocalDate.now());
		model.addAttribute("entidad", (new Persona()));	
		model.addAttribute("nacionalidades", nacSrv.findAll() );
		model.addAttribute("sedes", sedeSrv.findAll() );
		model.addAttribute("puestos", puestoSrv.findAll() );
		model.addAttribute("departamentos", departamentoSrv.findAll() );
		model.addAttribute("localDateTime",  date);
		String filtro = null;
		model.addAttribute("filtro",filtro );
		return  "/config/persona/empleados";
	}

}
