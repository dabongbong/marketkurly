package com.kurly.marketkurly.domain;

import lombok.Data;

@Data
public class CategoryImg {
	private int category_img_id;
	private Category category;  
	private String img;

}
