package com.greetgo.beans;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;

import com.greetgo.entities.Test;

public class TestService {
	
	private SessionFactory sessionFactory;
	
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public List<Test> getAllTests(){

		List<Test> allTests=null;
		try{
			
			Session session = getSessionFactory().openSession();
			Criteria criteria = session.createCriteria(Test.class);		
			allTests = (List<Test>) criteria.list();
			
		}catch(Exception e){
			
		}
		
		return allTests;
	}
	
}

