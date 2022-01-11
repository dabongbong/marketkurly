package com.kurly.marketkurly.domain;

import lombok.Data;

@Data
public class Faq {
	private int faq_no;
	private String fnq_category;
	private String title;
	private String writer;
	private String content;
}
