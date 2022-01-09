package com.kurly.marketkurly.model.customer;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kurly.marketkurly.domain.My_qna;
import com.kurly.marketkurly.exception.My_qnaException;

@Service
public class My_qnaServiceImpl implements My_qnaService{

	@Autowired
	private My_qnaDAO my_qnaDAO;
	
	@Override
	public List selectAll() {
		return my_qnaDAO.selectAll();
	}

	@Override
	public My_qna select(int my_qna_no) {
		return my_qnaDAO.select(my_qna_no);
	}

	@Override
	public void insert(My_qna my_qna) throws My_qnaException{
		my_qnaDAO.insert(my_qna);
	}

	@Override
	public void update(My_qna my_qna) throws My_qnaException{
		my_qnaDAO.update(my_qna);
	}

	@Override
	public void delete(int my_qna_no) throws My_qnaException{
		my_qnaDAO.delete(my_qna_no);
	}

}
