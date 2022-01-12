package com.kurly.marketkurly.model.product;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kurly.marketkurly.domain.ProductHashtag;
import com.kurly.marketkurly.exception.ProductException;
@Repository
public class MybatisProductHashtagDAO implements ProductHashtagDAO{

	@Autowired
	private SqlSessionTemplate sessionTemplate;
	
	@Override
	public void insert(ProductHashtag productHashtag) throws ProductException{
		int result = sessionTemplate.insert("ProductHashtag.insert", productHashtag);
		if(result==0) {
			throw new ProductException("상품디테일 등록 실패");
		}
	}

	@Override
	public void deleteByProductId(int product_id) {
		int result = sessionTemplate.delete("ProductHashtag.deleteByProductId", product_id);
		if(result==0) {
			throw new ProductException("상품디테일 등록 삭제");
		}
	}
	
}
