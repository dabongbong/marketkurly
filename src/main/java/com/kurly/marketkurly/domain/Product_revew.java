package com.kurly.marketkurly.domain;

import lombok.Data;

@Data
public class Product_revew {
	private int review_no;
	private Product product;
	private String title;
	private String date;
	private int help;
	private int hit;
}
