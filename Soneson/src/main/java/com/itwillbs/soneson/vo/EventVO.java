package com.itwillbs.soneson.vo;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

/*
 * 
CREATE TABLE event (
	event_idx INT PRIMARY KEY AUTO_INCREMENT,
	event_title VARCHAR(100),
	event_startDt VARCHAR(50),
	event_endDt VARCHAR(50),
	event_poster VARCHAR(100),
	event_thumbnail VARCHAR(100),
	event_category INT,
	FOREIGN KEY (event_category) REFERENCES eventCate(eventCate_idx) 
);
 * 
 * */




@Data
public class EventVO {
	private int event_idx;
	private String event_title;
	private String event_startDt;
	private String event_endDt;
	private String event_poster;
	private String event_thumbnail;
	private int event_category;
	
	private MultipartFile event_poster_multi;
	private MultipartFile event_thumbnail_multi;
	private String event_status;

	private String eventCate_Subject;
}
