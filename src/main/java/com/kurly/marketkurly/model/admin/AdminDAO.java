package com.kurly.marketkurly.model.admin;

import java.util.List;

import com.kurly.marketkurly.domain.Admin;

public interface AdminDAO {
	public List selectAll(); //관리자 모든 목록
	public Admin select(Admin admin);
	public Admin selectAdmin(Admin admin);
	public void insert(Admin admin);
	public void update(Admin admin);
	public void delete(int admin_id);
}
