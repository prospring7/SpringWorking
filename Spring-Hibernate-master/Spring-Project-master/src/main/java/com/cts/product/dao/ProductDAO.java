package com.cts.product.dao;

import java.util.List;

import com.cts.product.bean.Product;


public interface ProductDAO {
	public String addProduct(Product product);
	public List<Product> getAllProducts();
	public Product findProduct(String id);
	public String deleteProduct(String productId);
	public List<Product> filterProducts(String query);
	public String updateProduct(Product product);
}
