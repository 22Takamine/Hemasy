package com.example.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;

import com.example.entity.Users;

@Repository
public class UserDao {
	
	@Autowired
	private NamedParameterJdbcTemplate jdbcTemplate;
	
	public Users userSelect(String mail, String pass) {
		String sql = """
						select * from users
						where mail = :mail
						and password = :password
				""";
		MapSqlParameterSource param = new MapSqlParameterSource();
		param.addValue("mail", mail);
		param.addValue("password", pass);
		
		var list = jdbcTemplate.query(sql, param, new BeanPropertyRowMapper<Users>(Users.class) );
		return list.isEmpty() ? null :list.get(0);
		
	}
	
}
