package com.kurly.marketkurly.domain;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class Category {
	private int category_id;
	private String category_name;
	private String category_logo;
	private MultipartFile imgFiles;
	
	//컬렉션으로 자식을 보유한다 
	private List<Subcategory> subList;
}
