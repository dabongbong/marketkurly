package com.kurly.marketkurly.model.order;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kurly.marketkurly.domain.OrderDetail;
import com.kurly.marketkurly.domain.OrderSummary;
import com.kurly.marketkurly.exception.OrderException;

@Service
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
	public void insert(OrderSummary order_summary) throws OrderException{
		orderSummaryDAO.insert(order_summary);
	}

	@Override
	public void delete(int order_summary_id) {
	}

	@Override
	public List getDetail(int order_summary_id) {
		return orderSummaryDAO.getDetail(order_summary_id);
	}

	@Override
	public void checkPlus(OrderSummary orderSummary) throws OrderException{
		orderSummaryDAO.checkPlus(orderSummary);
	}

	@Override
	public int checkNewOrder() {
		return orderSummaryDAO.checkNewOrder();
	}




}
