package com.itwillbs.soneson.vo;

import java.sql.Date;

import lombok.Data;


@Data
public class FundingVO {
	private int fund_idx;		// 후원 번호 PK
	private String user_id; 	// 유저 아이디 FK
	private int pro_code;		// 프로젝트 번호 FK
	private String fund_date;	// 후원(신청)일
	
	
//	private String fun_del_status;		// 전달 상태(보류)
}

