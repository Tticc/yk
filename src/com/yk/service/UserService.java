package com.yk.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yk.dao.UserDAO;
import com.yk.entity.User;

@Service
public class UserService {

	@Autowired
	private UserDAO userDAO;
	
	public User getUserById(int u_id){
		return userDAO.getUserById(u_id);
	}
	
	public User getUserByName(String u_name){
		return userDAO.getUserByName(u_name);
	}
	
	public void saveUser(User user){
		userDAO.saveUser(user);
	}
	
	public void deleteUser(User user){
		userDAO.deleteUser(user);
	}
	
	public void updateUser(User user){
		userDAO.updateUser(user);
	}
}
