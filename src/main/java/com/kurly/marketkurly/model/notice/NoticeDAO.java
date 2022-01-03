package com.kurly.marketkurly.model.notice;

import java.util.List;

import com.kurly.marketkurly.domain.Notice;

public interface NoticeDAO {

	public List selectAll(); 
	public Notice select(int notice_no); 
	 
	public void insert(Notice notice);
	public void update(Notice notice);
	public void delete(int notice_no);
}