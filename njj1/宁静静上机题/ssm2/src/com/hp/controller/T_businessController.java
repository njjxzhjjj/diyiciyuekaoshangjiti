package com.hp.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hp.entity.T_business;
import com.hp.service.T_businessService;


@Controller
@RequestMapping("/tb")
public class T_businessController {
   @Autowired
	private T_businessService t_businessService;
   //全查
	@RequestMapping("/queryAll")
	public String queryAll(HttpSession session){
		ArrayList<T_business> t_business=t_businessService.queryAll();
		session.setAttribute("t_business",t_business);
		return "queryAll";

	}
	//添加
	@RequestMapping("/addAll")
	public String add(T_business t_business,HttpSession session){
		int i=t_businessService.add(t_business);
		if(i>0){
			System.out.println("添加成功");
			session.setAttribute("t_business", t_business);
			return "redirect:/tb/queryAll";
		}else{
		
			System.out.println("添加失败");
			return "index";
		}

	}
	//删除
	@RequestMapping("/deleteAll")
	public String deleteAll(Integer bId,HttpSession session){
		int i=t_businessService.delete1(bId);
		if(i>0){
			System.out.println("删除成功");
			return "redirect:/tb/queryAll";
		}else{
		
			System.out.println("删除失败");
			return "index";
		}
	}

}
