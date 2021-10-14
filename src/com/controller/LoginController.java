package com.controller;



import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;


import com.dao.AppDevUserMappper;
import com.pojo.DevUser;
import com.util.UserException;

@Controller

public class LoginController {

	@Resource
	AppDevUserMappper dao;

	@RequestMapping("/login1")
	public String getList(DevUser devUser,HttpSession session) throws UserException {
		int i = dao.list(devUser);
		if(i>0){
			session.setAttribute("login", devUser.getDevName());
			return "redirect:appinfo/list";
		}else{
			
			throw new UserException("用户名或账号错误");
			
		}
		/*return "redirect:login.jsp";*/
		
		
	}
	@ExceptionHandler(value=UserException.class)
	public String login(UserException ex,HttpServletRequest request){
		request.setAttribute("ex", ex.getMessage());
		
		
		return "error1";
		
		
		
	}

}
