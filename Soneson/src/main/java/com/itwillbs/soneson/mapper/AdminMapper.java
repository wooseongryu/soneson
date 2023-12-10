package com.itwillbs.soneson.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.web.bind.annotation.RequestParam;

import com.itwillbs.soneson.vo.EventCateVO;
import com.itwillbs.soneson.vo.EventVO;
import com.itwillbs.soneson.vo.MainTabVO;
import com.itwillbs.soneson.vo.MyQuestionVO;
import com.itwillbs.soneson.vo.QnaCateVO;
import com.itwillbs.soneson.vo.QnaVO;
import com.itwillbs.soneson.vo.UserVO;



@Mapper
public interface AdminMapper {
	
	/*====================================================================
	 * 관리자 메인
	 * ===================================================================
	 * */

	// 가입 회원 수 조회
	int countJoinUser();
	
	// 탈퇴 회원 수 조회
	int countDeleteUser();
	
	// 프로젝트 달성률 그래프
	List<Map<String, Object>> selectProjectMyList();

	// 주간 펀딩 금액
	List<Map<Object, Object>> costAmount();

	// 진행중인 프로젝트 수
	List<Map<Object, Object>> projectCount();
	
	// 파이차트 
	List<Map<Object, Object>> selectMyPieChart();

	// 에어리어차트 
	List<Map<Object, Object>> selectMyBarChart();
	
	/*====================================================================
	 * 관리자 회원 정보 관리 페이지
	 * ===================================================================
	 * */
	
	// 관리자 권한 부여/해제
	int updateUserAuthorize(UserVO user);
	
	
	
	/*==============================================================
	 * 게시판
	 * =============================================================
	 * */

	int insertEvent(EventVO event);

	List<EventVO> selectEvent(String event_idx);

	int updateEvent(EventVO event);

	int deleteEvent(String event_idx);
	
	
	/*==============================================================
	 * 게시판 카테고리
	 * =============================================================
	 * */
	
	int insertEventCategory(String eventCate_subject);

	List<EventCateVO> selectEventCategory();

	int deleteEventCategory(String eventCate_subject);
	
	/*==============================================================
	 * 자주 묻는 질문
	 * =============================================================
	 * */

	int insertQna(QnaVO qna);
	
	List<QnaVO> selectQna(String qna_idx);
	
	int updateQna(QnaVO qna);
	
	int deleteQna(String qna_idx);
	
	/*==============================================================
	 * 자주 묻는 질문 카테고리
	 * =============================================================
	 * */
	
	int insertQnaCategory(String qnaCate_subject);

	List<QnaCateVO> selectQnaCategory();

	int deleteQnaCategory(String qnaCate_subject);
	
	
	
	/*==============================================================
	 * 프로젝트 관리
	 * =============================================================
	 * */
	
	// 프로젝트 전체 조회
	List<Map<String, Object>> selectProjectList();

	// 진행전 프로젝트 조회
	List<Map<String, Object>> selectProjectBefore();

	// 진행중 프로젝트 조회
	List<Map<String, Object>> selectProjectOngoing();

	// 마감된 프로젝트 조회
	List<Map<String, Object>> selectProjectAfter();

	
	// 메인 탭 조회
	List<MainTabVO> selectMainTab();

	// 메인 탭 추가
	int insertMainTab(Map<String, String> map);

	// 메인 탭 삭제
	int deleteMainTab(String tab_Kname);

	
	/*====================================================================
	 * 1:1 문의
	 * ===================================================================
	 * */
	
	List<MyQuestionVO> selectOTO(String myQuestion_num);
	
	int updateOTOAnswer(MyQuestionVO myQuestion);

	int updateAnswer(Map<String, String> map);

	/*====================================================================
	 * 프로젝트 심사
	 * ===================================================================
	 * */
	// 프로젝트 심사대기중
	List<Map<String, Object>> selectExamWaitProjectList();

	// 프로젝트 반려중 
	List<Map<String, Object>> selectRejectProjectList();

	// 프로젝트 승인
	int updateProjectApprove(String project_code);

	// 프로젝트 반려
	int updateProjectReject(String project_code);



	
	
}
