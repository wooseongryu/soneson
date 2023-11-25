package com.itwillbs.soneson.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.itwillbs.soneson.vo.EventCateVO;
import com.itwillbs.soneson.vo.EventVO;
import com.itwillbs.soneson.vo.QnaCateVO;
import com.itwillbs.soneson.vo.QnaVO;
import com.itwillbs.soneson.vo.UserVO;



@Mapper
public interface AdminMapper {
	
	/*====================================================================
	 * 관리자 회원 정보 관리 페이지
	 * ===================================================================
	 * */
	
	// 관리자 권한 부여/해제
	int updateUserAuthorize(UserVO user);
	
	
	
	/*==============================================================
	 * 이벤트
	 * =============================================================
	 * */

	int insertEvent(EventVO event);

	List<EventVO> selectEvent(String event_idx);

	int updateEvent(EventVO event);

	int deleteEvent(String event_idx);
	
	
	/*==============================================================
	 * 이벤트 카테고리
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
	
	List<QnaVO> selectQna(String qnaIdx);
	
	int updateQna(QnaVO qna);
	
	int deleteQna(String qnaIdx);
	
	/*==============================================================
	 * 자주 묻는 질문 카테고리
	 * =============================================================
	 * */
	
	int insertQnaCategory(String qnaCate_subject);

	List<QnaCateVO> selectQnaCategory();

	int deleteQnaCategory(String qnaCate_subject);
	
	
	
	
}
