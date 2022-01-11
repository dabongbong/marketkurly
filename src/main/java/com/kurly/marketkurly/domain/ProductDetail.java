package com.kurly.marketkurly.domain;

import lombok.Data;

@Data
public class ProductDetail {
	private int product_detail_id;
	private int product_id;
	private String item;
	private String content;
	
}
