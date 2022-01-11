package com.kurly.marketkurly.model.faq;

import java.util.List;

import com.kurly.marketkurly.domain.Faq;

public interface FaqService {

	public List selectAll();
	public Faq select(int faq_no);
	
	public void insert(Faq faq);
	public void update(Faq faq);
	public void delete(int faq_no);
}
