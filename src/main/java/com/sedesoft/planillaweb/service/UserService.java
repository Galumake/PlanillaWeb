package com.sedesoft.planillaweb.service;

import com.sedesoft.planillaweb.model.User;

public interface UserService {
    void save(User user);

    User findByUsername(String username);

	User findByEmail(String username);
}
