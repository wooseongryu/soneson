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

	
	
	// 게시판 카테고리 별 목록
	public List<EventVO> selectEventList(int startRow, int listLimit, int eventCate_idx) {
		return mapper.selectEventList(startRow, listLimit, eventCate_idx);
	}

	// 게시판 카테고리 목록 
	public List<EventCateVO> selectEventCateList() {
		return mapper.selectEventCateList();
	}
	
	// 게시판 상세보기 
	public List<EventVO> getEvent(String event_idx) {
		return mapper.selectEvent(event_idx);
	}

	// 게시판 목록 
	public List<EventVO> getEventDetailList(int startRow, int listLimit, int eventCate_idx) {
		return mapper.selectEventDetailList(startRow, listLimit, eventCate_idx);
	}

	// 게시판 목록 수 조회
	public int getEventListCount(int eventCate_idx) {
		return mapper.selectEventListCount(eventCate_idx);
	}

	// 게시판 메인 페이징처리
	public int getEventListAllCount(int eventCate_idx) {
		return mapper.selectEventListAllCount(eventCate_idx);
	}

	
	// 게시판 상세보기 관련
	public EventVO selectEventDetail(String event_idx) {
		return mapper.selectEventDetail(event_idx);
	}

	
	
	
	

}
