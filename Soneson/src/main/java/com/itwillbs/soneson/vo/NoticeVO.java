package com.itwillbs.soneson.vo;

import java.util.Date;

import lombok.Data;

/*
 * 
CREATE TABLE notice (
	notice_idx INT PRIMARY KEY AUTO_INCREMENT,
	notice_title VARCHAR(100),
	notice_content VARCHAR(3000),
	notice_writeDate DATETIME
);
 * 
 * */



@Data
public class NoticeVO {
	int notice_idx;
	String notice_title;
	String notice_content;
	Date notice_writeDate;
}
