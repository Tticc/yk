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
@Table(name="yk_message") 
public class Message {

	@Id
    @GeneratedValue
    @Column(name="m_id")
    private int m_id;
	
	@Column(name="m_content",nullable=false)  
    private String m_content;
	
	@Column(name="m_time",nullable=false)  
    private Date m_time = new Date();
	
	@Column(name="u_id",nullable=false)  
	private int u_id;
	
	@Column(name="u_name",nullable=true)  
    private String u_name;

	@Column(name="imgPath",nullable=true)  
	private String imgPath = "";

	public int getM_id() {
		return m_id;
	}

	public void setM_id(int m_id) {
		this.m_id = m_id;
	}

	public String getM_content() {
		return m_content;
	}

	public void setM_content(String m_content) {
		this.m_content = m_content;
	}

	public Date getM_time() {
		return m_time;
	}

	public void setM_time(Date m_time) {
		this.m_time = m_time;
	}

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

	public String getImgPath() {
		return imgPath;
	}

	public void setImgPath(String imgPath) {
		this.imgPath = imgPath;
	}

}
