package com.yk.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
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
		return "redirect:products";
	}
	
	@RequestMapping(value="/pproduct",method = RequestMethod.GET)
	public String pnewsGet(HttpSession session){
		return "redirect:products";
	}
	
	@RequestMapping(value="/products",method = RequestMethod.GET)
	public String productGet(HttpSession session, Model model){
		//;
		model.addAttribute("products",productService.getAllProducts());
		return "product-details";
	}
	
	@RequestMapping(value="/allproducts",method = RequestMethod.GET)
	public String allproductGet(HttpSession session, Model model){
		//;
		List<Product> products = productService.getAllProducts();
		for(Product p : products){
			String cate = p.getS_category();
			if("1".equals(cate)){
				p.setS_category("办公软件");
			}else if("2".equals(cate)){
				p.setS_category("图像制作软件");				
			}else if("3".equals(cate)){
				p.setS_category("工程软件");	
			}else if("4".equals(cate)){
				p.setS_category("其他");	
			}
		}
		model.addAttribute("products",products);
		return "admin-products";
	}
	@RequestMapping(value="/deleteP/{s_id}",method = RequestMethod.GET)
	public String deleteP(@PathVariable int s_id){
		for(Product p : productService.getAllProducts()){
			if(p.getS_id() == s_id){
				productService.deleteProduct(p);
			}
		}
		return "redirect:../allproducts";
	}
}
