package com.kurly.marketkurly.model.product;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kurly.marketkurly.domain.Product;
import com.kurly.marketkurly.exception.ProductException;

@Repository
public class MybatisProductDAO implements ProductDAO{
	
	@Autowired
	private SqlSessionTemplate sessionTemplate;

	@Override
	public List selectAll() {
		return sessionTemplate.selectList("Product.selectAll");
	}

	@Override
	public Product select(int product_id) {
		return sessionTemplate.selectOne("Product.select", product_id);
	}

	@Override
	public void insert(Product product) throws ProductException{
		int result = sessionTemplate.insert("Product.insert", product);
		if(result==0) {
			throw new ProductException("상품등록 실패");
		}
		
	}

	@Override
	public void update(Product product) throws ProductException{
		int result = sessionTemplate.update("Product.update", product);
		if(result==0) {
			throw new ProductException("상품수정 실패");
		}
	}

	@Override
	public void delete(int product_id) throws ProductException{
		int result = sessionTemplate.delete("Product.delete", product_id);
		if(result==0) {
			throw new ProductException("상품삭제 실패");
		}
	}

}
