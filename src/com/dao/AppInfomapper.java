package com.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.pojo.AppInfo;

public interface AppInfomapper {

	/* 查询数据 */
	public List<AppInfo> list(@Param("name") String name,
			@Param("start") int start, @Param("a") int a);

	/* 查询总条数 */
	public int count(@Param("name") String name);

	/* 修改 */
	public int up(AppInfo appInfo);

	/* 删除 */
	public int del(@Param("id") int id);

	/* 添加 */
	public int ins(AppInfo appInfo);

	/* 根据id查询内容 */
	public AppInfo getList(@Param("id") int id);

	/* 删除多条数据 */
	public int delAll(List<Integer> list);
}
