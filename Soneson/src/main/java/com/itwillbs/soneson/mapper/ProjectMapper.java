package com.itwillbs.soneson.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.itwillbs.soneson.vo.ProjectVO;

@Mapper
public interface ProjectMapper {

	List<ProjectVO> selectProjectList();

	int insertStartProj(Map<String, Object> map);

	ProjectVO selectIdProj(String sId);

	
}
