package com.kurly.marketkurly.model.member;

import java.util.List;

import com.kurly.marketkurly.domain.Member;

public interface MemberService {
	public List selectAll();
	public Member select(int member_id);
	public void insert(Member member);
	public void update(Member member);
	public void delete(int member_id);
}
