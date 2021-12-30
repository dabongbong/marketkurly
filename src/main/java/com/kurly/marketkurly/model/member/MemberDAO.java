package com.kurly.marketkurly.model.member;

import java.util.List;

import com.kurly.marketkurly.domain.Member;

public interface MemberDAO {
	public List selectAll();
	public Member select();
	
}
