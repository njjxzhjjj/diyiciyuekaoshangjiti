package com.hp.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hp.dao.T_businessDao;
import com.hp.dao.T_detailDao;
import com.hp.entity.T_detail;
@Service
public class T_detailServiceImpl implements T_detailService{
	//依赖注入
	@Autowired
	private T_detailDao t_detailDao;
	@Override
	public int add(T_detail t_detail) {
		// TODO Auto-generated method stub
		int i=t_detailDao.insert(t_detail);
		return i;
	}

}
