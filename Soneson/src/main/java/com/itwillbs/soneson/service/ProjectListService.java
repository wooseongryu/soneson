package com.itwillbs.soneson.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwillbs.soneson.mapper.ProjectMapper;
import com.itwillbs.soneson.vo.ProjectVO;

@Service
public class ProjectListService {
	
	@Autowired
	private ProjectMapper mapper;

	public List<ProjectVO> getProjectList() {
		return mapper.selectProjectList();
	}

	// 프로젝트 리스트 가져오기 (성공)
	public List<Map<String, Object>> selectProjectList() {
		return mapper.getProjectList();
	}


	public Map<String, Object> selectProject(int project_code) {
		return mapper.getProject(project_code);
	}

	// 아래는 프로젝트 탭 별로 시도
	
	public List<Map<String, Object>> getTabProjectList(String listType) {
		return mapper.getTabProjectList(listType);
	}

	public List<Map<String, Object>> getTabList() {
		return mapper.getTabList();
	}

}
