package com.kurly.marketkurly.model.faq;

import java.util.List;

import com.kurly.marketkurly.domain.Faq;

public interface FaqService {

	public List selectAll();
	public Faq select(int fnq_no);
	
	public void insert(Faq fnq);
	public void update(Faq fnq);
	public void delete(int fnq_no);
}
