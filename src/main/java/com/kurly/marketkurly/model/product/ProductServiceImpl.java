package com.kurly.marketkurly.model.product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kurly.marketkurly.domain.Product;
import com.kurly.marketkurly.domain.ProductDetail;
import com.kurly.marketkurly.exception.ProductException;

@Service
public class ProductServiceImpl implements ProductService{
	@Autowired
	private ProductDAO productDAO;
	
	private ProductDetailDAO productDetailDAO;

	@Override
	public List selectAll() {
		return productDAO.selectAll();
	}

	@Override
	public Product select(int product_id) {
		return productDAO.select(product_id);
	}

	@Override
	public void insert(Product product) throws ProductException{
		productDAO.insert(product);
		
		for(ProductDetail obj:product.getProduct_detail_list()) {
			obj.setProduct(product);
			obj.getProduct().setProduct_id(product.getProduct_id());
			productDetailDAO.insert(obj);
		}
		
	}

	@Override
	public void update(Product product) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(int product_id) {
		// TODO Auto-generated method stub
		
	}

}