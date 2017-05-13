package com.yk.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Component
@Entity  
@Table(name="yk_product") 
public class Product {

	@Id
    @GeneratedValue
    @Column(name="s_id")
    private int s_id;
	
	@Column(name="s_name",nullable=false)  
    private String s_name;
	
	@Column(name="s_version",nullable=false)  
    private String s_version;
	
	@Column(name="s_platform",nullable=false)  
    private String s_platform = "null";
	
	@Column(name="s_value",nullable=false)  
    private String s_value = "null";
	
	//1办公软件, 2 图像制作软件, 3工程软件, 4其他
	@Column(name="s_category",nullable=false)  
    private String s_category;
	
	@Column(name="s_desc",nullable=false)  
    private String s_desc;

	public int getS_id() {
		return s_id;
	}

	public void setS_id(int s_id) {
		this.s_id = s_id;
	}

	public String getS_name() {
		return s_name;
	}

	public void setS_name(String s_name) {
		this.s_name = s_name;
	}

	public String getS_version() {
		return s_version;
	}

	public void setS_version(String s_version) {
		this.s_version = s_version;
	}

	public String getS_platform() {
		return s_platform;
	}

	public void setS_platform(String s_platform) {
		this.s_platform = s_platform;
	}

	public String getS_value() {
		return s_value;
	}

	public void setS_value(String s_value) {
		this.s_value = s_value;
	}

	public String getS_category() {
		return s_category;
	}

	public void setS_category(String s_category) {
		this.s_category = s_category;
	}

	public String getS_desc() {
		return s_desc;
	}

	public void setS_desc(String s_desc) {
		this.s_desc = s_desc;
	}

}
