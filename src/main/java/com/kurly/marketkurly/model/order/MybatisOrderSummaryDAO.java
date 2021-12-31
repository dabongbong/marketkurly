package com.kurly.marketkurly.model.order;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.kurly.marketkurly.domain.Order_summary;

public class MybatisOrderSummaryDAO implements OrderSummaryDAO{

	@Autowired
	private SqlSessionTemplate sessionTemplate;
	
	@Override
	public List selectAll() {
		return sessionTemplate.selectList("Order.selectAll");
	}

	@Override
	public Order_summary select() {
		return null;
	}

}
