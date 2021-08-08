package com.hp.service;

import java.util.ArrayList;

import com.hp.entity.T_business;


//接口
public interface T_businessService {
//添加
	int add(T_business t_business);
//全查
	ArrayList<T_business> queryAll();


	//删除
		int delete1(int bId);
		
		
}
