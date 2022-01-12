package com.kurly.marketkurly.controller.admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kurly.marketkurly.model.paymethod.PayMethodService;

@Controller
public class PayMethodController {

	@Autowired
	private PayMethodService paymethodService;

	@GetMapping("paymethod/list")
	public ModelAndView getList(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("admin/paymethod/list");
		List paymethodList = paymethodService.selectAll();
		
		mav.addObject("paymethodList",paymethodList);
		return mav;
	}
	
}
