package com.itwillbs.soneson.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.itwillbs.soneson.vo.ProjectVO;

@Mapper
public interface ProjectMapper {

	List<ProjectVO> selectProjectList();
	
}
