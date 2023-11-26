package com.itwillbs.soneson.mapper;


import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.web.bind.annotation.RequestParam;

import com.itwillbs.soneson.vo.EventCateVO;
import com.itwillbs.soneson.vo.EventVO;


@Mapper
public interface EventMapper {

	// 이벤트 카테고리별 조회 
	List<EventVO> selectEventList(@Param("startRow") int startRow, @Param("listLimit") int listLimit, @Param("eventCate_idx") int eventCate_idx);

	// 이벤트 카테고리 전체 조회
	List<EventCateVO> selectEventCateList();

	// 이벤트 상세 보기
	List<EventVO> selectEvent(String event_idx);
	
	// 영화 이벤트 상세 조회
	List<EventVO> selectEventDetailList(@Param("startRow") int startRow, @Param("listLimit") int listLimit, @Param("eventCate_idx") int eventCate_idx);

	// 영화 이벤트 목록 수
	int selectMovieEventListCount(@Param("eventCate_idx") int eventCate_idx);

	List<EventVO> selectTheaterEventList();

	
//	// 이벤트 전체 조회
//	List<EventVO> selectEventAll(@Param("startRow") int startRow, @Param("listLimit") int listLimit,  @Param("event_idx") int event_idx);

	// 이벤트 메인 페이징
	int selectEventListAllCount(int eventCate_idx);
	



	

}
