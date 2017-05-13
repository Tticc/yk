package com.yk.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Component
@Entity  
@Table(name="yk_user")  
public class User {

	@Id
    @GeneratedValue
    @Column(name="u_id")
    private int u_id;
	
	@Column(name="u_name",nullable=false)  
    private String u_name;
	
	@Column(name="u_password",nullable=false)  
	private String u_password;
	
	@Column(name="u_sex",nullable=false)  
	private String u_sex;
	
	@Column(name="u_phone",nullable=false)  
	private String u_phone;
	
	@Column(name="u_QQ",nullable=false)  
	private String u_QQ;
	
	@Column(name="u_email",nullable=false)  
	private String u_email;
	
	@Column(name="u_addr",nullable=false)  
	private String u_addr;
	
	@Column(name="r_id",nullable=false)  
	private int r_id;

	public int getU_id() {
		return u_id;
	}

	public void setU_id(int u_id) {
		this.u_id = u_id;
	}

	public String getU_name() {
		return u_name;
	}

	public void setU_name(String u_name) {
		this.u_name = u_name;
	}

	public String getU_password() {
		return u_password;
	}

	public void setU_password(String u_password) {
		this.u_password = u_password;
	}

	public String getU_sex() {
		return u_sex;
	}

	public void setU_sex(String u_sex) {
		this.u_sex = u_sex;
	}

	public String getU_phone() {
		return u_phone;
	}

	public void setU_phone(String u_phone) {
		this.u_phone = u_phone;
	}

	public String getU_QQ() {
		return u_QQ;
	}

	public void setU_QQ(String u_QQ) {
		this.u_QQ = u_QQ;
	}

	public String getU_email() {
		return u_email;
	}

	public void setU_email(String u_email) {
		this.u_email = u_email;
	}

	public String getU_addr() {
		return u_addr;
	}

	public void setU_addr(String u_addr) {
		this.u_addr = u_addr;
	}

	public int getR_id() {
		return r_id;
	}

	public void setR_id(int r_id) {
		this.r_id = r_id;
	}
	
}
