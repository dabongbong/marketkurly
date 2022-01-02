package com.kurly.marketkurly.model.notice;

import java.util.List;

import com.kurly.marketkurly.domain.Notice;

public interface NoticeDAO {

	public List selectAll(); // 목록 가져오기~
	public Notice select(int notice_id); // 한건 조회하긔
	
	public void insert(Notice notice);
	public void update(Notice notice);
	public void delete(int notice_id);
}