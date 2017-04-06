package com.niit.controller;

import java.util.List;

import javax.servlet.http.HttpSession;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.Dao.cartdao;
import com.niit.Dao.productdao;
import com.niit.Dao.userdao;
import com.niit.model.cart;
import com.niit.model.product;
import com.niit.model.user;
@Controller
//@RequestMapping("/cart")
public class Cartcontroller {
@Autowired
cartdao cd;
@Autowired
userdao ud;
@Autowired
productdao pd;
@Autowired
HttpSession hs;
product pro;
user u;
cart Cart;

@RequestMapping(value = "/myCart/add/{proid}" ,method=RequestMethod.POST)
public ModelAndView getCart(@PathVariable("proid") int productid,@RequestParam("quantity") int qty) {
	if(hs.getAttribute("mv")==null && hs.getAttribute("sm")==null ){
		ModelAndView mv=new ModelAndView("forward:/sp/"+productid);
		product obj=pd.getid(productid);
		mv.addObject("p",obj);
		mv.addObject("b4cart", "Please signup or login before adding item to the cart... ");
		return mv;
		}

	else{
		String mail=hs.getAttribute("usermail").toString();
		System.out.println(mail);
		
		if(cd.sameproduct(mail, productid)==true){
			ModelAndView mv=new ModelAndView("forward:/sp/"+productid);
			mv.addObject("msg", "products are already in the cart , please continue shopping or checkout!!!");
			return mv;
		}
		else{
			pro = pd.getid(productid);
			System.out.println(pro.getProname());
			System.out.println(pro.getProprice());
			System.out.println(pro.getProid());
			System.out.println(mail);
		    cart c=new cart();
			c.setProname(pro.getProname()); 
			System.out.println(c.getProname());
			c.setProprice(pro.getProprice());  
			
			c.setProid(pro.getProid());
			
			c.setQuantity(qty); 
			c.setTotalprice((pro.getProprice())*(qty));
			 //c.setGrandtotal(pro.getProprice());
			
		
			c.setEmail(mail);
			cd.insert(c);
			System.out.println("data successfully added...");
			ModelAndView mv=new ModelAndView("forward:/cart");
			mv.addObject("mssg",  "product is added succesfully in the cart!!");
		
			return mv;
		}
		
		}
		
	}

@RequestMapping(value="/deletes/{n}")
public String deletes(@PathVariable("n") int n)
{
cd.delete(cd.getcartbyid(n));
return "redirect:/cart";
}
@RequestMapping("/cart")
public ModelAndView showCart( @ModelAttribute("cart") cart Cart, Model model){
	ModelAndView mv=new ModelAndView("cart");
	String mail=hs.getAttribute("usermail").toString();
	List<cart>obj=cd.getallcartbyuser(mail);
	mv.addObject("pro",obj);
	
	return mv;
}


}


