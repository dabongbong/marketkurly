package com.kurly.marketkurly.domain;

import lombok.Data;

@Data
public class My_qna {
	private int my_qna_no;
	private Member  member_id;
	private String title;
	private String writer;
	private String regdate;
}
