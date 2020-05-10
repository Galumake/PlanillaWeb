package com.sedesoft.planillaweb.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Service;

import com.sedesoft.planillaweb.model.Puesto;
import com.sedesoft.planillaweb.model.User;
import com.sedesoft.planillaweb.repository.PuestoRepo;

@Service
public class PuestoSrv implements PuestoRepo {

	@Autowired
	PuestoRepo puestoRepo;
	
	@Autowired
	UserService userSrv;
	
	@Override
	public <S extends Puesto> S save(S entity) {
		return puestoRepo.save(entity);
	}

	@Override
	public <S extends Puesto> Iterable<S> saveAll(Iterable<S> entities) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Optional<Puesto> findById(Long id) {
		return puestoRepo.findById(id);
	}

	@Override
	public boolean existsById(Long id) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public Iterable<Puesto> findAll() {
		return puestoRepo.findAll();
	}

	@Override
	public Iterable<Puesto> findAllById(Iterable<Long> ids) {
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
		puestoRepo.deleteById(id);
	}

	@Override
	public void delete(Puesto entity) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteAll(Iterable<? extends Puesto> entities) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteAll() {
		// TODO Auto-generated method stub
		
	}

	public Long userId() {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		UserDetails userDetails = (UserDetails) auth.getPrincipal();
		User user = userSrv.findByEmail(userDetails.getUsername());
		return user.getId();
	}
}
