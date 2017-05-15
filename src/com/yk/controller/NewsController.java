package com.yk.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.yk.entity.News;
import com.yk.service.NewsService;

@Controller
@RequestMapping(value="/sources/pages")
public class NewsController {

	@Autowired
	private NewsService newsService;
	
	@RequestMapping(value="/newsa",method = RequestMethod.GET)
	public String newsGet(HttpSession session, Model model){
		
		model.addAttribute("newsList", newsService.getAllNews());
		return "news";
	}
	
	@RequestMapping(value="/pnews",method = RequestMethod.POST)
	public String pnews(HttpSession session, News news){
		
		newsService.saveNews(news);
		return "redirect:newsa";
	}
	
	@RequestMapping(value="/pnews",method = RequestMethod.GET)
	public String pnewsGET(HttpSession session){
		
		//newsService.saveNews(news);
		return "redirect:newsa";
	}
	
	@RequestMapping(value="/adminnews",method = RequestMethod.GET)
	public String adminnewsGET(HttpSession session, Model model){
		
		//newsService.saveNews(news);
		return "redirect:newsa";
	}
}
