package com.kurly.marketkurly.model.notice;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kurly.marketkurly.domain.Notice;

@Repository
public class MybatisNoticeDAO implements NoticeDAO{

	@Autowired
	private SqlSessionTemplate sessionTemplate;
	
	@Override
	public List selectAll() {
		return null;
	}

	@Override
	public Notice select(int notice_id) {
		return null;
	}

	@Override
	public void insert(Notice notice) {
	}

	@Override
	public void update(Notice notice) {
	}

	@Override
	public void delete(int notice_id) {
	}

}
