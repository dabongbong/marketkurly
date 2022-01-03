package com.kurly.marketkurly.model.order;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.kurly.marketkurly.domain.OrderSummary;

public class OrderServiceImpl implements OrderService {
	
	@Autowired
	private OrderSummaryDAO orderSummaryDAO;
	
	@Override
	public List selectAll() {
		return orderSummaryDAO.selectAll();
	}

	@Override
	public OrderSummary select(int order_summary_id) {
		return orderSummaryDAO.select(order_summary_id);
	}

	@Override
	public void insert(OrderSummary order_summary) {
		
	}

	@Override
	public void delete(int order_summary_id) {
	}

}
