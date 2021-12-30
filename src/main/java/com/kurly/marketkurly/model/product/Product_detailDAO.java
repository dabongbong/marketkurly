package com.kurly.marketkurly.model.product;

import java.util.List;

import com.kurly.marketkurly.domain.Product_detail;

public interface Product_detailDAO {
	public List selectAll();
	public Product_detail select(int product_detail_id);
	public void insert(Product_detail product_detail);
	public void update(Product_detail product_detail);
	public void delete(int product_detail_id);
}
