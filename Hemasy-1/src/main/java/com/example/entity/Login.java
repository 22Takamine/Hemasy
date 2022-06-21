package com.example.entity;

import com.example.util.ParamUtil;

/**
 * productsテーブルのEntity
 */
public class Login {
    private String mail;
    private String password;
    private String name;
    private Integer role;

    public Login() {

    }

    public Login(String mail,String password, String name, Integer role) {
        this.mail = mail;
        this.password = password;
        this.name = name;
        this.role = role;
    }

	// 全フィールドが未入力かの判断
    public boolean isEmptyCondition() {
        return mail == null && ParamUtil.isNullOrEmpty(mail) && password == null;
    }

	public String getMail() {
		return mail;
	}

	public void setMail(String mail) {
		this.mail = mail;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Integer getRole() {
		return role;
	}

	public void setRole(Integer role) {
		this.role = role;
	}
}

