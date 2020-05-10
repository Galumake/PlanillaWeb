package com.sedesoft.planillaweb.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.sedesoft.planillaweb.model.Departamento;



@Repository 
public interface DepartamentoRepo extends CrudRepository<Departamento, Long> {

	
}

