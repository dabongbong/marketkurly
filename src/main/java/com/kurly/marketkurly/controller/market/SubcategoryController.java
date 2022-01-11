package com.kurly.marketkurly.controller.market;

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
public class SubcategoryController {

	@Autowired
	private SubcategoryService subcategoryService;
	
		@GetMapping("/subcategory")
		public List getList(int category_id) {
			List<Subcategory> subcategoryList = subcategoryService.selectAllByCategoryId(category_id);
			return subcategoryList;
	}

}
