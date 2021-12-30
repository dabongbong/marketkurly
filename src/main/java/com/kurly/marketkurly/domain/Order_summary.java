package com.kurly.marketkurly.domain;

import lombok.Data;

@Data
public class Order_summary {
	private int order_id;
	private int member_id;
	private int paymethod_id;
	private String orderDate;
	private int price;
}
