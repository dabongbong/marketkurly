package com.kurly.marketkurly.model.paymethod;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kurly.marketkurly.domain.PayMethod;

@Service
public class PayMethodServiceImpl implements PayMethodService{

	@Autowired
	private PayMethodDAO paymethodDAO;
	
	@Override
	public List selectAll() {
		return paymethodDAO.selectAll();
	}

	@Override
	public PayMethod select(int paymethod_id) {
		return paymethodDAO.select(paymethod_id);
	}

}
