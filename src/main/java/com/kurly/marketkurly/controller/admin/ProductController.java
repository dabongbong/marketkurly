package com.kurly.marketkurly.controller.admin;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.kurly.marketkurly.model.category.CategoryService;
import com.kurly.marketkurly.model.product.ProductService;
import com.kurly.marketkurly.model.subcategory.SubcategoryService;
import com.kurly.marketkurly.util.Pager;

@Controller
public class ProductController {
	@Autowired
	private ProductService productService;
	@Autowired
	private CategoryService categoryService;
	@Autowired
	private SubcategoryService subcategoryService;
	private Pager pager;
	
	@GetMapping(value="/product/list")
	public ModelAndView getList(HttpServletRequest request) {
		List productList = productService.selectAll();
		
		pager.init(productList, request);
		ModelAndView mav = new ModelAndView("admin/product/list");
		mav.addObject("productList", productList);
		mav.addObject("pager", pager);
		return mav;
	}
	
	@GetMapping("/product/registForm")
	public String registForm(Model model) {
		List categoryList = categoryService.selectAll();
		model.addAttribute("categoryList", categoryList);
		
		return "admin/product/registForm";
	}
	
	@GetMapping("/product/subcategory")
	@ResponseBody
	public HashMap<String, Object> categoryListTest(HttpServletRequest request, int category_id) {
		HashMap<String, Object> result = new HashMap<String, Object>();
		List subcategoryList = subcategoryService.selectAllByCategoryId(category_id);
		result.put("data", subcategoryList);
		return result;
	}
	
}
