package com.kurly.marketkurly.controller.admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kurly.marketkurly.domain.Faq;
import com.kurly.marketkurly.exception.FaqException;
import com.kurly.marketkurly.exception.UploadException;
import com.kurly.marketkurly.model.faq.FaqService;
import com.kurly.marketkurly.util.Pager;

@Controller
public class FaqController {
	
	@Autowired
	private FaqService faqService;
	
	@Autowired
	private Pager pager;
	
	@GetMapping("/faq/faq")
	public ModelAndView getList(HttpServletRequest request) {
		
		ModelAndView mav = new ModelAndView("admin/faq/faq");
 		List faqList = faqService.selectAll();
 		
 		pager.init(faqList, request);
 		
 		mav.addObject("pager", pager);
 		mav.addObject("faqList", faqList);
 		
 		return mav;
	}
	// faq 등록 폼
		 	@GetMapping("/faq/write")
		 	public String writeForm(Model model,HttpServletRequest request) {
		 		List faqList = faqService.selectAll();
				model.addAttribute("faqList", faqList);
		 		
		 		return "admin/faq/write";
		 	}
		 	// faq 등록 하기~
		 	@PostMapping("/faq/write")
			public ModelAndView regist(HttpServletRequest request, Faq faq) {
				
		 		faqService.insert(faq); 
				
				ModelAndView mav = new ModelAndView("redirect:/admin/faq/faq");
				
				return mav;
		 	}
		 	// 문의 상세보기
		 	@GetMapping("/faq/detail")
			public String getDetail(int faq_no, Model model,HttpServletRequest request) {
				Faq faq = faqService.select(faq_no); 
				model.addAttribute("faq", faq);
				
				return "admin/faq/detail";
			}
			//수정
			@PostMapping("/faq/update")
			public ModelAndView update(Faq faq,HttpServletRequest request) {
				faqService.update(faq);
				ModelAndView mav = new ModelAndView("redirect:/admin/faq/detail?faq_no="+faq.getFaq_no());
				return mav;
				
			}
			//삭제 요청 처리
			@GetMapping("/faq/delete")
			public String delete(int faq_no,HttpServletRequest request) {
				faqService.delete(faq_no);
				
				return "redirect:/admin/faq/faq";
			}
			
			@ExceptionHandler(FaqException.class)                      
			public ModelAndView handleException(FaqException e) {
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
