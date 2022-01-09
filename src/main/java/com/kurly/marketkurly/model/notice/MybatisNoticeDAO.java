package com.kurly.marketkurly.model.notice;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kurly.marketkurly.domain.Notice;
import com.kurly.marketkurly.exception.NoticeException;

@Repository
public class MybatisNoticeDAO implements NoticeDAO{
 
	@Autowired
	private SqlSessionTemplate sessionTemplate;
	
	@Override
	public List selectAll() {
		return sessionTemplate.selectList("Notice.selectAll");
	}

	@Override
	public Notice select(int notice_no) {
		return sessionTemplate.selectOne("Notice.select", notice_no);
	}

	@Override
	public void insert(Notice notice) throws NoticeException{
		int result = sessionTemplate.insert("Notice.insert", notice);
		if(result==0) {
			throw new NoticeException("공지사항 등록 실패");
		}
	}

	@Override
	public void update(Notice notice)  throws NoticeException{
		int result = sessionTemplate.update("Notice.update", notice);
		if(result==0) {
			throw new NoticeException("공지사항 수정 실패");
		}
	}

	@Override
	public void delete(int notice_no)  throws NoticeException{
		int result = sessionTemplate.delete("Notice.delete", notice_no);
		if(result==0) {
			throw new NoticeException("공지사항  삭제 실패");
		}
	}

}
