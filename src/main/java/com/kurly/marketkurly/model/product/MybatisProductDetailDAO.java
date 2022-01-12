package com.kurly.marketkurly.model.product;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kurly.marketkurly.domain.ProductDetail;
import com.kurly.marketkurly.exception.ProductException;
@Repository
public class MybatisProductDetailDAO implements ProductDetailDAO{

	@Autowired
	private SqlSessionTemplate sessionTemplate;
	@Override
	public List selectAll() {
		return null;
	}

	@Override
	public ProductDetail select(int product_detail_id) {
		return null;
	}

	@Override
	public void insert(ProductDetail productDetail) throws ProductException{
		int result = sessionTemplate.insert("ProductDetail.insert", productDetail);
		if(result==0) {
			throw new ProductException("productDetail 입력실패");
		}
	}

	@Override
	public void update(ProductDetail product_detail) {
		
	}

	@Override
	public void delete(int product_id) throws ProductException{
		int result = sessionTemplate.delete("ProductDetail.deleteByProductId", product_id);
		if(result==0) {
			throw new ProductException("productDetail 삭제실패");
		}
	}

}
