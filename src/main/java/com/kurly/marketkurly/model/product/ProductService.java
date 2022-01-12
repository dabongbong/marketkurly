package com.kurly.marketkurly.model.product;

import java.util.List;

import com.kurly.marketkurly.domain.Product;

public interface ProductService {
	public List selectAll();
	public List selectByCategory(int category_id);
	public Product select(int product_id);
	public void insert(Product product);
	public void update(Product product);
	public void delete(int product_id);
	
}
