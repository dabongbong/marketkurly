package com.kurly.marketkurly.controller.admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.kurly.marketkurly.domain.Subcategory;
import com.kurly.marketkurly.model.subcategory.SubcategoryService;

@RestController
public class RestCategoryController {

	@Autowired
	private SubcategoryService subcategoryService;
	
	// 서브카테고리 목록처리
//	@GetMapping("/rest/subcategory/{category_id}")
//	public List getList(@PathVariable(name="category_id") int category_id) {
//		List<Subcategory> subcategoryList = subcategoryService.selectAllByCategoryId(category_id);
//		return subcategoryList;

		@GetMapping("/rest/subcategory")
		public List getList(HttpServletRequest request,int category_id) {
			List<Subcategory> subcategoryList = subcategoryService.selectAllByCategoryId(category_id);
			return subcategoryList;
	}

}
