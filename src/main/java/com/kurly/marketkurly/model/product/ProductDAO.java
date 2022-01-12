package com.kurly.marketkurly.model.product;

import java.util.List;

import com.kurly.marketkurly.domain.Product;

public interface ProductDAO {
	public List selectAll();
	public List selectByCategory(int subcategory_id);
	public Product select(int product_id);
	public void insert(Product product);
	public void update(Product product);
	public void delete(int product_id);
}
