package com.itwillbs.soneson.vo;

import lombok.Data;

/*
 * 
CREATE TABLE qnaCate (
	qnaCate_idx INT PRIMARY KEY AUTO_INCREMENT,
	qnaCate_subject VARCHAR(50)
);
 * 
 * */



@Data
public class QnaCateVO {
	int qnaCate_idx;
	String qnaCate_subject;
}
