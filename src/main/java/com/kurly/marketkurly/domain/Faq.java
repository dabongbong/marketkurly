package com.kurly.marketkurly.domain;

import lombok.Data;

@Data
public class Faq {
	private int faq_no;
	private String faq_category;
	private String title;
	private String writer;
	private String content;
}
