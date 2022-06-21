package com.example.entity;

import java.io.Serializable;
import java.sql.Date;

import lombok.Data;

@Data
public class Users implements Serializable{
	
	private int id;
	private int user_id;
	private String user_name;
	private String mail;
	private String password;
	private int sex;
	private Date birth;
	private int height;
	private Date created_at;
	private int goal_exercise_time;
	private int goal_calorie;
	private int rank_flag;
	private int alcohol_flag;
	private int smoke_flag;
	private int role_id;
	private int achievement_id;
	private int achievement_flag;
	
	private double bmi;
	
}
