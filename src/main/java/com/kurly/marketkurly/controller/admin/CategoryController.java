package com.kurly.marketkurly.controller.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;

import com.kurly.marketkurly.domain.Category;
import com.kurly.marketkurly.model.category.CategoryService;

@Controller
public class CategoryController {

	@Autowired
	private CategoryService categoryService;
	
	// 카테고리 등록 
	@PostMapping("/category/regist")
	public String regist(Category category) {
		categoryService.insert(category);
		return "admin/category/detail";
	}
}
