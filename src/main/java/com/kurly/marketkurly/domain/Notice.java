package com.kurly.marketkurly.domain;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class Notice {
	private int notice_no;
	private String title;
	private String writer;
	private String content;
	private String regdate;
	private int hit;
}
