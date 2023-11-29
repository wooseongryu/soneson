package com.itwillbs.soneson.mapper;


import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.web.bind.annotation.RequestParam;

import com.itwillbs.soneson.vo.EventCateVO;
import com.itwillbs.soneson.vo.EventVO;


@Mapper
public interface EventMapper {

	// 게시판 카테고리별 조회 
	List<EventVO> selectEventList(@Param("startRow") int startRow, @Param("listLimit") int listLimit, @Param("eventCate_idx") int eventCate_idx);

	// 게시판 카테고리 조회
	List<EventCateVO> selectEventCateList();

	// 게시판 상세 보기
	List<EventVO> selectEvent(String event_idx);
	
	// 게시판 목록 조회
	List<EventVO> selectEventDetailList(@Param("startRow") int startRow, @Param("listLimit") int listLimit, @Param("eventCate_idx") int eventCate_idx);

	// 게시판 목록 수
	int selectEventListCount(@Param("eventCate_idx") int eventCate_idx);

	// 게시판 메인 페이징
	int selectEventListAllCount(int eventCate_idx);

	// 게시판 디테일 상세보기 관련
	EventVO selectEventDetail(String event_idx);
	



	

}
