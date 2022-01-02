package com.kurly.marketkurly.domain;

import lombok.Data;

@Data
public class Product {
	private int product_id;
	private Subcategory subcategory;
	private String title;
	private String subTitle;
	private int price;
	private String detail;
	private int sale;
	private String product_img;
}
