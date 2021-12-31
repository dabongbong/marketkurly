package com.kurly.marketkurly.domain;

import lombok.Data;

@Data
public class Product_detail {
	private int product_detail_id;
	private Product product;
	private String item;
	private String content;
	
}
