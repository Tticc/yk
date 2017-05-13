package com.yk.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.yk.entity.Message;
import com.yk.entity.User;
import com.yk.service.MessageService;
import com.yk.service.UserService;

@Controller
@RequestMapping(value="/sources/pages")
public class UserController {
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private MessageService messageService;
	
	@RequestMapping(value="/home",method = RequestMethod.GET)
	public String homeGet(){
		return "index";
	}
	
	@RequestMapping(value="/login",method = RequestMethod.POST)
	public String loginPost(HttpSession session, User user){
		/*user.setU_addr("");
		user.setU_email("");
		user.setR_id(1);
		user.setU_phone("");
		user.setU_QQ("");
		user.setU_sex("");
		userService.saveUser(user);*/
		User ur = userService.getUserByName(user.getU_name());
		if(ur == null || !user.getU_password().equals(ur.getU_password())){
			return "admin-login";
		}
		session.setAttribute("u_name", ur.getU_name());
		session.setAttribute("u_id", ur.getU_id());
		session.setAttribute("r_id", ur.getR_id());
		return "dashboard";
	}
	
	@RequestMapping(value="/login",method = RequestMethod.GET)
	public String loginGet(HttpSession session){
		//user.getU_name();
		//user.getU_password();
		return "admin-login";
	}
	
	@RequestMapping(value="/ulogin",method = RequestMethod.GET)
	public String ulogin(){
		return "login";
	}
	@RequestMapping(value="/ulogin",method = RequestMethod.POST)
	public String uloginPost(HttpSession session, User user){
		User ur = userService.getUserByName(user.getU_name());
		if(ur == null || !user.getU_password().equals(ur.getU_password())){
			return "login";
		}
		session.setAttribute("u_name", ur.getU_name());
		session.setAttribute("u_id", ur.getU_id());
		session.setAttribute("r_id", ur.getR_id());
		return "index";
	}
	
	@RequestMapping(value="/messagea",method = RequestMethod.GET)
	public String messageGet(HttpSession session, Model model){
		//user.getU_name();
		//user.getU_password();
		
		model.addAttribute("msgList", messageService.getMsgs());
		return "message";
	}
	
	@RequestMapping(value="/saveComment",method = RequestMethod.POST)
	public String comment(HttpSession session, Message message){
		//user.getU_name();
		//user.getU_password();
		message.setU_id((Integer)session.getAttribute("u_id"));
		message.setU_name(userService.getUserById(message.getU_id()).getU_name());
		java.util.Random random=new java.util.Random();// 定义随机类
		message.setImgPath("images/post"+(random.nextInt(9)%(9-1+1) + 1)+".gif");
		messageService.saveMessage(message);
		return "redirect:messagea";
	}
	@RequestMapping(value="/adminReg",method = RequestMethod.POST)
	public String adminReg(HttpSession session, User user){
		
		userService.saveUser(user);
		return "redirect:adminuser";
	}
	@RequestMapping(value="/reg",method = RequestMethod.POST)
	public String reg(HttpSession session, User user){
		
		userService.saveUser(user);
		return "login";
	}
	@RequestMapping(value="/adminuser",method = RequestMethod.GET)
	public String adminUser(HttpSession session,Model model){
		//;
		model.addAttribute("allUser", userService.getAllUser());
		return "admin-user";
	}
	
}
