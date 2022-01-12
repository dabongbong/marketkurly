package com.kurly.marketkurly.model.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kurly.marketkurly.domain.Admin;
import com.kurly.marketkurly.exception.AdminException;


@Service
public class AdminServiceImpl implements AdminService{

	@Autowired
	private AdminDAO adminDAO;
	
	@Override
	public List selectAll() {
		List<Admin> list = adminDAO.selectAll();
		return list;
	}

	@Override
	public Admin select(Admin admin) throws AdminException{
		return adminDAO.select(admin);
	}
	
	@Override
	public Admin selectAdmin(Admin admin)  throws AdminException{
		return adminDAO.selectAdmin(admin);
	}
	
	@Override
	public void insert(Admin admin) throws AdminException{
		adminDAO.insert(admin);
	}

	@Override
	public void update(Admin admin) throws AdminException{
		adminDAO.update(admin);
	}

	@Override
	public void delete(int admin_id) throws AdminException {
		adminDAO.delete(admin_id);
	}

	
}