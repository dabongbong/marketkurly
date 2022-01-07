package com.kurly.marketkurly.model.order;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kurly.marketkurly.domain.OrderSummary;
import com.kurly.marketkurly.exception.OrderException;

@Repository
public class MybatisOrderSummaryDAO implements OrderSummaryDAO {

	@Autowired
	private SqlSessionTemplate sessionTemplate;

	@Override
	public List selectAll() {
		List list = sessionTemplate.selectList("OrderSummary.selectAll");
		
//		System.out.println("summaryLis is "+list);
		
		return list;
	}

	@Override
	public OrderSummary select(int order_summary_id) {
		return sessionTemplate.selectOne("OrderSummary.select", order_summary_id);
	}

	// 고객(프론트) 단에서 요청
	@Override
	public void insert(OrderSummary orderSummary) throws OrderException{
		int result = sessionTemplate.insert("OrderSummary.insert", orderSummary);
		if(result==0) {
			throw new OrderException("주문 내역 주입 실패");
		}
	}

	// 3년이 지난 경우 삭제
	@Override
	public void delete(int order_summary_id) {
	}

	@Override
	public OrderSummary getDetail(int order_summary_id) {
		return sessionTemplate.selectOne("OrderDetail.selectAllByOrderSummaryId", order_summary_id);
	}

}
