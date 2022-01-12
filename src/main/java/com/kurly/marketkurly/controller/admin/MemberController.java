package com.kurly.marketkurly.controller.admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.kurly.marketkurly.domain.Member;
import com.kurly.marketkurly.exception.MemberException;
import com.kurly.marketkurly.model.member.MemberService;
import com.kurly.marketkurly.util.HashBuilder;
import com.kurly.marketkurly.util.Pager;

@Controller
public class MemberController {
	
	@Autowired
	private MemberService memberService;
	@Autowired
	private Pager pager;
	@Autowired
	private HashBuilder hashBuilder;
	
	//회원 리스트요청
	@GetMapping("/member/list")
	public ModelAndView getList(HttpServletRequest request) {
		List memberList = memberService.selectAll();
		
		ModelAndView mav = new ModelAndView("admin/member/list");
		pager.init(memberList, request);
		mav.addObject("memberList",memberList);
		mav.addObject("pager",pager);
		
		return mav;
	}
	//회원등록 폼 요청
	@GetMapping("/member/registform")
	public String registForm() {
		return "admin/member/regist";
	}
	
	
	//회원 등록
	@PostMapping("/member/regist")
	public String regist(Member member) {
		
		String pass=hashBuilder.convertStringToHash(member.getMember_pass());
		member.setMember_pass(pass);
		
		memberService.insert(member);
		
		return "redirect:/admin/member/list";
	}
	
	//한건 가져오기
	@GetMapping("/member/detail")
	public ModelAndView getDetail(int member_id) {
		Member member=memberService.select(member_id);
		
		ModelAndView mav = new ModelAndView("admin/member/detail");
		mav.addObject("member", member);
		
		return mav;
	}
	
	
	//삭제하기
	@GetMapping("/member/delete")
	public String delete(int member_id) {
		memberService.delete(member_id);
		
		return "redirect:/admin/member/list";
	}
	//아이디 중복체크
		@RequestMapping(value = "/member/idCheck", method = RequestMethod.GET)
		@ResponseBody
		public int idCheck(@RequestParam("user_id") String user_id) {

			return memberService.userIdCheck(user_id);
		}


	
	@ExceptionHandler(MemberException.class)
	public ModelAndView handle(MemberException e) {
		ModelAndView mav = new ModelAndView("admin/error/result");
		mav.addObject("e",e);
		return mav;
	}
}
