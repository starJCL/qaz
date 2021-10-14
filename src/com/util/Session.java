package com.util;

import java.io.IOException;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class Session {
	/**
	 * ��ȡsession����
	 * 
	 * @param path
	 *            �����ļ�
	 * @return Session ����
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
	 * ��ȡsession����
	 * 
	 * @return session ����
	 * @throws IOException
	 */
	public static SqlSession getSession() throws IOException {

		SqlSessionFactory sf = new SqlSessionFactoryBuilder().build(Resources
				.getResourceAsReader("Mybatisconfig.xml"));
		session = sf.openSession();
		return session;
	}

	/**
	 * �ر���Դ
	 * 
	 * @param statr
	 *            ����ֵ�ж��Ƿ��ύ����
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
