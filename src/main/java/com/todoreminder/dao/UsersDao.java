package com.todoreminder.dao;


import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import com.todoreminder.config.HibernateUtil;
import com.todoreminder.entity.Users;

public class UsersDao {
	
	public void create(Users user){
		
		Session ses = HibernateUtil.getSessionFactory().openSession();
		ses.save(user);
		Transaction tx = ses.beginTransaction();
		tx.commit();
		ses.close();
	}
	
	public void update(Users user) {
		Session ses = HibernateUtil.getSessionFactory().openSession();
		ses.update(user);
		Transaction tx = ses.beginTransaction();
		tx.commit();
		ses.close();
	}
	
	public Users getUser(String username, String password){
		
		Session ses = HibernateUtil.getSessionFactory().openSession();
		CriteriaBuilder  c = ses.getCriteriaBuilder();
		CriteriaQuery<Users> cq = c.createQuery(Users.class);
		Root<Users> r = cq.from(Users.class);
		cq.select(r).where(c.and(c.equal(r.get("username"), username), c.equal(r.get("password"), password)));
		Users user = ses.createQuery(cq).getSingleResult();
		ses.close();
		return user;
	}
	
	public Users getUser1(String email, String password){
		
		Session ses = HibernateUtil.getSessionFactory().openSession();
		Query<Users> q = ses.createQuery("from Users where email = :email and password = :password", Users.class);
		q.setParameter("email", email);
		q.setParameter("password", password);
		Users user = q.uniqueResult();
		ses.close();
		return user;
	}
}
