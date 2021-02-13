package com.todoreminder.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import com.todoreminder.config.HibernateUtil;
import com.todoreminder.entity.Notebook;

public class NotebookDao {

	Session ses;
	public	NotebookDao(){
			ses= HibernateUtil.getSessionFactory().openSession();
		}

	public void create(Notebook notebook){
		
		ses.save(notebook);
		Transaction tx = ses.beginTransaction();
		tx.commit();
	}
	
	public List<Notebook> getNoteBooks (int id){
		
		Query<Notebook> q= ses.createQuery("from Notebook n where n.user.id=:u",Notebook.class);
		q.setParameter("u", id);
		return q.getResultList();
	}
	

	public void close(){
		
		ses.close();
	}

	public void delete(int notebookId) {
		
		Notebook notebook = ses.get(Notebook.class, notebookId);
		if(notebook != null)
			ses.delete(notebook);
			ses.beginTransaction().commit();
	}

}
