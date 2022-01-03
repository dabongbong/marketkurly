package com.kurly.marketkurly.model.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kurly.marketkurly.domain.Member;
import com.kurly.marketkurly.exception.MemberException;

//@Service
public class MemberServiceImple implements MemberService{
	
	//@Autowired
	private MemberDAO memberDAO;
		
	@Override
	public List selectAll() {
			List list=memberDAO.selectAll();
			System.out.println("dao가 가저오는" + list);	
			return list; 
	}

	@Override
	public Member select(int member_id) {
		return memberDAO.select(member_id);
	}

	@Override
	public void insert(Member member) throws MemberException{
		 memberDAO.insert(member);
	}

	@Override
	public void update(Member member) throws MemberException{
		memberDAO.update(member);
	}

	@Override
	public void delete(int member_id) throws MemberException{
		memberDAO.delete(member_id);
	}

}
