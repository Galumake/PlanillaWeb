package com.sedesoft.planillaweb.repository;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.sedesoft.planillaweb.model.Sede;


@Repository
public interface SedeRepo extends CrudRepository<Sede, Long> {
	
	
}