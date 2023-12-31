package com.itwillbs.soneson.vo;

import java.sql.Date;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;
/*
CREATE TABLE user (
	 	user_idx INT PRIMARY KEY AUTO_INCREMENT,
	 	user_name VARCHAR(10) NOT NULL,
	 	user_id VARCHAR(16) NOT NULL UNIQUE,
	 	user_email VARCHAR(50) NOT NULL UNIQUE,
	 	user_passwd VARCHAR(100) NOT NULL,
	 	hire_date DATE NOT NULL,
	 	user_is_admin VARCHAR(10),
	 	mail_auth_status CHAR(1) NOT NULL,
	 	user_status VARCHAR(100) NOT NULL
	 	kakao_id VARCHAR(100)
	);
*/


@Data
public class UserVO {
	private int user_idx;
	private String user_name;
	private String user_id;
	private String user_email;
	private String user_passwd;
	private Date hire_date;
	private String user_is_admin;
	private String mail_auth_status; // 이메일 인증 여부("Y" : 인증, "N" : 미인증)
	private String user_status; // 가입, 탈퇴
	private String kakao_id;
	private String user_info;
	private String user_picture;
	
	// 핀테크 토큰 관련 정보 추가
	private String access_token;
	private String user_seq_no;
	
	
	private String user_phone;
	
	// 원본 파일명을 가공하여 저장할 멤버변수 선언 추가
	private MultipartFile profilePic;
	
	// 원본 파일명 저장
	private String original_profilePic;
	
	// 실제 파일명 저장
	private String profilePicFileName;
}

