package com.kurly.marketkurly.controller.admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kurly.marketkurly.domain.OrderSummary;
import com.kurly.marketkurly.exception.OrderException;
import com.kurly.marketkurly.model.order.OrderService;
import com.kurly.marketkurly.util.Pager;

@Controller
public class OrderController {

	@Autowired
	private OrderService orderService;
	@Autowired
	private Pager pager;

	// 주문하기

	// 주문 내역 리스트
	@GetMapping("/order/list")
	public ModelAndView orderList(HttpServletRequest request) {
		List orderSummaryList = orderService.selectAll();
		pager.init(orderSummaryList, request);
		ModelAndView mav = new ModelAndView("admin/order/list");
		mav.addObject("orderSummaryList", orderSummaryList);
		mav.addObject("pager", pager);
		return mav;
	}

	//카테고리 상세보기 
	@GetMapping("/order/detail")
	public ModelAndView getDetail(HttpServletRequest request, int order_summary_id) {
		List orderDetail= orderService.getDetail(order_summary_id);
		ModelAndView mav = new ModelAndView("admin/order/detail");
		mav.addObject("orderDetail", orderDetail);
		return mav;
	}
	
	@ExceptionHandler(OrderException.class)
	public ModelAndView handle(OrderException e) {
		ModelAndView mav = new ModelAndView("/admin/error/result");
		mav.addObject("e", e); // 에러 객체심기
		return mav;
	}
}
