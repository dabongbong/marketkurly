package com.kurly.marketkurly.controller.admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kurly.marketkurly.model.member.MemberService;
import com.kurly.marketkurly.util.Pager;

public class MemberController {

	@Autowired
	private MemberService memberService;
	
	@GetMapping("/member/list")
	public ModelAndView getList() {
		ModelAndView mav = new ModelAndView("admin/member/list");
		List memberList=memberService.selectAll();
		
		return mav;
	}

}
