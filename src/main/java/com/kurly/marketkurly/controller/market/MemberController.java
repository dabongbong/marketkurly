package com.kurly.marketkurly.controller.market;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.kurly.marketkurly.domain.Member;
import com.kurly.marketkurly.exception.MemberException;
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
	public ModelAndView registForm(HttpServletRequest request) {

		ModelAndView mav = new ModelAndView("market/member/regist");
		return mav;
	}
	//회원 등록
		@PostMapping("/regist")
		public ModelAndView regist(HttpServletRequest request,Member member) {
			
			String pass=hashBuilder.convertStringToHash(member.getMember_pass());
			member.setMember_pass(pass);
			ModelAndView mav=new ModelAndView("redirect:/loginform");
			
			memberService.insert(member);
			
			return mav;
		}
		
		//수정 폼요청
		@GetMapping("/detailform")
		public ModelAndView detailForm(HttpServletRequest request) {
			
			ModelAndView mav = new ModelAndView("market/member/detail");
			return mav;
		}
		
		//수정하기
		@PostMapping("/update")
		public String update(HttpServletRequest request,Member member,Model model) {
			memberService.update(member);
			
			model.addAttribute("member", member);
			return "redirect:/detail";
		}
		
		//삭제하기
		@GetMapping("/delete")
		public String delete(HttpServletRequest request, int member_id) {
			memberService.delete(member_id);
			
			return "redirect:/";
		}
		
		//로그인 폼 요청 처리
		@GetMapping("/loginform")
		public ModelAndView getLoginForm(HttpServletRequest request) {
			ModelAndView mav = new ModelAndView("market/member/login");
			return mav;
		}
		
		
		//로그아웃 요청처리
		@GetMapping("/logout")
		public String logout(HttpServletRequest request) {
			HttpSession session = request.getSession();
			session.invalidate();
			
			return "redirect:/loginform";
		}
		@ExceptionHandler(MemberException.class)
		public ModelAndView handel(MemberException e) {
			ModelAndView mav = new ModelAndView("admin/error/result");
				mav.addObject("e",e);
				return mav;
			
		}
		
}









