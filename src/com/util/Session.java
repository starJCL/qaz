package com.util;

import java.io.IOException;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class Session {
	/**
	 * 获取session对象
	 * 
	 * @param path
	 *            配置文件
	 * @return Session 对象
	 * @throws IOException
	 */
	static SqlSession session;

	public static SqlSession getSession(String path) throws IOException {

		SqlSessionFactory sf = new SqlSessionFactoryBuilder().build(Resources
				.getResourceAsReader(path));
		session = sf.openSession();
		return session;
	}

	/**
	 * 获取session对象
	 * 
	 * @return session 对象
	 * @throws IOException
	 */
	public static SqlSession getSession() throws IOException {

		SqlSessionFactory sf = new SqlSessionFactoryBuilder().build(Resources
				.getResourceAsReader("Mybatisconfig.xml"));
		session = sf.openSession();
		return session;
	}

	/**
	 * 关闭资源
	 * 
	 * @param statr
	 *            根据值判断是否提交事务
	 */
	public static void getClose(String statr) {
		if (session != null) {
			if (statr == "c") {
				session.commit();
			}
			session.close();

		}

	}

}
