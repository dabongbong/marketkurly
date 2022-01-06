package com.kurly.marketkurly.model.subcategory;

import java.util.List;

import com.kurly.marketkurly.domain.Subcategory;

public interface SubcategoryService {
	public List selectAll();
	public List selectAllByCategoryId(int category);
	public Subcategory select(int subcategory_id);
	public void insert(Subcategory subcategory);
	public void update(Subcategory subcategory);
	public void delete(int subcategory_id);
}
