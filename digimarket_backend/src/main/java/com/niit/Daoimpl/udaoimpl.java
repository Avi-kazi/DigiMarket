package com.niit.Daoimpl;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.Dao.userdao;

import com.niit.model.user;

@Repository
@Transactional
public class udaoimpl implements userdao {
	@Autowired
	userdao ud;
	@Autowired
	private SessionFactory sessionFactory;

	public void insert(user u) {
		sessionFactory.getCurrentSession().save(u);

	}

	public user getbyemail(String e) {
		return (user) sessionFactory.getCurrentSession().get(user.class, e);
	}

	@SuppressWarnings("deprecation")
	public boolean isValid(String email, String pass) {
		String hql = "from user where email='" + email + "'and password='" + pass + "'";
		System.out.println(hql);
		if (sessionFactory.getCurrentSession().createQuery(hql).uniqueResult() == null) {
			return false;
		}
		return true;
	}

	

}
