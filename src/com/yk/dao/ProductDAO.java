package com.yk.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.yk.entity.News;
import com.yk.entity.Product;

@Repository
public class ProductDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Transactional
	public void saveProduct(Product product){
		sessionFactory.getCurrentSession().save(product);
	}
	
	@Transactional
	public void deleteProduct(Product product){
		sessionFactory.getCurrentSession().delete(product);
	}
	
	@Transactional
	public List<Product> getAllProducts(){
		String queryStr = "from Product order by s_id DESC";
		Query query = sessionFactory.getCurrentSession().createQuery(queryStr);
		return query.list();
	}
	
	@Transactional
	public List<Product> getProductsByCategory(String category){
		String queryStr = "from Product where s_category = ? order by s_id DESC";
		Query query = sessionFactory.getCurrentSession().createQuery(queryStr);
		query.setString(0, category);
		return query.list();
	}
}
