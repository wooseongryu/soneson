package com.itwillbs.soneson.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.itwillbs.soneson.vo.ProjectVO;

@Mapper
public interface ProjectMapper {

	List<ProjectVO> selectProjectList();
	
	//새 프로젝트 insert
	int insertStartProj(Map<String, Object> map);
	
	//startForm select
	ProjectVO selectIdProj(String sId);
	
	//이어쓰기버튼
	ProjectVO selectProject(Map<String, String> map);
	
	//저장버튼
	int updateProject(ProjectVO pro);

	
}
