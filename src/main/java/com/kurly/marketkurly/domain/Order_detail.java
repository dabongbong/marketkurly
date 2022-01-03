package com.kurly.marketkurly.domain;

import lombok.Data;

@Data
public class Order_detail {
	private int order_detail_id;
	private Order_summary order_summary;
	private Product product;
	private int price;
}
