package com.sedesoft.planillaweb.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sedesoft.planillaweb.model.Nacionalidad;
import com.sedesoft.planillaweb.repository.NacionalidadRepo;

@Service
public class NacionalidadSrv implements NacionalidadRepo {

	@Autowired
	NacionalidadRepo nacRep;

	@Override
	public <S extends Nacionalidad> S save(S entity) {
		return nacRep.save(entity);
	}

	@Override
	public <S extends Nacionalidad> Iterable<S> saveAll(Iterable<S> entities) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Optional<Nacionalidad> findById(Long id) {
		return nacRep.findById(id);
	}

	@Override
	public boolean existsById(Long id) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public Iterable<Nacionalidad> findAll() {
		return nacRep.findAll();
	}

	@Override
	public Iterable<Nacionalidad> findAllById(Iterable<Long> ids) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public long count() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void deleteById(Long id) {
		nacRep.deleteById(id);
	}

	@Override
	public void delete(Nacionalidad entity) {
		// TODO Auto-generated method stub

	}

	@Override
	public void deleteAll(Iterable<? extends Nacionalidad> entities) {
		// TODO Auto-generated method stub

	}

	@Override
	public void deleteAll() {
		// TODO Auto-generated method stub

	}

}