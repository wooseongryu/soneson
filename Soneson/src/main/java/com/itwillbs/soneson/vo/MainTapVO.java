package com.itwillbs.soneson.vo;

import lombok.Data;

/*
 * 
CREATE TABLE project_tap (
   idx int PRIMARY KEY AUTO_INCREMENT
   , tap_Kname varchar(16)
   , tap_Ename varchar(16) 
);
 * 
 * */



@Data
public class MainTapVO {
	int idx;
	String tap_Kname;
	String tap_Ename;
}
