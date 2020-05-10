package com.sedesoft.planillaweb.service;

public interface SecurityService {

    String findLoggedInUsername();

    void autoLogin(String username, String password);
}
