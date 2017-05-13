package com.yk.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yk.dao.ProductDAO;
import com.yk.entity.Product;

@Service
public class ProductService {

	@Autowired
	private ProductDAO productDAO;
	
	public void saveProduct(Product product){
		productDAO.saveProduct(product);
	}
	
	public void deleteProduct(Product product){
		productDAO.deleteProduct(product);
	}
	
	public List<Product> getAllProducts(){
		return productDAO.getAllProducts();
	}
	
	public  List<Product> getProductsByCategory(String category){
		return productDAO.getProductsByCategory(category);
	}
}
