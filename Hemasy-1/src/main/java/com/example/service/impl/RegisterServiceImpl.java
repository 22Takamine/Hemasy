package com.example.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.dao.RegisterDao;
import com.example.entity.Register;
import com.example.service.RegisterService;

@Service
public class RegisterServiceImpl implements RegisterService {
    @Autowired
    private RegisterDao registerDao;

    /**
     * 登録
     */
    @Override
    public void insert(Register register) {
    	registerDao.insert(register);
    }
    
}
