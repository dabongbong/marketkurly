package com.kurly.marketkurly.controller.admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.kurly.marketkurly.domain.Subcategory;
import com.kurly.marketkurly.model.subcategory.SubcategoryService;

@RestController
public class RestCategoryController {

	@Autowired
	private SubcategoryService subcategoryService;
	
	// 목록처리
	@GetMapping("/rest/subcategory")
	public List getList(HttpServletRequest request) {
		// 게시물 목록을 json으로 반환 (컨텍스트에 있는 컨버터가 대신 해줌 !!)
		List<Subcategory> subcategoryList = subcategoryService.selectAll();
		return subcategoryList;
	
	}

}
