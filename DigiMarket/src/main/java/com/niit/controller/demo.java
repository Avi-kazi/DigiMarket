//package com.niit.controller;
//
//import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestMethod;
//import org.springframework.web.bind.annotation.RequestParam;
//import org.springframework.web.servlet.ModelAndView;
//public class demo {
//
//	@RequestMapping(value="/",method=RequestMethod.GET)
//    public ModelAndView Show()
//    {
//		ModelAndView mv = new ModelAndView("index");
//     	return mv;		
//     }
//	
//	@RequestMapping(value="/login")
//	public ModelAndView Show1()
//	{
//		ModelAndView mv= new ModelAndView("login");
//		return mv;		
//	}
//	
//
//	@RequestMapping(value="/def",method=RequestMethod.POST)
//	public ModelAndView show(@RequestParam("name")String var, @RequestParam("password")String var1)
//	{
//		ModelAndView mv = new ModelAndView("result1");
//		if(var.equals("Avi")&& var1.equals("12345"))
//		{
//			mv.addObject("msg", "You have successfully loged in");
//		    mv.addObject("data", var);
//		}
//		else
//		{
//			mv.addObject("msg", "Login failed");
//			
//			
//		}
//		return mv;
//		
//	}
//}
