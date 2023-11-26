package com.itwillbs.soneson.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwillbs.soneson.mapper.ProjectMapper;
import com.itwillbs.soneson.vo.ProjectVO;

@Service
public class ProjectService {
	
	@Autowired
	private ProjectMapper mapper;
	
	//작성 중인 프젝 확인
	public ProjectVO selectIdProj(String sId) {
		return mapper.selectIdProj(sId);
	}
	
	//기본정보 insert
	public int insertStartProj(Map<String, Object> map) {
		return mapper.insertStartProj(map);
	}


	
	

	

}