package com.kurly.marketkurly.model.faq;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kurly.marketkurly.domain.Faq;
import com.kurly.marketkurly.exception.FaqException;

@Repository
public class MybatisFaqDAO implements FaqDAO{

	@Autowired
	private SqlSessionTemplate sessionTemplate;
	
	@Override
	public List selectAll() {
		return sessionTemplate.selectList("Faq.selectAll");
	}

	@Override
	public Faq select(int faq_no) {
		return sessionTemplate.selectOne("Faq.select", faq_no);
	}

	@Override
	public void insert(Faq faq) throws FaqException{
		int result = sessionTemplate.insert("Faq.insert", faq);
		if(result == 0) {
			throw new FaqException("FAQ 등록 실패");
		}
	}

	@Override
	public void update(Faq faq) throws FaqException{
		int result = sessionTemplate.update("Faq.update", faq);
		if(result == 0) {
			throw new FaqException("FAQ 수정 실패");
		}
	}

	@Override
	public void delete(int faq_no) throws FaqException{
		int result = sessionTemplate.delete("Faq.delete", faq_no);
		if(result == 0) {
			throw new FaqException("FAQ 삭제 실패"); 
		}
	}

}
