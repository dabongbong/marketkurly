package com.kurly.marketkurly.controller.market;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kurly.marketkurly.model.product.ProductService;

@Controller
public class ProductController {
	
	@Autowired
	private ProductService productService;
	
	
	@GetMapping("/product/listByCategory")
	public ModelAndView getListByCategory(HttpServletRequest request, int category_id) {
		List productList = productService.selectByCategory(category_id);
		ModelAndView mav = new ModelAndView("market/product/listByCategory");
		mav.addObject("productList", productList);
		return mav;
	}

}
