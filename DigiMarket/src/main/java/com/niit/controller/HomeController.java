package com.niit.controller;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.niit.Dao.productdao;
import com.niit.model.product;



@Controller
@RequestMapping
public class HomeController {
//	@RequestMapping(value="/{countryname}/{Name}")
// public ModelAndView Show(@PathVariable Map<String,String> var)
// {
//		String cname=var.get("countryname");
//		String Student=var.get("Name");
//		ModelAndView mv= new ModelAndView("index");
//		mv.addObject("data","Country"+" "+ cname +" "+"Student name"+" "+Student);
//		return mv;
//	 
 //}
	/*@RequestMapping(value="/{countryname}/{name}")
	 public ModelAndView Show(@PathVariable("countryname") String var,@PathVariable("name") String var1)
	 {
			ModelAndView mv= new ModelAndView("index");
			mv.addObject("data",var);
			mv.addObject("beta",var1);
			return mv;
		 
	 }*/
//	@RequestMapping(value="/",method=RequestMethod.GET)
//	public String Show()
//	{
//		return"abc";		
//	}
/*@RequestMapping(value="/NewFile",method=RequestMethod.POST)
	public ModelAndView demo(@RequestParam(value="Student",defaultValue="Mr/Miss")String data,@RequestParam("State") String data1)
	{
	ModelAndView mv= new ModelAndView("NewFile");
	mv.addObject("data","Student name"+data+"Lives in"+data1);
	
		return mv ;
		
		
	}*/
	

//@RequestMapping(value="/NewFile",method=RequestMethod.POST)
//public ModelAndView demo(@RequestParam Map<String,String> var)
//{
//	String data=var.get("student");
//	String data1=var.get("State");
//	ModelAndView mv= new ModelAndView("NewFile");
//	mv.addObject("data","Student name"+data+"Lives in"+data1);
//	return mv;
//}
	
//	
    @Autowired
    productdao pd;
    @RequestMapping(value="/Home")
    public ModelAndView product()
    {
    	ModelAndView mv = new ModelAndView("Home");
    	return mv;
    }
    
    
    @RequestMapping(value="/")
    public ModelAndView addproduct()
    {
    	ModelAndView mv = new ModelAndView("From");
    	return mv;
    }
    
	@RequestMapping(value="/def",method=RequestMethod.POST)
	public String insertpro(@ModelAttribute("p") product p,HttpServletRequest r)
	{
		pd.insert(p);
	MultipartFile file=p.getFile();
//	String ofile=file.getOriginalFilename();
	String fpath=r.getSession().getServletContext().getRealPath("/resources/img/product/");
	String fname=fpath+"//"+p.getProid()+".png";
	try
	{
		byte []imagearr = file.getBytes();
		BufferedOutputStream fos = new BufferedOutputStream(new FileOutputStream(fname));
		fos.write(imagearr);
		fos.close();
		}
	catch(IOException e)
	{
		e.printStackTrace();
	}
	
	
	return "redirect:/result";
					
	}
	
	@RequestMapping(value="/result")
	public ModelAndView showall()
	{
	ModelAndView mv = new ModelAndView("result");
	List<product>pro=pd.getall();
	mv.addObject("pro",pro );
	return mv;
	}
	@RequestMapping(value="/AllProducts")
	public ModelAndView viewall()
	{
	ModelAndView mv = new ModelAndView("result");
	List<product>pro=pd.getall();
	mv.addObject("pro",pro );
	return mv;
	}
	@RequestMapping(value="/result/{category}")
	public ModelAndView mobile(@PathVariable("category") String s)
	{
	ModelAndView mv = new ModelAndView("result");
	List<product>pro=pd.getbyprocat(s);
	mv.addObject("pro",pro );
	return mv;
	}
	
	@RequestMapping(value="/edit/{var}")
	public ModelAndView getbyid(@PathVariable("var")int id)
		{
	
		ModelAndView mv = new ModelAndView("Edit");
		      product p= pd.getid(id);
			mv.addObject("p", p);
				return mv;
		}
	@RequestMapping(value="/edit")
	public String update(@ModelAttribute("p") product p,HttpServletRequest r)
	{
		pd.updatepro(p);
		MultipartFile file=p.getFile();
//		String ofile=file.getOriginalFilename();
		String fpath=r.getSession().getServletContext().getRealPath("/resources/img/product/");
		String fname=fpath+"//"+p.getProid()+".png";
		try
		{
			byte []imagearr = file.getBytes();
			BufferedOutputStream fos = new BufferedOutputStream(new FileOutputStream(fname));
			fos.write(imagearr);
			fos.close();
			}
		catch(IOException e)
		{
			e.printStackTrace();
		}
		
		
		return "redirect:/result";
						
		}
		
		
	

	@RequestMapping(value="/delete/{p}")
	public String delet(@PathVariable("p") int n)
	{
		pd.removepro(pd.getid(n));
		return "redirect:/result";
		
	}
	
	
}