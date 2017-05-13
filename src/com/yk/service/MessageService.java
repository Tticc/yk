package com.yk.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yk.dao.MessageDAO;
import com.yk.entity.Message;

@Service
public class MessageService {

	@Autowired
	private MessageDAO messageDAO;
	
	public void saveMessage(Message message){
		messageDAO.saveMessage(message);
	}
	
	public List<Message> getMsgs(){
		return messageDAO.getMsgs();
	}
}
