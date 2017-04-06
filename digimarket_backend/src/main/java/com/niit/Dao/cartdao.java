package com.niit.Dao;

import java.util.List;

import com.niit.model.cart;

public interface cartdao {

	public void insert(cart c);
	public void delete(cart c);
	public cart getcartbyid(int id);
	public boolean sameproduct(String email,int proid);
	public List<cart> getallcartbyuser(String mail);
	public double gtotal(String mail);
	public void deleteallcartbymail(String mail);
}
