package com.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONArray;
import com.dao.AppCategoryMapper;
import com.dao.AppInfomapper;

@Controller
@RequestMapping("/cate")
public class Appcatgroy {
	@Resource
	AppCategoryMapper dao;
	@Resource
	AppInfomapper dao1;

	@RequestMapping(value = "/json", method = RequestMethod.GET, produces = "application/json; charset=utf-8")
	@ResponseBody
	public Object list(int pid) {
		int i = new Integer("a");
		System.out.println(pid);
		return JSONArray.toJSONString(dao.list(pid));
	}
	
	

	@RequestMapping(value = "/del", method = RequestMethod.GET, produces = "application/json; charset=utf-8")
	@ResponseBody
	public Object del(String d) {
		List<Integer> list = new ArrayList<Integer>();
		for (String i : d.split(",")) {
			if(i!=null&&i!=""){
				list.add(new Integer(i));
			}
		}
		
		return JSONArray.toJSONString(dao1.delAll(list));
	}

}
