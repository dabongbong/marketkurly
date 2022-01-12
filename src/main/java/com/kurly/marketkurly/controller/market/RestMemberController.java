package com.kurly.marketkurly.controller.market;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.kurly.marketkurly.domain.Member;
import com.kurly.marketkurly.exception.MemberException;
import com.kurly.marketkurly.model.member.MemberService;
import com.kurly.marketkurly.util.HashBuilder;
import com.kurly.marketkurly.util.Message;

@RestController
public class RestMemberController {
	@Autowired
	private HashBuilder hashBuilder;
	
	@Autowired
	private MemberService memberService;
	
	//로그인
	@PostMapping("/login")
	@ResponseBody
	public Message loginCheck(HttpServletRequest request,Member member) {
		System.out.println("비번운 "+member.getMember_pass());
		
		
		String pass=hashBuilder.convertStringToHash(member.getMember_pass());
		member.setMember_pass(pass);
		
		Member result = memberService.selectByAdmin(member);
		System.out.println("로그인 결과"+result);
		
		Message message = new Message();
		message.setCode(1);
		message.setMsg(result.getMember_name()+"님 환영합니다.");
		
		HttpSession session = request.getSession();
		session.setAttribute("member", result);
		System.out.println("로그인 도달여부"+result);
		
		return message;
	}
	
	@ExceptionHandler(MemberException.class)
	public Message handle(MemberException e) {
		Message message = new Message();
		message.setCode(0);
		message.setMsg(e.getMessage());
		
		return message;
	}
}
