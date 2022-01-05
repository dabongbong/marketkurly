package com.kurly.marketkurly.model.subcategory;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kurly.marketkurly.domain.CategoryImg;
import com.kurly.marketkurly.domain.Subcategory;
import com.kurly.marketkurly.exception.CategoryImgException;

@Service
public class SubcategoryServiceImpl implements SubcategoryService{

	@Autowired
	private SubcategoryDAO subcategoryDAO;
	
	@Override
	public List selectAll() {
		List list = subcategoryDAO.selectAll();
		System.out.println("subDAO가 가져오는거 " +list);
		return list;
	}
	
	@Override
	public List selectAllByCategory(int category_id) {
		return subcategoryDAO.selectAllByCategoryId(category_id);
	}

	@Override
	public Subcategory select(int subcategory_id) {
		return subcategoryDAO.select(subcategory_id);
	}

	@Override
	public void insert(Subcategory subcategory){
		subcategoryDAO.insert(subcategory);
		}
	

	@Override
	public void update(Subcategory subcategory) {
		subcategoryDAO.update(subcategory);
	}

	@Override
	public void delete(int subcategory_id) {
		subcategoryDAO.delete(subcategory_id);
	}

}
