package com.kurly.marketkurly.controller.admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.kurly.marketkurly.domain.Notice;
import com.kurly.marketkurly.model.notice.NoticeService;
import com.kurly.marketkurly.util.Pager;

@Controller
public class NoticeController {

//	@Autowired
//	private NoticeService noticeService;
//	
//	@Autowired
//	private Pager pager;
//	
//	@RequestMapping(value="")
//	public String writeForm() {
//		
//		return "";
//	}
//	
//	// 공지사항 게시물 목록
//	@RequestMapping(value="")
//	public ModelAndView getList(HttpServletRequest request) {
//		List noticeList = noticeService.selectAll();
//		
//		ModelAndView mav = new ModelAndView("");
//		mav.addObject("notiecList", noticeList);
//		
//		pager.init(noticeList, request);
//		mav.addObject("pager", pager);
//		
//		return mav;
//	}
//	
//	// 공지사항 등록 
//	@RequestMapping(value="", method=RequestMethod.POST)
//	public ModelAndView regist(HttpServletRequest request, Notice notice) {
//		
//		// 일시키시 하기 
//		
//		return null;
//	}
}
