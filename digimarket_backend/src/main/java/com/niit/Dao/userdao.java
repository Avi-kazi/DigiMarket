package com.niit.Dao;

import com.niit.model.user;

public interface userdao {

	public user getbyemail(String e);
	public void insert(user u);
	public boolean isValid(String email, String pass);
	
}
