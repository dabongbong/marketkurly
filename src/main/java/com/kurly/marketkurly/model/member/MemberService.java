package com.kurly.marketkurly.model.member;

import java.util.List;

import com.kurly.marketkurly.domain.Member;

public interface MemberService {
	public List selectAll();
	public Member select(int member_id); //관리자용 
	public Member selectByAdmin(Member member); //일반용
	public void insert(Member member);
	public void update(Member member);
	public void delete(int member_id);
	public int userIdCheck(String user_id);
}
