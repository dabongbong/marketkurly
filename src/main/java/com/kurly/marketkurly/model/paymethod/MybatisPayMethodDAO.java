package com.kurly.marketkurly.model.paymethod;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kurly.marketkurly.domain.PayMethod;

@Repository
public class MybatisPayMethodDAO implements PayMethodDAO{

	@Autowired
	private SqlSessionTemplate sessionTemplate;
	
	
	@Override
	public List selectAll() {
		return sessionTemplate.selectList("PayMethod.selectAll");
	}

	@Override
	public PayMethod select(int paymethod_id) {
		return sessionTemplate.selectOne("PayMethod.select", paymethod_id);
	}

}
