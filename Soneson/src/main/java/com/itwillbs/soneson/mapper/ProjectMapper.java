package com.itwillbs.soneson.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.itwillbs.soneson.vo.ProjectVO;

@Mapper
public interface ProjectMapper {
	
	//새 프로젝트 insert
	int insertStartProj(Map<String, String> map);
	
	//startForm select
	ProjectVO selectIdProj(String sId);
	
	//이어쓰기버튼
	ProjectVO selectProject(Map<String, Object> map);
	
	//저장버튼
	int updateProject(ProjectVO pro);

	ProjectVO selectFileName(int pro_code);

	ProjectVO selectNewProject(Map<String, String> map);
	
	//핀테크 토큰
	Map<String, String> selectToken(String sId);
	
	//------최종등록------
	int insertProject(int pro_code);
	
	int insertCreatorAccount(ProjectVO pro);
	
	//임시테이블 삭제
	int deleteProject(int pro_code);
	
	//작성중인 프젝 갯수
	int selectProCount(String sId);
	// =========== 아래는 프로젝트 리스트, 성윤 =============
	
	List<ProjectVO> selectProjectList();
	
	List<Map<String, Object>> getProjectList();

	Map<String, Object> getProject(int project_code);

	List<Map<String, Object>> getTabProjectList(String listType);

	List<Map<String, Object>> getTabList();

	List<Map<String, Object>> getTabProjectList(Map<String, String> map);

	List<Map<String, Object>> getSearchList(Map<String, String> map);
	
	List<Map<String, Object>> getRewardList(int project_code);

	List<Map<String, Object>> getItemList(int project_code);

	List<Map<String, Object>> getSearchClosedList(Map<String, String> map);








	
}
