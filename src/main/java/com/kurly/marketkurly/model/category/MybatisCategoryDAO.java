package com.kurly.marketkurly.model.category;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kurly.marketkurly.domain.Category;
import com.kurly.marketkurly.exception.CategoryException;

@Repository
public class MybatisCategoryDAO implements CategoryDAO {

	@Autowired
	private SqlSessionTemplate sessionTemplate;
	
	@Override
	public List selectAll() {
		return sessionTemplate.selectList("Category.selectAll");
	}

	@Override
	public Category select(int category_id) {
		return sessionTemplate.selectOne("Category.select", category_id);
	}

	@Override
	public void insert(Category category) throws CategoryException{
		int result = sessionTemplate.insert("Category.insert", category);
		if(result == 0) {
			throw new CategoryException("카테고리 등록에 실패하였습니다");
		}
	}

	@Override
	public void update(Category category) throws CategoryException{
		int result = sessionTemplate.update("Category.update" , category);
		if(result == 0) {
			throw new CategoryException("카테고리 수정에 실패하였습니다");
		}
	}

	@Override
	public void delete(int category_id) throws CategoryException{
		int result = sessionTemplate.delete("Category.delete", category_id);
		if(result == 0) {
			throw new CategoryException("카테고리 삭제에 실패하였습니다");
		}
	}

}
