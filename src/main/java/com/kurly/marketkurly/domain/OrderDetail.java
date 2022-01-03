package com.kurly.marketkurly.domain;

import lombok.Data;

@Data
public class OrderDetail {
	private int order_detail_id;
	private OrderSummary order_summary;
	private Product product;
	private int price;
}
