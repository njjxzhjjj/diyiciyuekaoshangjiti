package com.hp.dao;

import java.util.ArrayList;

import com.hp.entity.T_business;


//接口
public interface T_businessDao {
//添加
	int insert(T_business t_business);
//全查
	ArrayList<T_business> selectAll();

	//删除
		int delete(int bId);
		
}
