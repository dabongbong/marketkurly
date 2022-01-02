package com.kurly.marketkurly.controller.admin;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kurly.marketkurly.domain.Category;
import com.kurly.marketkurly.exception.CategoryException;
import com.kurly.marketkurly.model.category.CategoryService;


@Controller
public class CategoryController {

	private CategoryService categoryService;
	
	
	// 카테고리 리스트
	@GetMapping("/category/list")
	public ModelAndView getList() {
		ModelAndView mav = new ModelAndView("admin/category/list");
		List categoryList = categoryService.selectAll();  
		mav.addObject("categoryList", categoryList); 
		
		return mav;
	}
	// 카테고리 등록 폼 
	@GetMapping("/category/registform")
	public String registForm() {
		return "admin/category/regist";
	}
	
	// 카테고리 등록 
	@PostMapping("/category/regist")
	public String regist(Category category) {
		categoryService.insert(category);
		return "redirect:/admin/category/list";
	}
	
	// 카테고리 삭제 
	@GetMapping("/category/delete")
	public String delete() {
		return "redirect:/admin/category/list";
	}
	
	@ExceptionHandler(CategoryException.class)
	public ModelAndView handle(CategoryException e) {
		ModelAndView mav = new ModelAndView("admin/error/result");
		mav.addObject("e",e); 
		return mav;
	}
}

