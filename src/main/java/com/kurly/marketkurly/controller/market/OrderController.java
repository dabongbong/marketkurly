package com.kurly.marketkurly.controller.market;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kurly.marketkurly.domain.OrderSummary;
import com.kurly.marketkurly.model.order.OrderService;
import com.kurly.marketkurly.util.Pager;

@Controller
public class OrderController {
	
	@Autowired
	private OrderService orderService;
	
	@GetMapping("/orderForm")
	public String getOrderForm() {
		return "market/order/registForm";
	}

	@GetMapping("/orderList")
	public ModelAndView orderList(HttpServletRequest request) {
		List orderSummaryList = orderService.selectAll();
		Pager pager = new Pager();
		pager.init(orderSummaryList, request);
		ModelAndView mav = new ModelAndView("market/order/list");
		mav.addObject("orderSummaryList", orderSummaryList);
		mav.addObject("pager", pager);
		return mav;
	}
	
	@GetMapping("/orderDetail")
	public ModelAndView getList(HttpServletRequest request, int order_summary_id) {
		List orderDetail = orderService.getDetail(order_summary_id);
		Pager pager = new Pager();
		pager.init(orderDetail, request);
		ModelAndView mav = new ModelAndView("market/order/detail");
		mav.addObject("orderDetail", orderDetail);
		mav.addObject("pager", pager);
		return mav;
	}
	
	@PostMapping("/orderRegist")
	public String regist(HttpServletRequest request, OrderSummary orderSummary) {
		orderService.insert(orderSummary);
		return "rediredirect:/orderList";
	}
	
	
}
