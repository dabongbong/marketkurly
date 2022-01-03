package com.kurly.marketkurly.model.notice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
 
import com.kurly.marketkurly.domain.Notice;
import com.kurly.marketkurly.exception.NoticeException;

@Service
public class NoticeServiceImpl implements NoticeService{

	@Autowired
	private NoticeDAO noticeDAO;
	
	@Override
	public List selectAll() {
		return noticeDAO.selectAll();
	}

	@Override
	public Notice select(int notice_no) {
		return noticeDAO.select(notice_no);
	}

	@Override
	public void insert(Notice notice) throws NoticeException{
		noticeDAO.insert(notice);
	}

	@Override
	public void update(Notice notice) throws NoticeException{
		noticeDAO.update(notice);
	}

	@Override
	public void delete(int notice_no) throws NoticeException{
		noticeDAO.delete(notice_no);
	}

}
