package com.kurly.marketkurly.model.subcategory;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kurly.marketkurly.domain.Subcategory;
import com.kurly.marketkurly.exception.SubcategoryException;

@Repository
public class MybatisSubcategoryDAO implements SubcategoryDAO{

	@Autowired
	private SqlSessionTemplate sessionTemplate;
	
	@Override
	public List selectAll() {
		List list = sessionTemplate.selectList("Subcategory.selectAll");
		System.out.println("list all "+list);
		return list;
	}

	@Override
	public List selectAllByCategory(int category_id) {
		return sessionTemplate.selectList("Subcategory.selectAllByCategory", category_id);
	}
	
	@Override
	public Subcategory select(int subcategory_id) {
		return sessionTemplate.selectOne("Subcategory.select", subcategory_id );
	}

	@Override
	public void insert(Subcategory subcategory) throws SubcategoryException{
		int result = sessionTemplate.insert("Subcategory.insert", subcategory);
		if(result ==0 ) {
			throw new SubcategoryException("서브카테고리 등록 실패");
		}
		
	}

	@Override
	public void update(Subcategory subcategory) throws SubcategoryException{
		int result = sessionTemplate.update("Subcategory.update", subcategory);
		if(result ==0 ) {
			throw new SubcategoryException("서브카테고리 수정 실패");
		}
	}

	@Override
	public void delete(int subcategory_id) throws SubcategoryException{
		int result = sessionTemplate.delete("Subcategory.delete", subcategory_id);
		if(result ==0 ) {
			throw new SubcategoryException("서브카테고리삭제 실패");
		}
	}

}
