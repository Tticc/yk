package com.yk.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.yk.entity.News;

@Repository
public class NewsDAO {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	@Transactional
	public void saveNews(News news){
		sessionFactory.getCurrentSession().save(news);
	}
	
	@Transactional
	public void deleteNews(News news){
		sessionFactory.getCurrentSession().delete(news);
	}
	
	@Transactional
	public List<News> getAllNews(){
		String queryStr = "from News order by n_id DESC";
		Query query = sessionFactory.getCurrentSession().createQuery(queryStr);
		return query.list();
	}
	

}
