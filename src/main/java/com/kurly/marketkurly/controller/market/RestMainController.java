package com.kurly.marketkurly.controller.market;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.kurly.marketkurly.model.category.CategoryService;
import com.kurly.marketkurly.model.subcategory.SubcategoryService;

@RestController
public class RestMainController {
	
	@Autowired
	private CategoryService categoryService;
	@Autowired
	private SubcategoryService subcategoryService;
	
	@GetMapping("/rest/category")
	public List getMain() {
		
		List categoryList = categoryService.selectAll();
		return categoryList;
	}


}
