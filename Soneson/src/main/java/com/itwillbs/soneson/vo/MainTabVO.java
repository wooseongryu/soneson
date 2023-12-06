package com.itwillbs.soneson.vo;

import lombok.Data;

/*
 * 
CREATE TABLE project_tab (
   idx int PRIMARY KEY AUTO_INCREMENT
   , tab_Kname varchar(16)
   , tab_Ename varchar(16) 
);
 * 
 * */



@Data
public class MainTabVO {
	int idx;
	String tab_Kname;
	String tab_Ename;
}
