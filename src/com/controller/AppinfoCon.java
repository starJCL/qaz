package com.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FilenameUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import sun.security.action.PutAllAction;

import com.dao.AppInfomapper;
import com.pojo.AppInfo;

@Controller
@RequestMapping("/appinfo")
public class AppinfoCon {

	@Resource
	AppInfomapper dao;

	@RequestMapping("/list")
	public String getList(String name, Integer start, Map map, Integer a) {
		/*int q= new Integer("ss");*/
		
		if (a == null) {
			a = 2;

		}
		if (name == null) {
			name = "";
		}
		if (start == null) {
			start = 1;
		}
		int sumPage = dao.count("%" + name + "%") % 8 == 0 ? dao.count("%"
				+ name + "%") / 8 : dao.count("%" + name + "%") / 8 + 1;
		if (start == 0) {
			start = 1;
		} else if (start >= sumPage) {
			start = sumPage;
		}
		List<AppInfo> list = dao.list("%" + name + "%", (start - 1) * 8, a);
		
		int begin = 1;
		int end = 5;
		map.put("name", name);
		map.put("begin", begin);
		map.put("end", end);
		map.put("sumPage", sumPage);
		map.put("index", start);
		map.put("list", list);
		map.put("b", a);
		return "list";
	}

	/* 可以回调 redirect: */

	@RequestMapping("update")
	public String update(AppInfo appInfo, int index) {
		dao.up(appInfo);
		return "redirect:list?start=" + index;
	}

	/* 防止暴露id */
	@RequestMapping("del/asd{id}712393")
	public String del(@PathVariable("id") Integer id, int index) {
		System.out.println(index);
		dao.del(id);
		return "redirect:../list?start=" + index;
	}

	@RequestMapping(value = ("insert"), method = RequestMethod.POST)
	public String ins(@RequestParam("f1") MultipartFile file,
			@RequestParam("f2") MultipartFile file1, AppInfo appInfo,
			HttpServletRequest request) throws IllegalStateException,
			IOException {
		
		
		String path = request.getSession().getServletContext()
				.getRealPath("static" + File.separator + "img");
		// 每次使用uuid 都是一个从新的32位的当前时间
		String newName = "1";
		String newName1 = "1";
		System.out.println(file.getOriginalFilename()+"文件1");
		System.out.println(file1.getOriginalFilename()+"文件2");
		System.out.println(file1.getOriginalFilename()==null);
		System.out.println(file1.getOriginalFilename().equals(""));
		if (!(file.getOriginalFilename().equals(""))) {
			
			newName = UUID.randomUUID().toString();
			File f1 = new File(path + "/" + newName + "."+ FilenameUtils.getExtension(file.getOriginalFilename()));
			if (!f1.exists()) {
				f1.mkdirs();
			}
			file.transferTo(f1);
		}
		if (!(file1.getOriginalFilename().equals(""))) {
			newName1 = UUID.randomUUID().toString();
			File f2 = new File(path + "/" + newName1+ "." + FilenameUtils.getExtension(file1.getOriginalFilename()));
			if (!f2.exists()) {
				f2.mkdirs();
			}
			file1.transferTo(f2);
		}

	
		
		

	
		
		System.out.println(path);
		appInfo.setLogoPicPath(newName + ".jpg");
		appInfo.setLogoLocPath(newName1 + ".jpg");

		dao.ins(appInfo);
		return "redirect:list";
	}

	@RequestMapping("getList")
	public String getList(int id, int index, Map map) {
		AppInfo list = dao.getList(id);
		map.put("list", list);
		map.put("index", index);
		return "update";
	}

}
