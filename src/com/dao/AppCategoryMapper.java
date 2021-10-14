package com.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.pojo.AppCategory;

public interface AppCategoryMapper {
	public List<AppCategory> list(@Param("pid")int id );

}
