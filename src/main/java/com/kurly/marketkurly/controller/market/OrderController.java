package com.kurly.marketkurly.controller.market;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class OrderController {
	
	@GetMapping("/order")
	public ModelAndView getList() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("market/order/detail");
		return mav;
	}
}
