package com.sedesoft.planillaweb.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.sedesoft.planillaweb.model.Persona;

@Repository
public interface PersonaRepo extends CrudRepository<Persona, Long>{

}
