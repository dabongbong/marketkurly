package com.kurly.marketkurly.controller.admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kurly.marketkurly.model.member.MemberService;
import com.kurly.marketkurly.util.Pager;

//@Controller
public class MemberController {
//	@Autowired
//	private MemberService memberService;
//	@Autowired
//	private Pager pager;
//	
//	
//	@GetMapping("/member/list")
//	public String getList(HttpServletRequest request,Model model) {
//		List memberList=memberService.selectAll();
//		pager.init(memberList, request);
//		
//		model.addAttribute("memberList",memberList);
//		model.addAttribute("pager",pager);
//		return "admin/member/list";
//	}
}
