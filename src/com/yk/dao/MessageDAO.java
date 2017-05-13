package com.yk.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.yk.entity.Message;

@Repository
public class MessageDAO {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	@Transactional
	public void saveMessage(Message msg){
		sessionFactory.getCurrentSession().save(msg);
	}
	
	@Transactional
	public void deleteMessage(Message msg){
		sessionFactory.getCurrentSession().delete(msg);
	}
	
	@Transactional
	public void updateMessage(Message msg){
		sessionFactory.getCurrentSession().update(msg);
	}
	
	@Transactional
	public List<Message> getMsgs(){
		String queryStr = "from Message order by m_id DESC";
		Query query = sessionFactory.getCurrentSession().createQuery(queryStr);
		return query.list();
	}
	

}
