package com.kurly.marketkurly.controller.admin;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.kurly.marketkurly.model.order.OrderService;

@Controller
public class RestOrderController {

	@Autowired
	private OrderService orderService;
	
	@GetMapping("rest/orderDetail")
	public Object getDetail(HttpServletRequest request) {
//		List<OrderDetail> orderDetailList = orderService.sele
		return null;
	}
}
