package com.kurly.marketkurly.domain;

import java.util.List;

import lombok.Data;

@Data
public class OrderSummary {
	private int order_summary_id;
	private Member member;
	private PayMethod paymethod;
	private String orderdate;
	private int price;
	
	private List<OrderDetail> orderDetailList;
}
