package com.kurly.marketkurly.controller.market;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kurly.marketkurly.model.order.OrderService;
import com.kurly.marketkurly.util.Pager;

@Controller
public class OrderController {
	
	@Autowired
	private OrderService orderService;
	@Autowired
	private Pager pager;
	
	@GetMapping("/orderList")
	public ModelAndView orderList(HttpServletRequest request) {
		List orderSummaryList = orderService.selectAll();
		pager.init(orderSummaryList, request);
		ModelAndView mav = new ModelAndView("market/order/list");
		mav.addObject("orderSummaryList", orderSummaryList);
		mav.addObject("pager", pager);
		return mav;
	}
	
	@GetMapping("/orderDetail")
	public ModelAndView getList(HttpServletRequest requset, int order_summary_id) {
		List orderDetail = orderService.getDetail(order_summary_id);
		ModelAndView mav = new ModelAndView("market/order/detail");
		mav.addObject("orderDetail", orderDetail);
		return mav;
	}
	
}