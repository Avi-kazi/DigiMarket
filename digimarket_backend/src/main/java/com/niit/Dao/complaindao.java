package com.niit.Dao;

import java.util.List;


import com.niit.model.complain;

public interface complaindao {
public void insert(complain c);
public List<complain>getall();
public List<complain> getallcomplainbyuser(String mail);
public void delete(complain c);
public complain getcomplainbyid(int id);
}
