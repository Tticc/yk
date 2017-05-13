package com.yk.dao;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.yk.entity.Role;

@Repository
public class RoleDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Transactional
	public void saveRole(Role role){
		sessionFactory.getCurrentSession().save(role);
	}
	
	@Transactional
	public void deleteRole(Role role){
		sessionFactory.getCurrentSession().delete(role);
	}
	
	@Transactional
	public void updateRole(Role role){
		sessionFactory.getCurrentSession().update(role);
	}
	
	@Transactional
	public Role getRoleById(int r_id){
		return (Role)sessionFactory.getCurrentSession().get(Role.class, r_id);
	}
}
