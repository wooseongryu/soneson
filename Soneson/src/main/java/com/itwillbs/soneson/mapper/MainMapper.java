package com.itwillbs.soneson.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.itwillbs.soneson.vo.ProjectVO;

@Mapper
public interface MainMapper {

	List<Map<String, Object>> getTabList();
	List<Map<String, Object>> getCategoryList();
	
}
