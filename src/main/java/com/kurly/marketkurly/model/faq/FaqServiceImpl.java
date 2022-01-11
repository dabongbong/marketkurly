package com.kurly.marketkurly.model.faq;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kurly.marketkurly.domain.Faq;
import com.kurly.marketkurly.exception.FaqException;

@Service
public class FaqServiceImpl implements FaqService{

	@Autowired
	private FaqDAO fnqDAO;
	
	@Override
	public List selectAll() {
		return fnqDAO.selectAll();
	}

	@Override
	public Faq select(int fnq_no) {
		return fnqDAO.select(fnq_no);
	}

	@Override
	public void insert(Faq fnq) throws FaqException{
		fnqDAO.insert(fnq);
	}

	@Override
	public void update(Faq fnq) throws FaqException{
		fnqDAO.update(fnq);
	}

	@Override
	public void delete(int fnq_no) throws FaqException{
		fnqDAO.delete(fnq_no);
	}

}
