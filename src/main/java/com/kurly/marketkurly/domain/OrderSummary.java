package com.kurly.marketkurly.domain;

import java.util.List;

import lombok.Data;

@Data
public class OrderSummary {
	private int order_summary_id;
	private String order_number; // 주문번호
	private Member member;
	private PayMethod paymethod;
	private String orderdate;
	private int price;
	
	private List<OrderDetail> orderDetailList;
}
