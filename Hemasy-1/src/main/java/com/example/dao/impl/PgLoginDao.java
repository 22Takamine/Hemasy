package com.example.dao.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;

import com.example.dao.LoginDao;
import com.example.entity.Login;


@Repository
public class PgLoginDao implements LoginDao {

	

	@Autowired
	private NamedParameterJdbcTemplate jdbcTemplate;

	/**
	 * 条件を指定した検索
	 */
	@Override
	public Login findIdAndPass(String mail,String pass) {
		
		String sql = """
						select * from users
						where mail = :mail
						and password = :password
					""";
		
		MapSqlParameterSource param = new MapSqlParameterSource();
		param.addValue("mail", mail);
		param.addValue("password", pass);

		var list = jdbcTemplate.query(sql, param, new BeanPropertyRowMapper<Login>(Login.class) );
		return list.isEmpty() ? null :list.get(0);
		
		
	}
}

