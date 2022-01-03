package com.kurly.marketkurly.controller.admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

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
	@GetMapping("/order/myList")
	public String orderList(HttpServletRequest request, Model model) {
		List orderSummaryList = orderService.selectAll();
		pager.init(orderSummaryList, request);

		model.addAttribute("orderSummaryList", orderSummaryList);
		model.addAttribute("pager", pager);
		return "admin/order/list";
	}

	// 주문 상세보기

}
