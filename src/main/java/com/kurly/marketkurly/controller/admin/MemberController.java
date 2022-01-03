package com.kurly.marketkurly.controller.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kurly.marketkurly.model.member.MemberDAO;
import com.kurly.marketkurly.model.member.MemberService;

@Controller
public class MemberController {
	
	@Autowired
	private MemberService memberService;
	
	@GetMapping("member/list")
	public ModelAndView getList() {
		ModelAndView mav = new ModelAndView("admin/member/list");
		List memberList = memberService.selectAll();
		
		mav.addObject("memberList",memberList);
				
		
		return mav;
	}

}
