package com.kurly.marketkurly.model.order;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.kurly.marketkurly.domain.Order_summary;

public class OrderServiceImpl implements OrderService {
	
	@Autowired
	private OrderSummaryDAO orderSummaryDAO;
	
	@Autowired
	private OrderDetailDAO orderDetailDAO;
	
	@Override
	public List selectAll() {
		return orderSummaryDAO.selectAll();
	}

	@Override
	public Order_summary select(int order_summary_id) {
		return null;
	}

	@Override
	public void insert(Order_summary order_summary) {
	}

	@Override
	public void delete(int order_summary_id) {
	}

	@Override
	public List selectDetailAll() {
		return null;
	}
	
}
