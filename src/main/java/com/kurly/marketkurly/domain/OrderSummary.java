package com.kurly.marketkurly.domain;

import lombok.Data;

@Data
public class OrderSummary {
	private int order_summary_id;
	private Member member;
	private PayMethod paymethod;
	private String order_date;
	private int order_count;
	private int price;
}
