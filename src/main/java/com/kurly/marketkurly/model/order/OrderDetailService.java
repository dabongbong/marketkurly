package com.kurly.marketkurly.model.order;

import java.util.List;

public interface OrderDetailService {
	public List selectDetailAll();
	public void insert(int order_detail_id);
}
