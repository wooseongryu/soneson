package com.itwillbs.soneson.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;

import com.itwillbs.soneson.mapper.AdminMapper;
import com.itwillbs.soneson.vo.EventCateVO;
import com.itwillbs.soneson.vo.EventVO;
import com.itwillbs.soneson.vo.MainTabVO;
import com.itwillbs.soneson.vo.MyQuestionVO;
import com.itwillbs.soneson.vo.ProjectVO;
import com.itwillbs.soneson.vo.QnaCateVO;
import com.itwillbs.soneson.vo.QnaVO;
import com.itwillbs.soneson.vo.UserVO;


@Service
public class AdminService {

	@Autowired
	private AdminMapper mapper;	
	
	/*====================================================================
	 * 관리자 메인
	 * ===================================================================
	 * */
	
	// 관리자 가입 회원 수 조회
	public int countJoinUser() {
		System.out.println("AdminService - countJoinUser()");
		return mapper.countJoinUser();
	}

	// 관리자 가입 회원 수 조회
	public int countDeleteUser() {
		System.out.println("AdminService - countDeleteUser()");
		return mapper.countDeleteUser();
	}

	// 프로젝트 주간 펀딩 금액
	public List<Map<Object, Object>> costAmount() {
		System.out.println("AdminService - costAmount()");
		return mapper.costAmount();
	}

	// 진행중인 프로젝트 수
	public List<Map<Object, Object>> projectCount() {
		System.out.println("AdminService - projectCount()");
		return mapper.projectCount();
	}
	
	// 프로젝트 달성률 그래프
	public List<Map<String, Object>> selectProjectMyList() {
		return mapper.selectProjectMyList();
	}
	
	// 파이차트
	public List<Map<Object, Object>> selectMyPieChart() {
		return mapper.selectMyPieChart();
	}

	// 바 차트
	public List<Map<Object, Object>> selectMyBarChart() {
		return mapper.selectMyBarChart();
	}
	
	
	
	/*====================================================================
	 * 관리자 회원 정보 관리 페이지
	 * ===================================================================
	 * */
	
	// 관리자 권한 부여/해제
	public int updateUserAuthorize(UserVO user) {
		System.out.println("AdminService - updateUserAuthorize()");
		return mapper.updateUserAuthorize(user);
	}
	
	
	/*==============================================================
	 * 게시판
	 * =============================================================
	 * */

	// 게시판 등록
	public int insertEvent(EventVO event) {
		System.out.println("AdminService - insertEvent()");
		return mapper.insertEvent(event);
	}

	// 게시판 조회
	// event_idx를 널스트링으로 전달 시 전체 질문 조회
	public List<EventVO> getEvent(String event_idx) {
		System.out.println("AdminService - selectEvent()");
		return mapper.selectEvent(event_idx);
	}

	// 게시판 수정
	public int updateEvent(EventVO event) {
		System.out.println("AdminService - updateEvent()");
		return mapper.updateEvent(event);
	}

	// 게시판 삭제
	public int deleteEvent(String event_idx) {
		System.out.println("AdminService - deleteEvent(event_idx)");
		return mapper.deleteEvent(event_idx);
	}
	
	
	//---------------------------------------------------------
	
	// 게시판 카테고리 등록
	public int insertEventCategory(String eventCate_subject) {
		System.out.println("AdminService - insertEventCategory()");
		return mapper.insertEventCategory(eventCate_subject);
	}

	// 게시판 카테고리 조회
	public List<EventCateVO> getEventCategory() {
		System.out.println("AdminService - getEventCategory()");
		return mapper.selectEventCategory();
	}

	// 게시판 카테고리 삭제
	public int deleteEventCategory(String eventCate_subject) {
		System.out.println("AdminService - deleteEventCategory()");
		return mapper.deleteEventCategory(eventCate_subject);
	}
	
	
	
	/*==============================================================
	 * 자주 묻는 질문
	 * =============================================================
	 * */

	// 자주묻는 질문 등록
	public int insertQna(QnaVO qna) {
		System.out.println("AdminService - insertQna()");
		return mapper.insertQna(qna);
	}

