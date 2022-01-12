package com.kurly.marketkurly.controller.admin;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.JsonObject;
import com.kurly.marketkurly.domain.Product;
import com.kurly.marketkurly.exception.ProductException;
import com.kurly.marketkurly.exception.UploadException;
import com.kurly.marketkurly.model.category.CategoryService;
import com.kurly.marketkurly.model.product.ProductService;
import com.kurly.marketkurly.model.subcategory.SubcategoryService;
import com.kurly.marketkurly.util.Pager;
import com.kurly.marketkurly.util.ProductFileManager;

@Controller
public class ProductController {
	@Autowired
	private ProductService productService;
	@Autowired
	private CategoryService categoryService;
	@Autowired
	private SubcategoryService subcategoryService;
	
	@Autowired
	private Pager pager;
	@Autowired
	private ProductFileManager fileManager;
	
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
	
	@PostMapping("/product/regist")
	public String regist(HttpServletRequest request, Product product) {
		//System.out.println("디테일 값"+product.getProduct_detail_list());
		String fileName = fileManager.saveAsFile(request, product);
		product.setProduct_img(fileName);
		productService.insert(product);
		
		//System.out.println("해시태그 "+product.getProduct_hashtag_list());
		return "redirect:/admin/product/list";
	}
	
	@GetMapping("/product/detail")
	public ModelAndView getDetail(int product_id) {
		ModelAndView mav = new ModelAndView("admin/product/detail");
		Product product = productService.select(product_id);
		mav.addObject("product", product);
		return mav;
	}
	@GetMapping("/product/updateForm")
	public String updateForm(Model model, int product_id) {
		List categoryList = categoryService.selectAll();
		Product product = productService.select(product_id);
		model.addAttribute("categoryList", categoryList);
		model.addAttribute("product", product);
		return "admin/product/updateForm";
	}
	@PostMapping("/product/update")
	public String update(HttpServletRequest request, Product product) {
		productService.update(product);
		return "redirect:/admin/product/detail?product_id="+product.getProduct_id();
	}
	@GetMapping("/product/delete")
	public String delete(int product_id) {
		productService.delete(product_id);
		return "redirect:/admin/product/list";
	}
	
	
	
	
	
	@ExceptionHandler(UploadException.class)
	public ModelAndView handle(UploadException e) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("e", e);
		return mav;
	}
	@ExceptionHandler(ProductException.class)
	public ModelAndView handle(ProductException e) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("e", e);
		return mav;
	}
}
