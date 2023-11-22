package com.itwillbs.soneson.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.itwillbs.soneson.vo.EventCateVO;
import com.itwillbs.soneson.vo.EventVO;
import com.itwillbs.soneson.vo.NoticeVO;
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
	 * 공지 
	 * =============================================================
	 * */
	
	// 공지 등록
	int insertNotice(NoticeVO notice);
	
	// 공지 조회
	List<NoticeVO> selectNotice(String notice_idx);
	
	// 공지 삭제
	int deleteNotice(int notice_idx);
	
	// 공지 수정
	int updateNotice(NoticeVO notice);
	
	// 메인페이지에서 조회할 때 
	NoticeVO selectNotice(int notice_idx);

	
	
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
	
	
	
}
