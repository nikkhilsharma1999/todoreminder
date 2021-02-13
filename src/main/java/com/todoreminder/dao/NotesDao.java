package com.todoreminder.dao;

import java.util.Date;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import com.todoreminder.config.HibernateUtil;

import com.todoreminder.entity.Notes;


public class NotesDao {
	
	Session ses;
	public	NotesDao(){
			ses= HibernateUtil.getSessionFactory().openSession();
		}

	public void create(Notes note){
		
		ses.save(note);
		Transaction tx = ses.beginTransaction();
		tx.commit();
	}
	
	public List<Notes> getNotes(int id){
		
		Query<Notes> q = ses.createQuery("from Notes n where n.notebook.id =:u",Notes.class);
		q.setParameter("u", id);
		return q.getResultList();
	}
	

	public void close(){
		
		ses.close();
	}

	public Notes getNote(int id) {
		
		Query<Notes> q = ses.createQuery("from Notes n where n.id =:u", Notes.class);
		q.setParameter("u", id);
		return q.uniqueResult();
	}

	public void update(Notes note) {
		
		ses.update(note);
		Transaction tx = ses.beginTransaction();
		tx.commit();
	}
	
	
	
	public void delete(int noteId) {
		
		Notes note = ses.get(Notes.class, noteId);
		if(note != null)
			ses.delete(note);
			ses.beginTransaction().commit();		
	}
	
	

	public List<Notes> getDueNotes(Integer userId) {
		
		Calendar cal = Calendar.getInstance();
		cal.set(cal.get(Calendar.YEAR), cal.get(Calendar.MONTH), cal.get(Calendar.DAY_OF_MONTH), 0, 0, 0);
		Date start = cal.getTime();
		cal.set(cal.get(Calendar.YEAR), cal.get(Calendar.MONTH), cal.get(Calendar.DAY_OF_MONTH), 23, 59, 59);
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Query<Notes> q = ses.createNativeQuery("select * from notes where rDate between :start and :end and notebook_id in(select id from notebook where user_id = :userId)", Notes.class);
		q.setParameter("userId", userId);
		q.setParameter("start", format.format(start));
		q.setParameter("end", format.format(cal.getTime()));
		System.out.println(start +"  ----- "+cal.getTime());
		return q.getResultList();
	}
	
	
	
}
