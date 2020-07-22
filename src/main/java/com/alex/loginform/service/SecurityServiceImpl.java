package com.alex.loginform.service;

import org.springframework.stereotype.Service;

@Service
public class SecurityServiceImpl implements SecurityService {

    @Override
    public boolean logIn(String email, String password) {
        return email.equals("smith@mail.com") && password.equals("password");
    }
}
