package com.niit.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.Dao.complaindao;
import com.niit.model.complain;
@Controller
public class Comlaincontroller {
	@Autowired
	HttpSession session;
	@Autowired
	complaindao cod;

	 @RequestMapping(value="complain",method=RequestMethod.POST)
		public ModelAndView comp(@ModelAttribute("co") complain co)
		{
			if(session.getAttribute("mv")==null && session.getAttribute("sm")==null )
			{
				ModelAndView mv=new ModelAndView("contactus");
				mv.addObject("bflg", "Please signup or login before complain....");
				return mv;
			}

			else{
				String mail=session.getAttribute("usermail").toString();
				System.out.println(mail);
				co.setEmail(mail);
				cod.insert(co);
				ModelAndView mv=new ModelAndView("forward:/prod");
				mv.addObject("aflg",  "your complain success Fully lodge ....");
				return mv;
			}
		}
		 @RequestMapping(value="prod")
			public ModelAndView showProdd(){
				ModelAndView mv=new ModelAndView("contactus");
				String mail=session.getAttribute("usermail").toString();
				
				List<complain>obj=cod.getallcomplainbyuser(mail);
				mv.addObject("a",obj);
				return mv;
			}
		 @RequestMapping(value="contactuss")
			public ModelAndView showPros(){
				ModelAndView mv=new ModelAndView("complainrec");
				List<complain>obj=cod.getall();
				mv.addObject("a",obj);
				return mv;
			}
		 @RequestMapping(value="/deletecom/{x}")
		 public String delete(@PathVariable("x") int x)
		 {
		 cod.delete(cod.getcomplainbyid(x));
		 return "redirect:/contactuss";
	}
}


