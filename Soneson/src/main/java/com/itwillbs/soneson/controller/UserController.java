package com.itwillbs.soneson.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class UserController {
	/*====================================================================
	 * - 목차 -
	 * 1. 유저 프로필
	 * 2. 유저 정보 수정
	 * ===================================================================
	 * */
	
	/*====================================================================
	 * 1. 유저 프로필
	 * ===================================================================
	 * */
	
	// 유저프로필 메인 페이지
	@GetMapping("user")
	public String user() {
		System.out.println("UserController - user()");
		return "mypage/user/user_main";
	}
	
	// 프로필
	@ResponseBody
	@PostMapping("userProfile")
	public String userProfile() {
		System.out.println("UserController - userProfile()");
		return "1";
	}
	
	// 프로젝트 후기
	@ResponseBody
	@PostMapping("userProfileProjectReview")
	public String userProfileProjectReview() {
		System.out.println("UserController - userProfileProjectReview()");
		return "1";
	}
	
	// 올린 프로젝트
	@ResponseBody
	@PostMapping("userUploadProject")
	public String userUploadProject() {
		System.out.println("UserController - userUploadProject()");
		return "1";
	}
	
	// 팔로워
	@ResponseBody
	@PostMapping("userFollower")
	public String userFollower() {
		System.out.println("UserController - userFollower()");
		return "1";
	}
	
	// 유저 정보 수정 페이지 이동
	@GetMapping("userSetting")
	public String userSetting() {
		System.out.println("UserController - userSetting()");
		return "mypage/user/user_setting";
	}
	
	
	/*====================================================================
	 * 2. 유저 정보 수정
	 * ===================================================================
	 * */
	
	
	
	
	// 마이페이지에서 프로젝트 올리기 페이지 이동
	@GetMapping("userProjectsCreated")
	public String userProjectsCreated() {
		System.out.println("UserController - userProjectsCreated()");
		return "mypage/user/user_projects_created";
	}
	
	// 마이페이지에서 관심 프로젝트 페이지 이동
	@GetMapping("userProjectsLiked")
	public String userProjectsLiked() {
		System.out.println("UserController - userProjectsLiked()");
		return "mypage/user/user_projects_liked";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
