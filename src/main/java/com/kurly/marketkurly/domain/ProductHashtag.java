package com.kurly.marketkurly.domain;

import lombok.Data;

@Data
public class ProductHashtag {
	private int tag_id;
	private Product product;
	private String comment;
}
