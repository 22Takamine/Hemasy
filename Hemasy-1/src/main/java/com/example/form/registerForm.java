package com.example.form;

import java.sql.Date;

import javax.validation.constraints.NotEmpty;


public class registerForm {
    
    @NotEmpty
    private String mail;
    
    @NotEmpty
    private String pass;
    
	private String user_name;
	private String password;
	private Integer sex;
	private Date birth;
	private Integer height;
	private Date created_at;
	private Integer rank_flag;
	private Integer alcohol_flag;
	private Integer smoke_flag;
    private Integer role;

    public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Integer getSex() {
		return sex;
	}

	public void setSex(Integer sex) {
		this.sex = sex;
	}

	public Date getBirth() {
		return birth;
	}

	public void setBirth(Date birth) {
		this.birth = birth;
	}

	public Integer getHeight() {
		return height;
	}

	public void setHeight(Integer height) {
		this.height = height;
	}

	public Date getCreated_at() {
		return created_at;
	}

	public void setCreated_at(Date created_at) {
		this.created_at = created_at;
	}

	public Integer getRank_flag() {
		return rank_flag;
	}

	public void setRank_flag(Integer rank_flag) {
		this.rank_flag = rank_flag;
	}

	public Integer getAlcohol_flag() {
		return alcohol_flag;
	}

	public void setAlcohol_flag(Integer alcohol_flag) {
		this.alcohol_flag = alcohol_flag;
	}

	public Integer getSmoke_flag() {
		return smoke_flag;
	}

	public void setSmoke_flag(Integer smoke_flag) {
		this.smoke_flag = smoke_flag;
	}

	public Integer getRole() {
		return role;
	}

	public void setRole(Integer role) {
		this.role = role;
	}

	public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }
    
    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

}