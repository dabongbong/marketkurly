package com.kurly.marketkurly.model.category;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kurly.marketkurly.domain.CategoryImg;
import com.kurly.marketkurly.exception.CategoryImgException;


@Repository
public class MybatisCategoryImgDAO implements CategoryImgDAO {


	@Autowired
	private SqlSessionTemplate sessionTemplate;

	public void insert(CategoryImg categoryImg) throws CategoryImgException{
		int result=sessionTemplate.insert("CategoryImg.insert", categoryImg);
		if(result==0) {
			throw new CategoryImgException("상품 사진 insert 실패");
		}
	}

}
