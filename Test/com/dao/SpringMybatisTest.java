/*package com.dao;

import java.util.List;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.biz.AppinfoBiz;
import com.pojo.AppInfo;

public class SpringMybatisTest {
	@Test
	public void test() {
		ApplicationContext context = new ClassPathXmlApplicationContext(
				"SpringMybatisConfig.xml");
		AppInfomapper bean = context.getBean(AppInfomapper.class);
		List<AppInfo> list = bean.list();

		AppinfoBiz biz = context.getBean(AppinfoBiz.class);
		biz.getlist();
		System.out.println("-----------------");
		for (AppInfo appInfo : list) {
			System.out.println(appInfo.getSoftwareName() + "--aaa");

		}

	}
	
	@Test
	public void test1() {
		ApplicationContext context = new ClassPathXmlApplicationContext(
				"SpringMybatisConfig.xml");
		AppInfomapper dao = context.getBean(AppInfomapper.class);
		int up = dao.up();
		System.out.println(up);

	}
}
*/