package com.kurly.marketkurly.domain;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class Category {
	private int category_id;
	private String category_name;
	private String category_logo;
	private MultipartFile imgFiles;

}
