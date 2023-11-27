package com.itwillbs.soneson.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.itwillbs.soneson.service.EventService;
import com.itwillbs.soneson.vo.EventCateVO;
import com.itwillbs.soneson.vo.EventVO;
import com.itwillbs.soneson.vo.PageInfoVO;


@Controller
public class EventController {
	
	@Autowired
	private EventService eventService;
	
	
	// 이벤트 메인
	@GetMapping("eventMain")
	public String eventMain(@RequestParam(defaultValue = "1") int pageNum, 
							Model model, 
							@RequestParam(defaultValue = "-1") int eventCate_idx) {
		System.out.println("EventController - eventMain()");

		int listLimit = 6; // 한 페이지에서 표시할 글 목록 갯수
		
		int startRow = (pageNum - 1) * listLimit; // 조회 시작 행(레코드) 번호
		
		
		List<EventVO> eventList = eventService.selectEventList(startRow, listLimit, eventCate_idx);
		
		List<EventCateVO> eventCateList = eventService.selectEventCateList();
		
		
		LocalDate now = LocalDate.now();
        DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy-MM-dd");
        String formatedNow = now.format(dtf);
        
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");

        try {
			Date nowDate = formatter.parse(formatedNow);

			for (EventVO e : eventList) {
				Date eventEndDate = formatter.parse(e.getEvent_endDt());
				Date eventStartDate = formatter.parse(e.getEvent_startDt());
				
				if (eventStartDate.compareTo(nowDate) > 0) {
					e.setEvent_status("대기");
					continue;
				}
				
				if (eventEndDate.compareTo(nowDate) < 0) {
					e.setEvent_status("종료");
				} else {
					e.setEvent_status("진행중");
				}
			}
		} catch (ParseException e) {
			e.printStackTrace();
		}

        
		int listCount = eventService.getEventListAllCount(eventCate_idx);
		
		int pageListLimit = 3;
		
		int maxPage = listCount / listLimit + (listCount % listLimit > 0 ? 1 : 0);
		
		int startPage = (pageNum - 1) / pageListLimit * pageListLimit + 1;
		
		int endPage = startPage + pageListLimit - 1;
		
		if(endPage > maxPage) {
			endPage = maxPage;
		}
		
		PageInfoVO pageInfo = new PageInfoVO(listCount, pageListLimit, maxPage, startPage, endPage);
		
		model.addAttribute("eventList", eventList);
		
		model.addAttribute("eventCateList", eventCateList);
		
		model.addAttribute("pageInfo", pageInfo);
		
		return "soneson/event_qna/event_main";
	}
	
	// 이벤트 상세보기
	@GetMapping("eventDetail")
	public String eventDetail(@RequestParam(defaultValue = "-1") String event_idx, 
			Model model) {
		System.out.println("EventController - eventDetail()");
		
		EventVO event = eventService.getEvent(event_idx).get(0);
		
		model.addAttribute("event", event);
		
		return "soneson/event_qna/event_detail";
	}
	
	// 영화 이벤트 상세 목록
	@GetMapping("eventList")
	public String eventList(
						@RequestParam(defaultValue = "1") int pageNum, 
						Model model,
						@RequestParam(defaultValue = "-1") int eventCate_idx) {
		System.out.println("EventController - eventList()");
		
		int listLimit = 6; // 한 페이지에서 표시할 글 목록 갯수
		
		int startRow = (pageNum - 1) * listLimit; // 조회 시작 행(레코드) 번호
		
		List<EventVO> eventDetailList = eventService.getEventDetailList(startRow, listLimit, eventCate_idx);

		List<EventCateVO> eventCateList = eventService.selectEventCateList();
		
		
		LocalDate now = LocalDate.now();
        DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy-MM-dd");
        String formatedNow = now.format(dtf);
        
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");

        try {
			Date nowDate = formatter.parse(formatedNow);

			for (EventVO e : eventDetailList) {
				Date eventEndDate = formatter.parse(e.getEvent_endDt());
				Date eventStartDate = formatter.parse(e.getEvent_startDt());
				
				if (eventStartDate.compareTo(nowDate) > 0) {
					e.setEvent_status("대기");
					continue;
				}
				
				if (eventEndDate.compareTo(nowDate) < 0) {
					e.setEvent_status("종료");
				} else {
					e.setEvent_status("진행중");
				}
			}
		} catch (ParseException e) {
			e.printStackTrace();
		}
		
		
		
		int listCount = eventService.getMovieEventListCount(eventCate_idx);
		
		int pageListLimit = 3;
		
		int maxPage = listCount / listLimit + (listCount % listLimit > 0 ? 1 : 0);
		
		int startPage = (pageNum - 1) / pageListLimit * pageListLimit + 1;
		
		int endPage = startPage + pageListLimit - 1;
		
		if(endPage > maxPage) {
			endPage = maxPage;
		}
		
		PageInfoVO pageInfo = new PageInfoVO(listCount, pageListLimit, maxPage, startPage, endPage);
		
		model.addAttribute("eventDetailList", eventDetailList);
		model.addAttribute("eventCateList", eventCateList);
		model.addAttribute("pageInfo", pageInfo);
		
		
		
		return "soneson/event_qna/event_list";
	}
	
}
