package com.kurly.marketkurly.domain;

import lombok.Data;

@Data
public class ProductDetail {
	private int product_detail_id;
	private Product product;
	private String item;
	private String content;
	
}
