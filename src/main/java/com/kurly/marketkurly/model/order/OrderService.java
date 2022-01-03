package com.kurly.marketkurly.model.order;

import java.util.List;

import com.kurly.marketkurly.domain.Order_summary;

public interface OrderService {

	public List selectAll();
	public Order_summary select(int order_summary_id);
	public void insert(Order_summary order_summary);
	public void delete(int order_summary_id);
	public List selectDetailAll();
}

