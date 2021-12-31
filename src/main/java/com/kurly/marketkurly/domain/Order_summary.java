package com.kurly.marketkurly.domain;

import lombok.Data;

@Data
public class Order_summary {
	private int order_summary_id;
	private Member member_id;
	private PayMethod paymethod_id;
	private String order_date;
	private int price;
}
