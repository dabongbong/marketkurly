package com.kurly.marketkurly.domain;

import lombok.Data;

@Data
public class Subcategory {
	private int subcategory_id;
	private Category category;
	private String subcategory_name;
}
