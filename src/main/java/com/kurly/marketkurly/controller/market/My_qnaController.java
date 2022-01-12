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
	
	@GetMapping("/myQnaList")
 	public ModelAndView myQnaList(HttpServletRequest request) {
 		
		List my_qnaList = my_qnaService.selectAll();
		Pager pager = new Pager();
		pager.init(my_qnaList, request);
		
 		ModelAndView mav = new ModelAndView("market/myQna/myQna");
 		mav.addObject("my_qnaList", my_qnaList);
 		mav.addObject("pager", pager);
 		
 		return mav;
 	}
	// 문의 등록 폼
	 	@GetMapping("/myQnaWrite")
	 	public String writeForm(Model model) {
	 		List my_qnaList = my_qnaService.selectAll();
			model.addAttribute("my_qnaList", my_qnaList);
	 		
	 		return "market/myQna/write";
	 	}
	 	// 문의 등록 하기~
	 	@PostMapping("/myQnaRegist")
		public ModelAndView regist(HttpServletRequest request, My_qna my_qna) {
			
			my_qnaService.insert(my_qna); 
			
			ModelAndView mav = new ModelAndView("redirect:/myQnaList");
			
			return mav;
	 	}
	 	
	 	@GetMapping("/myQnaDetail")
		public String getDetail(int my_qna_no, Model model) {
			My_qna my_qna = my_qnaService.select(my_qna_no); 
			model.addAttribute("my_qna", my_qna);
			
			return "market/myQna/myQnaDetail";
		}
		/*
		 * // 문의 상세보기
		 * 
		 * @GetMapping("/myQnaDetail") public String getDetail(int my_qna_no, Model
		 * model) { My_qna my_qna = my_qnaService.select(my_qna_no);
		 * model.addAttribute("my_qna", my_qna);
		 * 
		 * return "market/notice/myQnaDetail"; }
		 */
		
		//수정
		@PostMapping("/myQnaUpdate")
		public ModelAndView update(My_qna my_qna) {
			my_qnaService.update(my_qna);
			ModelAndView mav = new ModelAndView("redirect:/myQnaDetail?my_qna_no="+my_qna.getMy_qna_no());
			return mav;
			
		}
		//삭제 요청 처리
		@GetMapping("/myQnaDelete")
		public String delete(int my_qna) {
			my_qnaService.delete(my_qna);
			
			return "redirect:/myQnaList";
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
