package com.kurly.marketkurly.model.order;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MybatisOrderDetailDAO implements OrderDetailDAO{

	@Autowired
	private SqlSessionTemplate sessionTemplate;
	
	@Override
	public List selectDetailAll() {
		List list = sessionTemplate.selectList("OrderDetail.selectDetailAll");
		System.out.println("내가 불러온 detailList는 " + list);
		return list;
	}

	@Override
	public void insertDetail(int order_detail_id) {
	}

}
