package com.itwillbs.soneson.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;

import com.itwillbs.soneson.mapper.AdminMapper;
import com.itwillbs.soneson.vo.EventCateVO;
import com.itwillbs.soneson.vo.EventVO;
import com.itwillbs.soneson.vo.MainTapVO;
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

	// 이벤트 카테고리 삭제
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
	public List<MainTapVO> selectMainTap() {
		return mapper.selectMainTap();
	}
	
	// 메인 탭 추가
	public int insertMainTap(Map<String, String> map) {
		return mapper.insertMainTap(map);
	}

	
	// 메인 탭 삭제
	public int deleteMainTap(String tap_Kname) {
		return mapper.deleteMainTap(tap_Kname);
	}



	
	
	
	
}
