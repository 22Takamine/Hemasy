package com.example.dao.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;

import com.example.dao.RegisterDao;
import com.example.entity.Register;


@Repository
public class PgRegisterDao implements RegisterDao {

	private static final String INSERT = "INSERT INTO users(user_name,mail,password,sex,birth,height,created_at,rank_flag,alcohol_flag,smoke_flag,role_id )"
			+ " VALUES(:user_name, :mail,:password,:sex,:birth,:height,:created_at,:rank_flag,:alcohol_flag,:smoke_flag,1)";

	@Autowired
	private NamedParameterJdbcTemplate jdbcTemplate;

	/**
	 * 登録
	 */
	@Override
	public void insert(Register register) {
		String sql = INSERT;

		MapSqlParameterSource param = new MapSqlParameterSource();
		param.addValue("user_name", register.getName());
//		param.addValue("mail", register.getMail());
//		param.addValue("password", register.getPass());
//		param.addValue("sex", register.getSex());
//		param.addValue("birth", register.getBirth());
//		param.addValue("height", register.getHeight());
//		param.addValue("created_at", register.getCreated());
//		param.addValue("rank_flag", register.getRank());
//		param.addValue("alcohol_flag", register.getAlcohol());
//		param.addValue("smoke_flag", register.getSmoke());

		jdbcTemplate.update(sql, param);
	}

}

