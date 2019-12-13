package com.example.demo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

@Component
public class UserDao {

	@Autowired
	private JdbcTemplate jTemp;
	
	public boolean addUser(User user)
	{
		String sql="insert into user (username, password, email, mobile) values (?,?,?,?)";
		jTemp.update(sql,user.getUsername(),user.getPassword(),user.getEmail(),user.getMobile());
		return true;
	}
	
	public boolean validUser(User user)
	{
		String sql="select * from user where username=? and password=?";
		User dbuser=jTemp.queryForObject(sql, new Object[] {user.getUsername(),user.getPassword()}, new UserRowMapper());
		
		if(dbuser==null)
		{
			return false;
		}
		return true;
	}
	
}
