package com.sedesoft.planillaweb.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Service;

import com.sedesoft.planillaweb.model.Departamento;
import com.sedesoft.planillaweb.model.User;
import com.sedesoft.planillaweb.repository.DepartamentoRepo;

@Service
public class DepartamentoSrv implements DepartamentoRepo {

	@Autowired
	DepartamentoRepo depaRepo;
	
	@Autowired
	UserService userSrv;
	
	@Override
	public <S extends Departamento> S save(S entity) {
		return depaRepo.save(entity);
	}

	@Override
	public <S extends Departamento> Iterable<S> saveAll(Iterable<S> entities) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Optional<Departamento> findById(Long id) {
		return depaRepo.findById(id);
	}

	@Override
	public boolean existsById(Long id) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public Iterable<Departamento> findAll() {
		return depaRepo.findAll();
	}

	@Override
	public Iterable<Departamento> findAllById(Iterable<Long> ids) {
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
		depaRepo.deleteById(id);
	}

	@Override
	public void delete(Departamento entity) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteAll(Iterable<? extends Departamento> entities) {
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
