package com.kurly.marketkurly.controller.market;

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
	
	@GetMapping("/faq")
	public ModelAndView getList(HttpServletRequest request) {
		
		ModelAndView mav = new ModelAndView("market/faq/faq");
 		List faqList = faqService.selectAll();
 		
 		pager.init(faqList, request);
 		
 		mav.addObject("pager", pager);
 		mav.addObject("faqList", faqList);
 		
 		return mav;
	}
	
		 	// 문의 상세보기
		 	@GetMapping("/faqDetail")
			public String getDetail(int faq_no, Model model) {
				Faq faq = faqService.select(faq_no); 
				model.addAttribute("faq", faq);
				
				return "market/faq/faqDetail";
			}
		
}
