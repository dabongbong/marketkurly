package com.kurly.marketkurly.model.subcategory;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kurly.marketkurly.domain.Subcategory;
import com.kurly.marketkurly.exception.SubcategoryException;

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
	public List selectAllByCategoryId(int category) {
		return subcategoryDAO.selectAllByCategoryId(category);
	}

	@Override
	public Subcategory select(int subcategory_id) {
		return subcategoryDAO.select(subcategory_id);
	}

	@Override
	public void insert(Subcategory subcategory) throws SubcategoryException{
		subcategoryDAO.insert(subcategory);
		}
	

	@Override
	public void update(Subcategory subcategory) throws SubcategoryException{
		subcategoryDAO.update(subcategory);
	}

	@Override
	public void delete(int subcategory_id) throws SubcategoryException{
		subcategoryDAO.delete(subcategory_id);
	}

}
