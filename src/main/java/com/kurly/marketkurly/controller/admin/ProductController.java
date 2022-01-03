package com.kurly.marketkurly.controller.admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.kurly.marketkurly.model.product.ProductService;
import com.kurly.marketkurly.util.Pager;

//@Controller
public class ProductController {

	@Autowired
	private ProductService productService;
	@Autowired
	private Pager pager;
	
	@GetMapping("/product/list")
	public String getList(HttpServletRequest request ,Model model) {
		List productList = productService.selectAll();
		pager.init(productList, request);
		model.addAttribute("productList", productList);
		model.addAttribute("pager", pager);
		
		return "admin/product/list";
	}
	
}
