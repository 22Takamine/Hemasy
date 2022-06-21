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
	
	public Users BMI(int user_id) {
		String sql = """
						SELECT ROUND(T2.value2/((T1.height/100)*(T1.height/100)), 2) bmi
						from users T1
						Join lists_and_records T2
						ON T1.user_id = T2.user_id
						AND T2.category = 2
						AND T2.type = 5
				
						where T1.user_id = :user_id
					""";
		MapSqlParameterSource param = new MapSqlParameterSource();
		param.addValue("user_id", user_id);
		var list = jdbcTemplate.query(sql, param, new BeanPropertyRowMapper<Users>(Users.class) );
		return list.isEmpty() ? null :list.get(0);

	}
}
