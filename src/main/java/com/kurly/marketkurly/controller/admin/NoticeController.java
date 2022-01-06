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
import org.springframework.web.servlet.ModelAndView;

import com.kurly.marketkurly.domain.Notice;
import com.kurly.marketkurly.exception.NoticeException;
import com.kurly.marketkurly.exception.UploadException;
import com.kurly.marketkurly.model.notice.NoticeService;
import com.kurly.marketkurly.util.Pager;

@Controller
public class NoticeController {

 	@Autowired
 	private NoticeService noticeService;
 	
 	@Autowired
 	private Pager pager;
 	
 
 	  
 	@GetMapping("/notice/list")
 	public ModelAndView getList(HttpServletRequest request) {
 		
 		ModelAndView mav = new ModelAndView("admin/notice/list");
 		List noticeList = noticeService.selectAll();
 		
 		pager.init(noticeList, request);
 		
 		mav.addObject("pager", pager);
 		mav.addObject("noticeList", noticeList);
 		
 		return mav;
 	}
 	// 등록 폼
 	@GetMapping("/notice/write")
 	public String writeForm(Model model) {
 		List noticeList = noticeService.selectAll();
		model.addAttribute("noticeList", noticeList);
 		
 		return "admin/notice/write";
 	}
 	// jsp 작성 ㅠㅠ
 	//썸머노트썸머노트
 	// 글등록 누르면 컨텐트에 썸머노트 ㄱㄱ 나오게 
 	
 	@PostMapping("/notice/write")
	public ModelAndView regist(HttpServletRequest request, Notice notice) {
		
		noticeService.insert(notice); 
		
		ModelAndView mav = new ModelAndView("redirect:/admin/notice/list");
		
		return mav;
		
	}
	
	
	// 상세보기
	@GetMapping("/notice/detail")
	public String getDetail(int notice_no, Model model) {
		Notice notice = noticeService.select(notice_no); 
		model.addAttribute("notice", notice);
		
		return "admin/notice/detail";
	}
	//수정
	@PostMapping("/notice/update")
	public ModelAndView update(Notice notice) {
		noticeService.update(notice);
		ModelAndView mav = new ModelAndView("redirect:/admin/notice/detail?notice_no="+notice.getNotice_no());
		return mav;
		
	}
	//삭제 요청 처리
	@GetMapping("/notice/delete")
	public String delete(int notice_no) {
		noticeService.delete(notice_no);
		
		return "redirect:/admin/notice/list";
	}
	
	@ExceptionHandler(NoticeException.class)                      
	public ModelAndView handleException(NoticeException e) {
		ModelAndView mav = new ModelAndView("admin/error/result");
		mav.addObject("e", e);
		return mav;
	}
	@ExceptionHandler(UploadException.class)							
	public ModelAndView handleException(UploadException e) {
		ModelAndView mav = new ModelAndView("admin/error/result");
		mav.addObject("e", e);
		return mav;
	}
}
