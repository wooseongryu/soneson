package com.itwillbs.soneson.service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwillbs.soneson.mapper.EventMapper;
import com.itwillbs.soneson.vo.EventCateVO;
import com.itwillbs.soneson.vo.EventVO;


@Service
public class EventService {
	
	@Autowired
	private EventMapper mapper;

	
	
	// 이벤트 카테고리 별 목록
	public List<EventVO> selectEventList(int startRow, int listLimit, int eventCate_idx) {
		return mapper.selectEventList(startRow, listLimit, eventCate_idx);
	}

	// 이벤트 카테고리 목록 
	public List<EventCateVO> selectEventCateList() {
		return mapper.selectEventCateList();
	}
	
	// 이벤트 상세보기 
	public List<EventVO> getEvent(String event_idx) {
		return mapper.selectEvent(event_idx);
	}

	// 영화 이벤트 상세 목록 
	public List<EventVO> getEventDetailList(int startRow, int listLimit, int eventCate_idx) {
		return mapper.selectEventDetailList(startRow, listLimit, eventCate_idx);
	}

	// 영화 이벤트 목록 수 조회
	public int getMovieEventListCount(int eventCate_idx) {
		return mapper.selectMovieEventListCount(eventCate_idx);
	}

	// 극장 메인 페이지에 극장 이벤트 출력
	public List<EventVO> getEventList() {
		return mapper.selectTheaterEventList();
	}

	// 이벤트 메인 페이징
	public int getEventListAllCount( int eventCate_idx) {
		return mapper.selectEventListAllCount(eventCate_idx);
	}
	
	
	
	

}
