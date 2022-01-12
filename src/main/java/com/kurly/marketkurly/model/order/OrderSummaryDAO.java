package com.kurly.marketkurly.model.order;

import java.util.List;

import com.kurly.marketkurly.domain.OrderSummary;

public interface OrderSummaryDAO {

	public List selectAll();
	public OrderSummary select(int order_summary_id);
	public void insert(OrderSummary order_summary);
	public void delete(int order_summary_id);
	public List getDetail(int order_summary_id);
	public void checkPlus(OrderSummary orderSummary);
	public int checkNewOrder();
}
