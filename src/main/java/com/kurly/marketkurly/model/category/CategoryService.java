package com.kurly.marketkurly.model.category;

import java.util.List;

import com.kurly.marketkurly.domain.Category;

public interface CategoryService {

	public List selectAll();
	public Category select(int category_id);
	public void insert(Category category);
	public void update(Category category);
	public void delete(int category_id);
	
}
