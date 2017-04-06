package com.niit.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.Dao.cartdao;
import com.niit.Dao.orderdao;
import com.niit.Dao.productdao;
import com.niit.Dao.shippingdao;
import com.niit.Dao.userdao;
import com.niit.model.OrderDetails;
import com.niit.model.Shipping;
import com.niit.model.cart;
import com.niit.model.product;
import com.niit.model.user;

@Controller
public class Buynowcontroller {
	@Autowired
	cartdao cd;
	@Autowired
	shippingdao sd;
	@Autowired
	userdao ud;
	@Autowired
	productdao pd;
	@Autowired
	HttpSession hs;
	@Autowired
	orderdao od;
	Shipping ship;
	int shippingid ;
	int productID;
	product pp;
	int Quantity;
	int orderID;
	String mail;
	cart a;
    OrderDetails or;
    List<cart>object;
    @RequestMapping("/view2/{productid}")
	public ModelAndView buynow(@ModelAttribute("p") product p,@PathVariable("productid") int productid) {
		if(hs.getAttribute("mv")==null && hs.getAttribute("sm")==null){
			ModelAndView mv=new ModelAndView("forward:/sp/"+productid);
			product obj=pd.getid(productid);
			
			
			
			
			mv.addObject("p",obj);
			mv.addObject("b4cart", "Please signup or login before buying product... ");
			   productID=productid;
		       pp=obj;
		     
		     
			return mv;
			}
		else
		{
		//	 ModelAndView mv=new ModelAndView("redirect:/abc");
      ModelAndView mv=new ModelAndView("redirect:/billingpage");
       product  obj=pd.getid(productid);

		 mail=hs.getAttribute("usermail").toString();
       int pid=obj.getProid();
		String pname=obj.getProname();
		String cat=obj.getProcategory();
		double pprice=obj.getProprice();
		double totprice=pprice;
		or=new OrderDetails();
		or.setEmailId(mail);
		or.setProductid(pid);
		or.setProductname(pname);
		or.setCategory(cat);
		or.setProductprice(pprice);
	// or.setQuantity(qty);
		or.setTotalprice(totprice);
		od.insert(or);
      
		orderID=or.getOrderid();
       pp=obj;
       System.out.println("orderID......from redirect...billing ="+orderID);
      // Quantity=add.getQuantitybyProductId(productid);
   
      // System.out.println("Quantity ="+Quantity);
       
    
    
		return mv;

		}
	}
//    @RequestMapping("/abc")
//    public ModelAndView forQuantity(){
//    	ModelAndView mv=new ModelAndView("redirect:/billingpage");
//    	return mv;
//    }
//	
	
	

	@RequestMapping("/billingpage")
	public ModelAndView buy(){

			 mail=hs.getAttribute("usermail").toString();
			System.out.println(mail);
		ModelAndView mv=new ModelAndView("billing");
	user u=	ud.getbyemail(mail);
	System.out.println(u.getEmail());
	System.out.println(u.getAddress());
	System.out.println(u.getCity());
	System.out.println(u.getState());
	mv.addObject("u",u);
		return mv;
	
	}
	@RequestMapping("/shippingpage")
	public ModelAndView shipping(){
		ModelAndView mv=new ModelAndView("Shippingpage");
		return mv;
	}
	
@RequestMapping("/orderconfirm")
public ModelAndView order(@ModelAttribute("s")Shipping s){
	 mail=hs.getAttribute("usermail").toString();
	ship=new Shipping();
	ship.setEmail(mail);
	sd.insert(s);
	shippingid=s.getShippingid();
    System.out.println("shippingid......from orderconfirm ="+shippingid);
	ModelAndView mv=new ModelAndView("redirect:/orderconfirm2");
	return mv;
}
@RequestMapping("/orderconfirm2")
public ModelAndView order(){
	ModelAndView mv=new ModelAndView("order");
	String mail=hs.getAttribute("usermail").toString();
	System.out.println("1.Checking from orederconfirm2 ...."+orderID);
	if(orderID==0){
		System.out.println("2.Checking from orederconfirm2 ...."+productID);
	object=cd.getallcartbyuser(mail);

	mv.addObject("allcart",object);
	double d=cd.gtotal(mail);
	System.out.println("grandTot= "+d);
	mv.addObject("grandtot",d);
	//Quantity=add.getQuantitybyProductId(productid);
//	mv.addObject("q", Quantity);
//	System.out.println("Quantity= "+Quantity);
	}
	else{
		mv.addObject("p","msg is written to make p not empty");
		mv.addObject("o",od.getbymail(orderID));
		or.getQuantity();
		orderID=0;
		System.out.println("Avi......"+or.getQuantity());
	
		
	}
	user u=ud.getbyemail(mail);
	mv.addObject("u",u);
	Shipping uu=sd.getById(shippingid);
	mv.addObject("uu",uu);
	return mv;
} 

@RequestMapping("/thanku")
public ModelAndView thankyou(){
	ModelAndView mv=new ModelAndView("ThankYou");
	
	if(!(object==null))
	{
		System.out.print("for deleting cart....."+mail);
		cd.deleteallcartbymail(mail);
		
	}
	return mv;
}
}
