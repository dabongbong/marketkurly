package com.kurly.marketkurly.domain;

import lombok.Data;

@Data
public class Member {
	private int member_id;
	private String user_id;
	private String member_pass;
	private String member_name;
	private String email;
	private String phone;
	private String addr;
	private String gender;
	private String birth;
}
