package com.kurly.marketkurly.controller.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kurly.marketkurly.domain.Category;
import com.kurly.marketkurly.model.category.CategoryDAO;
import com.kurly.marketkurly.model.category.CategoryService;

@Controller
public class CategoryController {

	private CategoryService categoryService;
	
	
	// 카테고리 리스트
	@GetMapping("/category/list")
	public ModelAndView getList() {
		ModelAndView mav = new ModelAndView("admin/category/list");
//		List categoryList = categoryService.selectAll();  
//		mav.addObject("categoryList", categoryList); 
		
		return mav;
	}
	
	// 카테고리 등록 
	@PostMapping("/category/regist")
	public String regist(Category category) {
		categoryService.insert(category);
		return "admin/category/detail";
	}
}
