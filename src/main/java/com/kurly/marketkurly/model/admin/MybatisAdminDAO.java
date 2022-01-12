package com.kurly.marketkurly.model.admin;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kurly.marketkurly.domain.Admin;
import com.kurly.marketkurly.exception.AdminException;


@Repository
public class MybatisAdminDAO implements AdminDAO{
	
	@Autowired
	private SqlSessionTemplate sessionTemplate;
	
	
	@Override
	public List selectAll() {
		return sessionTemplate.selectList("Admin.selectAll");
	}

	@Override
	public Admin select(Admin admin) throws AdminException{
		Admin result = sessionTemplate.selectOne("Admin.select", admin);
		if(result ==null) {
			throw new AdminException("관리자 정보가 올바르지 않습니다");
		}
		return result;
	}
	
	@Override
	public Admin selectAdmin(Admin admin) {
		return sessionTemplate.selectOne("Admin.selectAdmin",admin);
	}
	

	@Override
	public void insert(Admin admin) throws AdminException{
		int result=sessionTemplate.insert("Admin.insert", admin);
		if(result==0) {
			throw new AdminException("관리자 등록실패");
		}
	}

	@Override
	public void update(Admin admin)  throws AdminException{
		int result=sessionTemplate.update("Admin.update", admin);
		if(result==0) {
			throw new AdminException("관리자 수정실패");
		}
	}

	@Override
	public void delete(int admin_id)  throws AdminException{
		int result=sessionTemplate.delete("Admin.delete", admin_id);
		if(result==0) {
			throw new AdminException("관리자 삭제실패");
		}
	}

	
}