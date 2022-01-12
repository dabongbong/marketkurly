package com.kurly.marketkurly.controller.market;

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
 	
 
 	  
 	@GetMapping("/noticeList")
 	public ModelAndView getList(HttpServletRequest request) {
 		
 		ModelAndView mav = new ModelAndView("market/notice/notice");
 		List noticeList = noticeService.selectAll();
 		
 		pager.init(noticeList, request);
 		
 		mav.addObject("pager", pager);
 		mav.addObject("noticeList", noticeList);
 		
 		return mav;
 	}
 	@GetMapping("/noticeDetail")
	public String getDetail(int notice_no, Model model) {
		Notice notice = noticeService.select(notice_no); 
		model.addAttribute("notice", notice);
		
		return "admin/notice/detail";
	}
}
