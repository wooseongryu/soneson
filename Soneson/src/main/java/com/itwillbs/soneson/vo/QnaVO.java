package com.itwillbs.soneson.vo;

import lombok.Data;

/*
 * 
CREATE TABLE qna (
	qna_idx INT PRIMARY KEY AUTO_INCREMENT,
	qna_title VARCHAR(100),
	qna_content VARCHAR(3000),
	qna_category INT,
	FOREIGN KEY (qna_category) REFERENCES qnaCate(qnaCate_idx) 
);
 * 
 * */



@Data
public class QnaVO {
	int qna_idx;
	String qna_title;
	String qna_content;
	int qna_category;
	
	String qnaCate_subject;
}
