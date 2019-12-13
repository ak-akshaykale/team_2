package com.example.demo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ExamController {
	
	@Autowired
	private UserDao ud;
	
	@GetMapping("/signup")
	public String signu()
	{
		return "signup";
	}
	
	@PostMapping("/signup1")
	public ModelAndView signup(User user)
	{
		this.ud.addUser(user);
		
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("login");
		
		return mv;
	}
	
	@PostMapping("/login")
	public ModelAndView log(User user)
	{
		boolean v= this.ud.validUser(user);
		
		ModelAndView mv = new ModelAndView();
		
		try 
		{
			if(v)
				mv.setViewName("Home");
			else
				mv.setViewName("login");
			return mv;
		}
		catch(Exception e)
		{
			mv.setViewName("login");

		}
		return mv;
	}
}
