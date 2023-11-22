package com.itwillbs.soneson.vo;

import lombok.Data;

/*
 * 
CREATE TABLE eventCate (
	eventCate_idx INT PRIMARY KEY AUTO_INCREMENT,
	eventCate_subject VARCHAR(50)
);
 * 
 * */



@Data
public class EventCateVO {
	int eventCate_Idx;
	String eventCate_Subject;
}
