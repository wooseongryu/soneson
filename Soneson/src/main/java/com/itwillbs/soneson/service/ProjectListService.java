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

	public List<Map<String, Object>> selectProjectList() {
		return mapper.getProjectList();
	}

	public Map<String, Object> selectProject(int project_code) {
		return mapper.getProject(project_code);
	}

}
