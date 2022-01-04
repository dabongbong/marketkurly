package com.kurly.marketkurly.model.paymethod;

import java.util.List;

import com.kurly.marketkurly.domain.PayMethod;

public interface PayMethodService {
	public List selectAll();
	public PayMethod select(int paymethod_id);
}
