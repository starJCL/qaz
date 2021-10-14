package com.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.pojo.AppInfo;

public interface AppInfomapper {

	/* ��ѯ���� */
	public List<AppInfo> list(@Param("name") String name,
			@Param("start") int start, @Param("a") int a);

	/* ��ѯ������ */
	public int count(@Param("name") String name);

	/* �޸� */
	public int up(AppInfo appInfo);

	/* ɾ�� */
	public int del(@Param("id") int id);

	/* ��� */
	public int ins(AppInfo appInfo);

	/* ����id��ѯ���� */
	public AppInfo getList(@Param("id") int id);

	/* ɾ���������� */
	public int delAll(List<Integer> list);
}
