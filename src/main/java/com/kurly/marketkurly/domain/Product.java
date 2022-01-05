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
	private List<ProductDetail> product_detail_list; 
	private List<ProductHashtag> product_hashtag_list;
	
}
