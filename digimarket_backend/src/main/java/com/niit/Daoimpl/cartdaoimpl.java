package com.niit.Daoimpl;

import java.util.List;



import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.Dao.cartdao;
import com.niit.model.cart;

@Repository 
@Transactional
public class cartdaoimpl implements cartdao  {
	@Autowired
	private SessionFactory sessionFactory;

	public void insert(cart c) {
		
		sessionFactory.getCurrentSession().save(c);
		
	}



	public void delete(cart c) {
		sessionFactory.getCurrentSession().delete(c);
		
	}

	public cart getcartbyid(int id) {
		return (cart)sessionFactory.getCurrentSession().get(cart.class,id);
	}

	public boolean sameproduct(String email, int proid) {
		List<cart> obj=sessionFactory.getCurrentSession().createQuery("from cart where email='" + email + "'and proid='" + proid + "'").list();
		int x=0;
		for(cart c:obj)
		{
			if(c.getProid()==proid){
				x++;
			}
		}
		if(x==0){
			return false;
			
		}
		else{
		return true;
		}
	}

	public List<cart> getallcartbyuser(String mail) {
		return sessionFactory.getCurrentSession().createQuery("from cart where email='"+mail+"'").list();
		 
	}

	public double gtotal(String mail) {
		String hql="select sum(totalprice)from cart where email='"+mail+"'";
		Query query =sessionFactory.getCurrentSession().createQuery(hql);
		double sum= (Double) query.uniqueResult();
		return sum;
		
		
	}



	public void deleteallcartbymail(String mail) {
		List<cart>o=getallcartbyuser(mail);
		for(cart o2:o)
		{
			sessionFactory.getCurrentSession().delete(o2);
		}
		
	}
	

}
