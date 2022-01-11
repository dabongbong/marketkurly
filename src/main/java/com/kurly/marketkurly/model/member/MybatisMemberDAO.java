package com.kurly.marketkurly.model.member;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kurly.marketkurly.domain.Member;
import com.kurly.marketkurly.exception.MemberException;

@Repository
public class MybatisMemberDAO implements MemberDAO{
	@Autowired
	private SqlSessionTemplate sessionTemplate;

	@Override
	public List selectAll() {
		return sessionTemplate.selectList("Member.selectAll");
	}

	@Override
	public Member select(int member_id) {
		return sessionTemplate.selectOne("Member.select",member_id);
	}
	@Override
	public Member selectByAdmin(Member member) {
		return sessionTemplate.selectOne("Member.selectByAdmin", member);
	}

	@Override
	public void insert(Member member)throws MemberException{
		int result=sessionTemplate.insert("Member.insert", member);
		if(result==0) {
			throw new MemberException("회원 등록 실패");
		}
	}

	@Override
	public void update(Member member) {
		int result=sessionTemplate.update("Member.update",member);
		if(result==0) {
			throw new MemberException("회원 수정 실패");
		}
	}

	@Override
	public void delete(int member_id) throws MemberException{
		int result=sessionTemplate.delete("Member.delete",member_id);
		if(result==0) {
			throw new MemberException("회원삭제 실패");
		}
	}

	@Override
	public int userIdCheck(String user_id) {
		return sessionTemplate.selectOne("Member.userIdCheck",user_id);
	}




}
