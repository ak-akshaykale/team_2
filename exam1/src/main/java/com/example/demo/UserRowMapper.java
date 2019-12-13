package com.example.demo;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class UserRowMapper implements RowMapper<User>{

	@Override
	public User mapRow(ResultSet rs, int a) throws SQLException {
		
		User user= new User();
		
		user.setUsername(rs.getString("username"));
		user.setPassword(rs.getString("password"));

		return user;
	}

}
