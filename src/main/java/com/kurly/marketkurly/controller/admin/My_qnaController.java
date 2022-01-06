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

import com.kurly.marketkurly.domain.My_qna;
import com.kurly.marketkurly.exception.My_qnaException;
import com.kurly.marketkurly.exception.UploadException;
import com.kurly.marketkurly.model.customer.My_qnaService;
import com.kurly.marketkurly.util.Pager;

@Controller
public class My_qnaController {

	@Autowired
	private My_qnaService my_qnaService;
	
	@Autowired
	private Pager pager;
	
	@GetMapping("/customer/my_qna")
 	public ModelAndView getList(HttpServletRequest request) {
 		
 		ModelAndView mav = new ModelAndView("admin/customer/my_qna");
 		List my_qnaList = my_qnaService.selectAll();
 		
 		pager.init(my_qnaList, request);
 		
 		mav.addObject("pager", pager);
 		mav.addObject("my_qnaList", my_qnaList);
 		
 		return mav;
 	}
	// 문의 등록 폼
	 	@GetMapping("/customer/write")
	 	public String writeForm(Model model) {
	 		List my_qnaList = my_qnaService.selectAll();
			model.addAttribute("my_qnaList", my_qnaList);
	 		
	 		return "admin/customer/write";
	 	}
	 	// 문의 등록 하기~
	 	@PostMapping("/customer/write")
		public ModelAndView regist(HttpServletRequest request, My_qna my_qna) {
			
			my_qnaService.insert(my_qna); 
			
			ModelAndView mav = new ModelAndView("redirect:/admin/customer/my_qna");
			
			return mav;
	 	}
	 	// 문의 상세보기
	 	@GetMapping("/customer/detail")
		public String getDetail(int my_qna_no, Model model) {
			My_qna my_qna = my_qnaService.select(my_qna_no); 
			model.addAttribute("my_qna", my_qna);
			
			return "admin/customer/detail";
		}
		//수정
		@PostMapping("/customer/update")
		public ModelAndView update(My_qna my_qna) {
			my_qnaService.update(my_qna);
			ModelAndView mav = new ModelAndView("redirect:/admin/customer/detail?my_qna_no="+my_qna.getMy_qna_no());
			return mav;
			
		}
		//삭제 요청 처리
		@GetMapping("/customer/delete")
		public String delete(int my_qna) {
			my_qnaService.delete(my_qna);
			
			return "redirect:/admin/cutomer/my_qna";
		}
		
		@ExceptionHandler(My_qnaException.class)                      
		public ModelAndView handleException(My_qnaException e) {
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
