package com.kurly.marketkurly.controller.admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kurly.marketkurly.model.product.ProductService;
import com.kurly.marketkurly.util.Pager;

@Controller
public class ProductController {

	@Autowired
	private ProductService productService;
	@Autowired
	private Pager pager;
	
	@GetMapping(value="/product/list")
	public ModelAndView getList(HttpServletRequest request) {
//		List productList = productService.selectAll();
//		pager.init(productList, request);
		ModelAndView mav = new ModelAndView("admin/product/list");
		System.out.println("컨트롤러 호출");
		return mav;
	}
	
}
