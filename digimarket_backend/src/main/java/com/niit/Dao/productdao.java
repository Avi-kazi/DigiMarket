package com.niit.Dao;

import java.util.List;
import com.niit.model.product;

public interface productdao {
public void insert(product p); 	
public List<product> getall();
public product getid(int id);
public void updatepro(product p);
public void removepro(product p);
public List<product>getbyprocat(String pc);

}
