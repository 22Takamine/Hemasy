package com.example.dao;

import com.example.entity.User;

/**
 * productsテーブル用DAO (インターフェース)
 */
public interface UserDao {

	public User findIdAndPass(String mail, String password);
   
	public void insert(User user);

}

