package com.kurly.marketkurly.model.faq;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kurly.marketkurly.domain.Faq;
import com.kurly.marketkurly.exception.FaqException;

@Service
public class FaqServiceImpl implements FaqService{

	@Autowired
	private FaqDAO faqDAO;
	
	@Override
	public List selectAll() {
		return faqDAO.selectAll();
	}

	@Override
	public Faq select(int faq_no) {
		return faqDAO.select(faq_no);
	}

	@Override
	public void insert(Faq faq) throws FaqException{
		faqDAO.insert(faq);
	}

	@Override
	public void update(Faq faq) throws FaqException{
		faqDAO.update(faq);
	}

	@Override
	public void delete(int faq_no) throws FaqException{
		faqDAO.delete(faq_no);
	}

}
