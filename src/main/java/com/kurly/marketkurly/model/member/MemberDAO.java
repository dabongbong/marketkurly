package com.kurly.marketkurly.model.member;

import java.util.List;

import com.kurly.marketkurly.domain.Member;

public interface MemberDAO {
	public List selectAll();
	public Member select(int member_id);
	public Member selectByAdmin(Member member);
	public void insert(Member member);
	public void update(Member member);
	public void delete(int member_id);
	public int userIdCheck(String user_id);
}
