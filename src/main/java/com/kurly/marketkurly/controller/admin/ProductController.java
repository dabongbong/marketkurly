package com.kurly.marketkurly.controller.admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.kurly.marketkurly.model.product.ProductService;
import com.kurly.marketkurly.util.Pager;

@Controller
public class ProductController {

	@Autowired
	private ProductService productService;
	@Autowired
	private Pager pager;
	
	@GetMapping("/product/list")
	public String getList(HttpServletRequest request, Model model) {
		List prodcutList = productService.selectAll();
		pager.init(prodcutList, request);
		model.addAttribute("productList", prodcutList);
		model.addAttribute("pager", pager);
		
		return "admin/product/list";
	}
	
}
