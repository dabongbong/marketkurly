package com.kurly.marketkurly.controller.admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kurly.marketkurly.domain.Category;
import com.kurly.marketkurly.exception.CategoryException;
import com.kurly.marketkurly.model.category.CategoryService;
import com.kurly.marketkurly.util.CategoryFileManager;


@Controller
public class CategoryController {

	@Autowired
	private CategoryService categoryService;
	@Autowired
	private CategoryFileManager fileManager;

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
	public String regist(HttpServletRequest request, Category category) {
		String filename = CategoryFileManager.saveAsFile(request, category);
		category.setCategory_logo(filename);
		categoryService.insert(category);
		
		return "redirect:/admin/category/list";
	}
	
	//카테고리 상세보기 
	@GetMapping("/category/detail")
	public String getDetail(int category_id, Model model) {
		Category category = categoryService.select(category_id);
		model.addAttribute("category", category);
		return "admin/category/detail";
	
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

