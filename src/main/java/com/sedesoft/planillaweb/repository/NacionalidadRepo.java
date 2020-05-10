package com.sedesoft.planillaweb.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.sedesoft.planillaweb.model.Nacionalidad;

@Repository
public interface NacionalidadRepo extends CrudRepository<Nacionalidad, Long> {

}
