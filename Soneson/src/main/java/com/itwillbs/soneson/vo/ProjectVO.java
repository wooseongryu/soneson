package com.itwillbs.soneson.vo;

import org.springframework.web.multipart.MultipartFile;
import java.time.LocalDateTime;

import lombok.Data;
/*
pro_code	-- 프로젝트코드 primary key 
user_id		-- 유저 foriegn key
pro_title	-- 제목
pro_categorie	-- 카테고리
pro_agree	-- 동의여부
pro_summary	-- 프젝 요약
pro_thumbsnail	-- 썸네일
pro_goal		-- 목표금액
pro_startDt	-- 펀딩 시작일
pro_endDt	-- 펀딩 마감일
(후원자 결제일과 정산일은 각각 +7일 따로 컬럼은 X)
pro_content	-- 프젝소개
pro_budget	-- 프젝예산
pro_sch		-- 프젝일정
pro_team	-- 프젝팀소개
pro_reward	-- 리워드설명
pro_notice	-- 프젝정책

pro_creator	-- 창작자이름
pro_profile	-- 프로필이미지
pro_createrInfo	-- 창작자소개
pro_userAuth	-- 본인인증여부
pro_account	-- 계좌  ----------------보류
pro_tax		-- 세금계산서(?) --------보류

 */


@Data
public class ProjectVO {
//	private int project_code;
//	private String title;
//	private String subtitle;
//	private String category;
//	private String creator;
//	private String img1;
//	private String startDate;
//	private String endDate;
	private int project_code;
	private String title;
	private String subtitle;
	private String category;
	private String creator;
	private String img1;
	private LocalDateTime start_date;
	private LocalDateTime end_date;
	//------------
	private int pro_code;
	private String user_id;
	private String pro_title;
	private String pro_categorie;
	private String pro_agree;
	private String pro_summary;
	private String pro_thumbsnail;
	private String pro_goal;
	private String pro_startDt;
	private String pro_start_time;
	private String pro_endDt;
	private String pro_content;
	private String pro_budget;
	private String pro_sch;
	private String pro_team;
	private String pro_reward;
	private String pro_notice;
	private String pro_creator;
	private String pro_profile;
	private String pro_createrInfo;
	private String pro_userAuth; //핀테크번호
	private String user_name; //계좌소유주명
	
	private MultipartFile pro_thumb_multi;
	private MultipartFile pro_content_multi;
	private MultipartFile pro_budget_multi;
	private MultipartFile pro_sch_multi;
	private MultipartFile pro_team_multi;
	private MultipartFile pro_reward_multi;
	private MultipartFile pro_profile_multi;
}
