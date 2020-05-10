package com.sedesoft.planillaweb.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.sedesoft.planillaweb.model.Puesto;



@Repository
public interface PuestoRepo extends CrudRepository<Puesto, Long> {

}
