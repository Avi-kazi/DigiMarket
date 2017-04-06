package com.niit.Daoimpl;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.Dao.shippingdao;
import com.niit.model.Shipping;

@Repository 
@Transactional
public class shippingdaoimpl implements shippingdao{
@Autowired
SessionFactory sessionFactory;

	public void insert(Shipping s) {
		sessionFactory.getCurrentSession().save(s);
		
	}

	public Shipping getById(int id) {
		
		return sessionFactory.getCurrentSession().get(Shipping.class,id);
	}

}
