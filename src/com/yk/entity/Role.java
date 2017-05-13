package com.yk.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Component
@Entity  
@Table(name="yk_role")  
public class Role {

	@Id
    @GeneratedValue
    @Column(name="r_id")
    private int r_id;
	
	@Column(name="r_name",nullable=false)  
    private String r_name;
	
	@Column(name="r_desc",nullable=false)  
    private String r_desc;
	
	@Column(name="r_level",nullable=false)  
	private int r_level;

	public int getR_id() {
		return r_id;
	}

	public void setR_id(int r_id) {
		this.r_id = r_id;
	}

	public String getR_name() {
		return r_name;
	}

	public void setR_name(String r_name) {
		this.r_name = r_name;
	}

	public String getR_desc() {
		return r_desc;
	}

	public void setR_desc(String r_desc) {
		this.r_desc = r_desc;
	}

	public int getR_level() {
		return r_level;
	}

	public void setR_level(int r_level) {
		this.r_level = r_level;
	}
}
