package com.niit.controller;


import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.Dao.userdao;
import com.niit.model.user;
@Controller

public class Usercontroller {
	@Autowired
	userdao ud;
	@Autowired
	HttpSession hs;
	
	
		
	@RequestMapping(value="/regs",method=RequestMethod.POST)
	public ModelAndView  insertuser( @Valid @ModelAttribute("u") user u,Model m, BindingResult br)
	{
		if(br.hasErrors())
		{
			ModelAndView mv= new ModelAndView("signup");
			return mv;
		}
		else{
          ModelAndView mv= new ModelAndView("Home");
             hs.setAttribute("msg","Welcome to DigiMarket");
        	 ud.insert(u);
     		hs.setAttribute("content", u.getName());
        	 hs.setAttribute("umsg", "Welcome to DigiMarket");
        	 hs.setAttribute("usermail", u.getEmail());
        	 hs.setAttribute("mv","insert details");
        	 return mv;
		
	}
	}
	
	
	@RequestMapping(value="/validate",method=RequestMethod.POST)
	public String validCredential(@ModelAttribute("u") user u,Model m)
	{
	
        	 if(ud.isValid(u.getEmail(), u.getPassword())==true)
     		{
        		 
     			 u=ud.getbyemail(u.getEmail());
     			
     			if(u.getRole().equals("admin"))
     					{
     				      hs.setAttribute("amsg","Welcome Admin!!!");
     				      hs.setAttribute("content",u.getName());
     				      return "admin";
     					}
     			else{
     				 u=ud.getbyemail(u.getEmail());
     				hs.setAttribute("umsg", "Welcome to DigiMarket");
     				hs.setAttribute("sm", "Login or Signup ");
     				hs.setAttribute("usermail", u.getEmail());
     				hs.setAttribute("content", u.getName());
     				return "Home";
     				
     			}
     			
     		}
     		else
     		{
     		
     		m.addAttribute("emsg", "Invalid Email or password");
     		return "login";
     		}
     	}
	@RequestMapping("/logout")
	public String logout()
	{
		hs.invalidate();
		return "Home";
		
	}
	
         }
	
	
	



