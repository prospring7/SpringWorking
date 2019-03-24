package com.cts.product.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.cts.product.bean.Login;
import com.cts.product.service.LoginService;

@Controller
public class LoginController {

	@Autowired
	private LoginService loginService;
	
	@RequestMapping(value="login.html", method=RequestMethod.GET)
	
	public String getLoginPage()
	{
		return "login";
	}
	
	@RequestMapping(value="login.html", method=RequestMethod.POST)
	public ModelAndView validateUser(@ModelAttribute Login login) 
	{
		ModelAndView modelAndView = new ModelAndView();
		
	if(loginService.authenticateUser(login)>=1)
	{
		
		modelAndView.setViewName("admin");
	}
	else
	{
		
		modelAndView.setViewName("login");
	}

	return modelAndView;
	}
	
}
