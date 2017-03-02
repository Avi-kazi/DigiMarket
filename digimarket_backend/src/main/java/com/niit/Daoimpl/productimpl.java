package com.niit.Daoimpl;

import java.util.List;


import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.Dao.productdao;
import com.niit.model.product;
@Repository 
@Transactional
public class productimpl implements productdao {

	@Autowired
	private SessionFactory sessionFactory;

	public void insert(product p) {
		sessionFactory.getCurrentSession().save(p);
		
	}

	public List<product> getall() {
		return sessionFactory.getCurrentSession().createQuery("FROM product").list();
		
	}

	public product getid(int id) {
		return (product)sessionFactory.getCurrentSession().get(product.class,id);
	}

	public void updatepro(product p) {
		sessionFactory.getCurrentSession().update(p);
		
	}

	public void removepro(product p) {
		sessionFactory.getCurrentSession().delete(p);
		
	}

	public List<product> getbyprocat(String pc) {
		Query q= sessionFactory.getCurrentSession().createQuery("from product where procategory=?");
			q.setParameter(0, pc);
		return q.list();
	}
	

	

	
	
	

}
