package com.yk.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yk.dao.RoleDAO;
import com.yk.entity.Role;

@Service
public class RoleService {

	@Autowired
	private RoleDAO roleDAO;
	
	public void saveRole(Role role){
		roleDAO.saveRole(role);
	}
	
	public void updateRole(Role role){
		roleDAO.updateRole(role);
	}
	
	public void deleteRole(Role role){
		roleDAO.deleteRole(role);
	}
	
	public Role getRoleById(int r_id){
		return roleDAO.getRoleById(r_id);
	}
}
