package com.kurly.marketkurly.controller.admin;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.kurly.marketkurly.model.member.MemberService;
import com.kurly.marketkurly.model.order.OrderService;


@Controller
public class MainController {
	@Autowired
	private OrderService orderService;
	@Autowired
	private MemberService memberService;
	
	
	
	@RequestMapping(value="/main", method=RequestMethod.GET)
	public ModelAndView getMain(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		int newOrder = orderService.checkNewOrder();
		int regToday = memberService.regToday();
		mav.addObject("newOrder", newOrder);
		mav.addObject("regToday", regToday);
		mav.setViewName("admin/index");
		
		return mav;
		}	
	}		

