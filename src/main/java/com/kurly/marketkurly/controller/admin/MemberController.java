package com.kurly.marketkurly.controller.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kurly.marketkurly.domain.Member;
import com.kurly.marketkurly.model.member.MemberDAO;
import com.kurly.marketkurly.model.member.MemberService;

@Controller
public class MemberController {
	
	@Autowired
	private MemberService memberService;
	
	//회원 리스트요청
	@GetMapping("/member/list")
	public ModelAndView getList() {
		ModelAndView mav = new ModelAndView("admin/member/list");
		List memberList = memberService.selectAll();
		
		mav.addObject("memberList",memberList);
				
		
		return mav;
	}
	//회원등록 폼 요청
	@GetMapping("/member/regist")
	public String regist(Member member) {
		memberService.insert(member);
		
		return "redirect:/admin/member/regist";
	}
	//한건 가져오기
	@GetMapping("/member/detail")
	public ModelAndView getDetail(int member_id) {
		Member member=memberService.select(member_id);
		
		ModelAndView mav = new ModelAndView("admin/member/detail");
		mav.addObject("member", member);
		
		return mav;
	}
	//수정하기
	@PostMapping("/member/update")
	public String update(Member member,Model model) {
		memberService.update(member);
		
		model.addAttribute("member", member);
		return "redirect:/admin/member/list";
	}

}
