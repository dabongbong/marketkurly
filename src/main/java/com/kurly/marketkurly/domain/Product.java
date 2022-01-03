package com.kurly.marketkurly.domain;

import java.util.List;

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
	private List<Product_detail> product_detail_list; 
	private List<Product_hashtag> product_hashtag_list;
	
}
