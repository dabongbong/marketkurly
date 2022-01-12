package com.kurly.marketkurly.model.customer;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kurly.marketkurly.domain.My_qna;
import com.kurly.marketkurly.exception.My_qnaException;

@Repository
public class MybatisMy_qnaDAO implements My_qnaDAO{

	@Autowired
	private SqlSessionTemplate sessionTemplate;
	
	@Override
	public List selectAll() {
		List list = sessionTemplate.selectList("My_qna.selectAll");
		return list;
	}

	@Override
	public My_qna select(int my_qna_no) {
		return sessionTemplate.selectOne("My_qna.select", my_qna_no);
	}

	@Override
	public void insert(My_qna my_qna) throws My_qnaException{
		int result = sessionTemplate.insert("My_qna.insert", my_qna);
		if(result==0) {
			throw new My_qnaException("문의 등록 실패");
		}
	}

	@Override
	public void update(My_qna my_qna) throws My_qnaException{
		int result = sessionTemplate.update("My_qna.update", my_qna);
		if(result==0) {
			throw new My_qnaException("문의 수정 실패");
		}
	}

	@Override
	public void delete(int my_qna_no) throws My_qnaException{
		int result = sessionTemplate.delete("My_qna.delete", my_qna_no);
		if(result==0) {
			throw new My_qnaException("문의 삭제 실패");
		}
	}

}
