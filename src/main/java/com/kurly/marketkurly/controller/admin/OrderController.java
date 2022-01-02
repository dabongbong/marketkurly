package com.kurly.marketkurly.controller.admin;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.kurly.marketkurly.model.order.OrderService;

@Controller
public class OrderController {
	
	private OrderService orderSummarySerivce;

	// 주문하기
	
	// 주문 내역 리스트
	@PostMapping("/order/list")
	public String orderList(Model model) {
		List orderList = orderSummarySerivce.selectAll();
		
		model.addAttribute("orderSummaryList", orderList);
		return "admin/order/list";
	}
	
	// 주문 상세보기
	
}
