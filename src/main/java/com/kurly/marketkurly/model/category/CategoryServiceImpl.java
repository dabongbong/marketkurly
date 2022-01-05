package com.kurly.marketkurly.model.category;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kurly.marketkurly.domain.Category;
import com.kurly.marketkurly.exception.CategoryException;

@Service
public class CategoryServiceImpl implements CategoryService{
	
	@Autowired
	private CategoryDAO categoryDAO;

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
	public void insert(Category category) throws CategoryException{
		categoryDAO.insert(category);
	}

	@Override
	public void update(Category category) throws CategoryException {
		categoryDAO.update(category);
	}

	@Override
	public void delete(int category_id) throws CategoryException{
		categoryDAO.delete(category_id);
	}

}
