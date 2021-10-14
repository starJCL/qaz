/*package com.dao;

import java.sql.Date;
import java.util.Calendar;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.pojo.AppCategory;

public class TestAppCategory {
	@Test
	public void test1() {
		ApplicationContext context = new ClassPathXmlApplicationContext(
				"SpringMybatisConfig.xml");
		AppCategoryMapper categpry = context.getBean(AppCategoryMapper.class);
		for (AppCategory ca : categpry.list()) {
			System.out.println(ca.getCategoryName());
		}

	}

	@Test
	public void test2() {
		ApplicationContext context = new ClassPathXmlApplicationContext(
				"SpringMybatisConfig.xml");
		AppCategoryMapper categpry = context.getBean(AppCategoryMapper.class);
		AppCategory appCategory = new AppCategory();
		appCategory.setCategoryName("hahah");
		appCategory.setId(52);

		appCategory.setModifyDate(Date.valueOf("2012-04-22"));
		categpry.ins(appCategory);

	}

	@Test
	public void test3() {
		ApplicationContext context = new ClassPathXmlApplicationContext(
				"SpringMybatisConfig.xml");
		AppCategoryMapper categpry = context.getBean(AppCategoryMapper.class);
		categpry.del(52);

	}

	@Test
	public void test4() {
		ApplicationContext context = new ClassPathXmlApplicationContext(
				"SpringMybatisConfig.xml");
		AppCategoryMapper categpry = context.getBean(AppCategoryMapper.class);
		categpry.up("qwe", 52);

	}

}
*/