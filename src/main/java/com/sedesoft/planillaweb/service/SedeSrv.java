package com.sedesoft.planillaweb.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Service;

import com.sedesoft.planillaweb.model.Sede;
import com.sedesoft.planillaweb.model.User;
import com.sedesoft.planillaweb.repository.SedeRepo;

@Service
public class SedeSrv implements SedeRepo {

	@Autowired
	SedeRepo sedeRepo;
	
	@Autowired
	UserService userSrv;

	@Override
	public <S extends Sede> S save(S entity) {
		return sedeRepo.save(entity);
	}

	@Override
	public <S extends Sede> Iterable<S> saveAll(Iterable<S> entities) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Optional<Sede> findById(Long id) {
		return sedeRepo.findById(id);
	}

	@Override
	public boolean existsById(Long id) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public Iterable<Sede> findAll() {
		return sedeRepo.findAll();
	}

	@Override
	public Iterable<Sede> findAllById(Iterable<Long> ids) {
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
		sedeRepo.deleteById(id);
	}

	@Override
	public void delete(Sede entity) {
		// TODO Auto-generated method stub

	}

	@Override
	public void deleteAll(Iterable<? extends Sede> entities) {
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
