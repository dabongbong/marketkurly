package com.kurly.marketkurly.controller.market;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kurly.marketkurly.domain.Member;
import com.kurly.marketkurly.model.member.MemberService;
import com.kurly.marketkurly.util.HashBuilder;
import com.kurly.marketkurly.util.Message;

@Controller
public class MemberController {
	@Autowired
	private HashBuilder hashBuilder;
	@Autowired
	private MemberService memberService;
	
	//회원등록 폼 요청
	@GetMapping("/market/member/registform")
	public String registForm() {
		return "market/member/regist";
	}
	//회원 등록
		@PostMapping("/market/member/regist")
		public String regist(Member member) {
			
			String pass=hashBuilder.convertStringToHash(member.getMember_pass());
			member.setMember_pass(pass);
			
			memberService.insert(member);
			
			return "redirect:/market/member/loginform";
		}
		
		//로그인 폼 요청 처리
		@GetMapping("/member/loginform")
		public String getLoginForm() {
			return "market/member/login";
		}
		
		//로그인
		@PostMapping("/member/login")
		@ResponseBody
		public Message loginCheck(HttpServletRequest request,Member member) {
			
			String pass=hashBuilder.convertStringToHash(member.getMember_pass());
			member.setMember_pass(pass);
			
			Member result = memberService.select(member);
			
			Message message = new Message();
			message.setCode(1);
			message.setMsg(member.getMember_name()+"님 환영합니다.");
			
			HttpSession session = request.getSession();
			session.setAttribute("member", result);
			
			return message;
		}
}









