package com.example.service.impl;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.dao.UserDao;
import com.example.entity.User;
import com.example.service.UserService;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserDao userDao;

    /**
     * 条件を指定した検索
     */
    @Override
    public User findIdAndPass(String mail,String password) {
        return userDao.findIdAndPass(mail,password);
    }
    
    /**
     * 登録
     */
    @Override
    public void insert(User user) {
    	userDao.insert(user);
    }
}

