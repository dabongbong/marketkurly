package com.kurly.marketkurly.model.customer;

import java.util.List;

import com.kurly.marketkurly.domain.My_qna;

public interface My_qnaDAO {

	public List selectAll();
	public My_qna select(int my_qna_no);
	
	public void insert(My_qna my_qna);
	public void update(My_qna my_qna);
	public void delete(int my_qna_no);
}
