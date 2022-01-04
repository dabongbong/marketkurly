package com.kurly.marketkurly.model.category;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kurly.marketkurly.domain.Category;
import com.kurly.marketkurly.domain.CategoryImg;
import com.kurly.marketkurly.exception.CategoryImgException;

@Service
public class CategoryServiceImpl implements CategoryService{
	
	@Autowired
	private CategoryDAO categoryDAO;
	@Autowired
	private CategoryImgDAO categoryImgDAO;

	@Override
	public List selectAll() {
		List list = categoryDAO.selectAll();
		return list; 
	}

	@Override
	public Category select(int category_id) {
		return categoryDAO.select(category_id);
	}

	@Override
	public void insert(Category category){
		categoryDAO.insert(category);
	}

	@Override
	public void update(Category category) {
		categoryDAO.update(category);
	}

	@Override
	public void delete(int category_id) {
		categoryDAO.delete(category_id);
	}

}
