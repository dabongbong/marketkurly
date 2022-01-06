package com.kurly.marketkurly.model.member;

import java.io.UnsupportedEncodingException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.util.List;

import javax.crypto.BadPaddingException;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kurly.marketkurly.domain.Member;
import com.kurly.marketkurly.exception.MemberException;
import com.kurly.marketkurly.util.AES256Util;

@Service
public class MemberServiceImple implements MemberService{
	
	@Autowired
	private MemberDAO memberDAO;
		
	@Autowired
	private AES256Util encode;
	
	@Override
	public List selectAll(){
			List<Member> list=memberDAO.selectAll();
			
			//List 안에 들어있는 Member 들의 암화된 데이터를 복호화하자 
			for(Member member :list ) {
				try {
					member.setPhone(encode.decodeData(member.getPhone()));
				} catch (InvalidKeyException e) {
					e.printStackTrace();
				} catch (UnsupportedEncodingException e) {
					e.printStackTrace();
				} catch (NoSuchAlgorithmException e) {
					e.printStackTrace();
				} catch (NoSuchPaddingException e) {
					e.printStackTrace();
				} catch (InvalidAlgorithmParameterException e) {
					e.printStackTrace();
				} catch (IllegalBlockSizeException e) {
					e.printStackTrace();
				} catch (BadPaddingException e) {
					e.printStackTrace();
				}
			}
			return list; 
	}

	@Override
	public Member select(int member_id) {
		return memberDAO.select(member_id);
	}

	@Override
	public void insert(Member member) throws MemberException{
		StringBuffer sb = new StringBuffer();
		 memberDAO.insert(member);

			try {
				
				String phone=encode.encodeData(member.getPhone());
				
				member.setPhone(phone);
				
				System.out.println(phone);
				
			} catch (InvalidKeyException e) {
				e.printStackTrace();
			} catch (UnsupportedEncodingException e) {
				e.printStackTrace();
			} catch (NoSuchAlgorithmException e) {
				e.printStackTrace();
			} catch (NoSuchPaddingException e) {
				e.printStackTrace();
			} catch (InvalidAlgorithmParameterException e) {
				e.printStackTrace();
			} catch (IllegalBlockSizeException e) {
				e.printStackTrace();
			} catch (BadPaddingException e) {
				e.printStackTrace();
			}

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
