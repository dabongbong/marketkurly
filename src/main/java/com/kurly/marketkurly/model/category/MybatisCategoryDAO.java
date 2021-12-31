package com.kurly.marketkurly.model.category;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kurly.marketkurly.domain.Category;

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
		return null;
	}

	@Override
	public void insert(Category category) {
		int result = sessionTemplate.insert("Category.insert", category);  
	}

	@Override
	public void update(Category category) {
	}

	@Override
	public void delete(int category_id) {
	}

}
