package com.yk.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Component
@Entity  
@Table(name="yk_news") 
public class News {

	@Id
    @GeneratedValue
    @Column(name="n_id")
    private int n_id;
	
	@Column(name="n_name",nullable=false)  
    private String n_name;
	
	@Column(name="n_desc",nullable=false)  
    private String n_desc;
	
	@Column(name="n_time",nullable=false)  
    private Date n_time = new Date();
	
	// 1为企业动态, 2为员工活动
	@Column(name="n_category",nullable=false)  
    private String n_category;

	public int getN_id() {
		return n_id;
	}

	public void setN_id(int n_id) {
		this.n_id = n_id;
	}

	public String getN_name() {
		return n_name;
	}

	public void setN_name(String n_name) {
		this.n_name = n_name;
	}

	public String getN_desc() {
		return n_desc;
	}

	public void setN_desc(String n_desc) {
		this.n_desc = n_desc;
	}

	public Date getN_time() {
		return n_time;
	}

	public void setN_time(Date n_time) {
		this.n_time = n_time;
	}

	public String getN_category() {
		return n_category;
	}

	public void setN_category(String n_category) {
		this.n_category = n_category;
	}

}
