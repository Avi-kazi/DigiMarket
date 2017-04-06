package com.niit.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.Dao.cartdao;
import com.niit.Dao.productdao;
//import com.niit.model.cart;
import com.niit.model.product;
@Controller
public class NavController {
	@Autowired
    productdao pd;
	@Autowired
	cartdao cd;
    @RequestMapping(value="/")
    public ModelAndView product()
    {
    	ModelAndView mv = new ModelAndView("Home");
    	return mv;
    }
    @RequestMapping(value="/h")
    public ModelAndView products()
    {
    	ModelAndView mv = new ModelAndView("Home");
    	return mv;
    }
    @RequestMapping(value="/signup")
    public String adduser()
    {
    	
    	return "signup";
    }
 
 @RequestMapping(value="/login1")
    public String login()
    {
    	
    	return "login";
    }
   
   
    @RequestMapping(value="/sp/{var}")
    public ModelAndView singleProductPage(@PathVariable("var") int var)
    {
    	ModelAndView mv = new ModelAndView("singleproductpage2");
    	product p= pd.getid(var);
    	mv.addObject("p", p);
    	mv.addObject("data","for quantity");
    	
    	return mv;
    }
    @RequestMapping(value="/contactus")
    public String contactus()
    {
    	
    	return "contactus";
    }
     @RequestMapping(value="/about")
    public String aboutus()
    {
    	
    	return "aboutus";
    }

//     @RequestMapping(value="/loginError",method = RequestMethod.GET)
//     public String loginError(Model model) {
//     	
//     	model.addAttribute("errorMssage","Login Error");
//     
//     	return "error";
//     	
//     }
//     @RequestMapping(value="/login",method = RequestMethod.GET)
//     public String login(Model model){
//     	model.addAttribute("errorMssage","Login Error");
//     	return "Home";
//     }
//     @RequestMapping(value="/accessDenied",method = RequestMethod.GET)
//     public String accessDenied(Model model)
//     {
//     model.addAttribute("errorMessage", "you are not authorised to access this page");
//    
//     return "error";
//     }
  
}
