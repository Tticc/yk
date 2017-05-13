package com.yk.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.yk.entity.User;


@Repository
public class UserDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Transactional
	public User getUserById(int u_id){
		return (User)sessionFactory.getCurrentSession().get(User.class, u_id);
	}

	@Transactional
	public User getUserByName(String u_name) {
		String queryStr = "from User where u_name = ?";
		Query query = sessionFactory.getCurrentSession().createQuery(queryStr);
		query.setString(0, u_name);
		List<User> uList = query.list();
		if(uList.size() != 0){
			return uList.get(0);
		}
		return null;
	}

	@Transactional
	public void saveUser(User user) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().save(user);
	}

	@Transactional
	public void deleteUser(User user) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().delete(user);
	}

	@Transactional
	public void updateUser(User user) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().update(user);
	}
}
