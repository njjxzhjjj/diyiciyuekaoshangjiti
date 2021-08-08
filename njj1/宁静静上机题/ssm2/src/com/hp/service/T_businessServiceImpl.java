package com.hp.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;



import com.hp.dao.T_businessDao;
import com.hp.entity.T_business;
@Service
public class T_businessServiceImpl implements T_businessService{
	//依赖注入
	@Autowired
	private T_businessDao t_businessDao;
	@Override
	public int add(T_business t_business) {
		// TODO Auto-generated method stub
		int i=t_businessDao.insert(t_business);
		return i;
	}

	@Override
	public ArrayList<T_business> queryAll() {
		// TODO Auto-generated method stub
		ArrayList<T_business> tbs=t_businessDao.selectAll();
		return tbs;
	}

	@Override
	public int delete1(int bId) {
		// TODO Auto-generated method stub
		int i=t_businessDao.delete(bId);
		return i;
	}

}
