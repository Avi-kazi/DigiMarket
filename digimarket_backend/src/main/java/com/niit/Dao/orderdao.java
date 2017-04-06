package com.niit.Dao;

import java.util.List;

import com.niit.model.OrderDetails;

public interface orderdao {
	public void insert(OrderDetails o);
	public OrderDetails getbymail(String mail);
	public OrderDetails getbymail(int oid);
	public List<OrderDetails> getall();

}
