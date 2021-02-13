package com.todoreminder.config;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class HibernateUtil {
	static SessionFactory  ses;
	static
	{
		Configuration config= new Configuration();
		ses = config.configure().buildSessionFactory();
	}
	public static SessionFactory getSessionFactory()
	{
		return ses;
	}
}
