package com.kurly.marketkurly.controller.admin;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kurly.marketkurly.domain.Subcategory;
import com.kurly.marketkurly.exception.SubcategoryException;
import com.kurly.marketkurly.model.subcategory.SubcategoryService;


@Controller
public class SubcategoryController {

	@Autowired
	private SubcategoryService subcategoryService;
	

	// 서브카테고리 리스트
	@GetMapping("/category/sublist")
	public ModelAndView getList() {
		ModelAndView mav = new ModelAndView("admin/category/list");
		List subcategoryList = subcategoryService.selectAll();  
		mav.addObject("subcategoryList", subcategoryList); 
		
		return mav;
	}
	// 카테고리 등록 폼 
	@PostMapping("/category/subregistform")
	public String registForm(int category_id, Model model) {
		model.addAttribute("category_id", category_id);
		
		return "admin/category/subregist";
	}
	
	// 카테고리 등록 
	@PostMapping("/category/subregist")
	public String regist(Subcategory subcategory) {
		subcategoryService.insert(subcategory);
		return "redirect:/admin/category/list";
	}
	
	//카테고리 상세보기 
//	@GetMapping("/category/subdetail")
//	public String getDetail(int subcategory_id, Model model) {
//		Category subcategory = subcategoryService.select(subcategory_id);
//		model.addAttribute("subcategory", subcategory);
//		return "admin/category/detail";
//	
//	}
	
	
	// 카테고리 삭제 
	@GetMapping("/category/subdelete")
	public String delete() {
		return "redirect:/admin/category/list";
	}
	
	@ExceptionHandler(SubcategoryException.class)
	public ModelAndView handle(SubcategoryException e) {
		ModelAndView mav = new ModelAndView("admin/error/result");
		mav.addObject("e",e); 
		return mav;
	}
}
