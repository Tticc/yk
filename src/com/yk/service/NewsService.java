package com.yk.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yk.dao.NewsDAO;
import com.yk.entity.News;

@Service
public class NewsService {
	@Autowired
	private NewsDAO newsDAO;
	
	public void saveNews(News news){
		newsDAO.saveNews(news);
	}
	
	public List<News> getAllNews(){
		return newsDAO.getAllNews();
	}
}
