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
	public int insertStartProj(Map<String, String> map) {
		return mapper.insertStartProj(map);
	}

	//이어쓰기 버튼
	public ProjectVO selectProject(Map<String, Object> map) {
		return mapper.selectProject(map);
	}
	
	
	//저장버튼
	public int updateProject(ProjectVO pro) {
		return mapper.updateProject(pro);
	}

	public ProjectVO selectFileName(int pro_code) {
		return mapper.selectFileName(pro_code);
	}

	public ProjectVO selectNewProject(Map<String, String> map) {
		return mapper.selectNewProject(map);
	}
	
	
	//핀테크 token조회
	public Map<String, String> selectToken(String sId) {
		return mapper.selectToken(sId);
	}

	//최종등록
	public int insertProject(int pro_code) {
		return mapper.insertProject(pro_code);
	}
	
	//임시테이블에서 삭제
	public int deleteProject(int pro_code) {
		return mapper.deleteProject(pro_code);
	}
	


	
	

	

}