	// 자주묻는 질문 조회
	// qnaIdx를 널스트링으로 전달 시 전체 질문 조회
	public List<QnaVO> getQna(String qna_idx) {
		System.out.println("AdminService - getQna()");
		return mapper.selectQna(qna_idx);
	}
	
	// 자주묻는 질문 수정 
	public int updateQna(QnaVO qna) {
		System.out.println("AdminService - updateQna()");
		return mapper.updateQna(qna);
	}
	
	// 자주묻는 질문 삭제
	public int deleteQna(String qna_idx) {
		System.out.println("AdminService - deleteQna()");
		return mapper.deleteQna(qna_idx);
	}

	
	/*==============================================================
	 * 자주 묻는 질문 카테고리
	 * =============================================================
	 * */
	
	// 카테고리 등록
	public int insertQnaCategory(String qnaCate_subject) {
		System.out.println("AdminService - insertCategory()");
		return mapper.insertQnaCategory(qnaCate_subject);
	}

	// 카테고리 조회
	public List<QnaCateVO> getQnaCategory() {
		System.out.println("AdminService - getCategory()");
		return mapper.selectQnaCategory();
	}

	// 카테고리 삭제
	public int deleteQnaCategory(String qnaCate_subject) {
		System.out.println("AdminService - deleteCategory()");
		return mapper.deleteQnaCategory(qnaCate_subject);
	}

	/*==============================================================
	 * 프로젝트 관리
	 * =============================================================
	 * */
	
	// 프로젝트 전체 조회
	public List<Map<String, Object>> selectProjectList() {
		return mapper.selectProjectList();
	}

	// 진행전 프로젝트 조회
	public List<Map<String, Object>> selectProjectBefore() {
		return mapper.selectProjectBefore();
	}

	// 진행중 프로젝트 조회
	public List<Map<String, Object>> selectProjectOngoing() {
		return mapper.selectProjectOngoing();
	}

	// 마감된 프로젝트 조회
	public List<Map<String, Object>> selectProjectAfter() {
		return mapper.selectProjectAfter();
	}

	
	// 메인 탭 조회
	public List<MainTabVO> selectMainTab() {
		return mapper.selectMainTab();
	}
	
	// 메인 탭 추가
	public int insertMainTab(Map<String, String> map) {
		return mapper.insertMainTab(map);
	}

	
	// 메인 탭 삭제
	public int deleteMainTap(String tab_Kname) {
		return mapper.deleteMainTab(tab_Kname);
	}


/*====================================================================
 * 1:1 문의
 * ===================================================================
 * */

	// 1:1문의 조회
	// myQuestion_num을 널스트링으로 전달 시 전체 질문 조회
	public List<MyQuestionVO> selectOTO(String myQuestion_num) {
		System.out.println("AdminService - selectOTO()");
		return mapper.selectOTO(myQuestion_num);
	}

	// 관리자 1:1문의 답변 등록
	public int updateOTOAnswer(MyQuestionVO myQuestion) {
		System.out.println("AdminService - updateOTOAnswer()");
		return mapper.updateOTOAnswer(myQuestion);
	}

	public int updateAnswer(Map<String, String> map) {
		System.out.println("AdminService - updateAnswer()");
		return mapper.updateAnswer(map);
	}

	
	
/*====================================================================
 * 프로젝트 심사
 * ===================================================================
 * */
	
	public List<Map<String, Object>> selectExamWaitProjectList() {
		return mapper.selectExamWaitProjectList();
	}

	public List<Map<String, Object>> selectRejectProjectList() {
		return mapper.selectRejectProjectList();
	}

	
	// 프로젝트 승인
	public int updateProjectApprove(String project_code) {
		return mapper.updateProjectApprove(project_code);
	}

	// 프로젝트 반려
	public int updateProjectReject(String project_code) {
		return mapper.updateProjectReject(project_code);
	}

	// 심사할 프로젝트 조회
	public ProjectVO selectProjectExamDetail(String project_code) {
		return mapper.selectProjectExamDetail(project_code);
	}

	
}
