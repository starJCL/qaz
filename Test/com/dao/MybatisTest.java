/*package com.dao;

import java.io.IOException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.junit.Test;

import com.pojo.AppInfo;
import com.util.Session;

*//**
 * ����mybatis �Ƿ�����
 * 
 * @author star
 * 
 *//*

public class MybatisTest {
	@Test
	public void test() throws IOException {
		SqlSession session = Session.getSession();
		List<AppInfo> list = session.getMapper(AppInfomapper.class).list();
		for (AppInfo appInfo : list) {
			System.out.println("����id��" + appInfo.getId() + "<-->�������:"
					+ appInfo.getSoftwareName());
		}
	}
}
*/