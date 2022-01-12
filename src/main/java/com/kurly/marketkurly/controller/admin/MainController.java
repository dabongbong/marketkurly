package com.kurly.marketkurly.controller.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.kurly.marketkurly.model.order.OrderService;


@Controller
public class MainController {
	
		@Autowired
		private OrderService orderService;
		@RequestMapping(value="/main", method=RequestMethod.GET)
		public ModelAndView getMain() {
			ModelAndView mav = new ModelAndView();
			int newOrder = orderService.checkNewOrder();
			mav.addObject("newOrder", newOrder);
			mav.setViewName("admin/index");
			
			return mav;
		}	
	}		

