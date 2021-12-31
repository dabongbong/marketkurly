package com.kurly.marketkurly.domain;

import lombok.Data;

@Data
public class ProductQnA {
	private int productqna_no;
	private Product product;
	private String title;
	private String writer;
	private String date;
	private String answer;
	private int ishidden;
}
