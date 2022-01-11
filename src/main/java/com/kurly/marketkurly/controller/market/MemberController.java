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
	@GetMapping("/registform")
	public String registForm() {
		return "market/member/regist";
	}
	//회원 등록
		@PostMapping("/regist")
		public String regist(Member member) {
			
			String pass=hashBuilder.convertStringToHash(member.getMember_pass());
			member.setMember_pass(pass);
			
			memberService.insert(member);
			
			return "redirect:/loginform";
		}
		
		//로그인 폼 요청 처리
		@GetMapping("/loginform")
		public String getLoginForm() {
			return "market/member/login";
		}
		
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
			
			return message;
		}
}









