package com.sedesoft.planillaweb.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.sedesoft.planillaweb.model.User;


public interface UserRepository extends JpaRepository<User, Long> {
    User findByUsername(String username);
}
