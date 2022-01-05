package com.kurly.marketkurly.model.order;

import java.util.List;

public interface OrderDetailDAO {
	public List selectDetailAll();
	public void insertDetail(int order_detail_id);
}
