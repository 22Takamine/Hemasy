package com.example.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;

import com.example.dao.UserDao;
import com.example.entity.User;


@Repository
public class PgUserDao implements UserDao {

	private static final String SELECT_ID_AND_PASS = 
			"SELECT * FROM users WHERE mail = :mail and password = :password";

	private static final String INSERT = "INSERT INTO users(user_name,mail,password,sex,birth,height,created_at,rank_flag,alcohol_flag,smoke_flag,role_id )"
			+ " VALUES(:user_name, :mail,:password,:sex,:birth,:height,:created_at,:rank_flag,:alcohol_flag,:smoke_flag,1)";

	
	@Autowired
	private NamedParameterJdbcTemplate jdbcTemplate;

	/**
	 * 条件を指定した検索
	 */
	@Override
	public User findIdAndPass(String mail,String password) {

		MapSqlParameterSource param = new MapSqlParameterSource();

		param.addValue("mail", mail);
		param.addValue("password", password);

		String sql = SELECT_ID_AND_PASS;
		List<User>resultList = jdbcTemplate.query(sql, param, new BeanPropertyRowMapper<User>(User.class));

		return resultList.isEmpty() ? null:resultList.get(0);
	}
	
	@Override
	public void insert(User user) {
		String sql = INSERT;

		MapSqlParameterSource param = new MapSqlParameterSource();
		param.addValue("user_name", user.getUser_name());
		param.addValue("mail", user.getMail());
		param.addValue("password", user.getPassword());
		param.addValue("sex", user.getSex());
		param.addValue("birth", user.getBirth());
		param.addValue("height", user.getHeight());
		param.addValue("created_at", user.getCreated_at());
		param.addValue("rank_flag", user.getRank_flag());
		param.addValue("alcohol_flag", user.getAlcohol_flag());
		param.addValue("smoke_flag", user.getSmoke_flag());
		
		jdbcTemplate.update(sql, param);
		
		return;
	}

}

