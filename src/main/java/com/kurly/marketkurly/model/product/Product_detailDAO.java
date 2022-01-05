package com.kurly.marketkurly.model.product;

import java.util.List;

import com.kurly.marketkurly.domain.ProductDetail;

public interface Product_detailDAO {
	public List selectAll();
	public ProductDetail select(int product_detail_id);
	public void insert(ProductDetail product_detail);
	public void update(ProductDetail product_detail);
	public void delete(int product_detail_id);
}
