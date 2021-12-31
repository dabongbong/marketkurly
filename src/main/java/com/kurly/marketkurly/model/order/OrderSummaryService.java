package com.kurly.marketkurly.model.order;

import java.util.List;

import com.kurly.marketkurly.domain.Order_summary;

public interface OrderSummaryService {

	public List selectAll();
	public Order_summary select();
}

