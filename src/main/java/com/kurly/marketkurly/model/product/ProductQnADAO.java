package com.kurly.marketkurly.model.product;

import java.util.List;

import com.kurly.marketkurly.domain.ProductQnA;

public interface ProductQnADAO {
	public List selectAll();
	public List selectByProduct(int product_id);
	public void insert(ProductQnA productQnA);
	public void delete(int productqna_no);
}
