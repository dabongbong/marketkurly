package com.kurly.marketkurly.model.order;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.kurly.marketkurly.domain.OrderSummary;

public class MybatisOrderSummaryDAO implements OrderSummaryDAO{

	@Autowired
	private SqlSessionTemplate sessionTemplate;
	
	@Override
	public List selectAll() {
		return sessionTemplate.selectList("Order_summary.selectAll");
	}

	@Override
	public OrderSummary select(int order_summary_id) {
		return sessionTemplate.selectOne("Order_summary.select", order_summary_id);
	}

	@Override
	public void insert(OrderSummary orderSummary) {
	}

	@Override
	public void delete(int order_summary_id) {
	}

	@Override
	public List selectDetailAll() {
		return null;
	}

}
