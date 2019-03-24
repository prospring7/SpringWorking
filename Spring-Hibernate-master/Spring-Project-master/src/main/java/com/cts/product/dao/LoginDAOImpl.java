package com.cts.product.dao;

import javax.transaction.Transactional;
import javax.transaction.Transactional.TxType;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.hibernate.resource.transaction.spi.TransactionStatus;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.event.TransactionPhase;

import com.cts.product.bean.Login;

@Repository
@Transactional
public class LoginDAOImpl implements LoginDAO {
	
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	
	public int authenticateUser(Login login) {
		// TODO Auto-generated method stub
		try{
		String userName = login.getUserName();
		String password = login.getPassword();
		Session session = sessionFactory.getCurrentSession();
		String query = "from Login where userName = ? and password = ?";
		Query<Login> query2 = null;
		
		query2=session.createQuery(query);
		
		query2.setParameter(0,userName);  
		query2.setParameter(1,password);  
		Login user= query2.getSingleResult();
		
		if(user!=null)
		{
			
		return 1;
		}
		else
		{
			
			return 0;
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return 0;
	}
	


}
