package com.example.service;

import com.example.entity.User;

/**
 * productsテーブル用サービスインターフェース
 */
public interface UserService {

	public User findIdAndPass(String login_id, String password);
	
    public void insert(User user);

}

