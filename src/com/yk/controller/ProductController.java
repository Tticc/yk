package com.yk.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.yk.entity.Product;
import com.yk.service.ProductService;

@Controller
@RequestMapping(value="/sources/pages")
public class ProductController {

	@Autowired
	private ProductService productService;
	
	@RequestMapping(value="/pproduct",method = RequestMethod.POST)
	public String pnews(HttpSession session, Product product){
		
		productService.saveProduct(product);
		return "product-details";
	}
	
	@RequestMapping(value="/products",method = RequestMethod.GET)
	public String productGet(HttpSession session, Model model){
		//;
		model.addAttribute("products",productService.getAllProducts());
		return "product-details";
	}
}
