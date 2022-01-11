package com.kurly.marketkurly.controller.market;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kurly.marketkurly.model.category.CategoryService;
import com.kurly.marketkurly.model.subcategory.SubcategoryService;

@Controller
public class MainController {
	
	@Autowired
	private CategoryService categoryService;
	@Autowired
	private SubcategoryService subcategoryService;
	
	@GetMapping("/")
	public ModelAndView getMain() {
		
		List categoryList = categoryService.selectAll();
		ModelAndView mav = new ModelAndView();
		mav.addObject("categoryList", categoryList);
		
		mav.setViewName("market/index");
		return mav;
	}


}
