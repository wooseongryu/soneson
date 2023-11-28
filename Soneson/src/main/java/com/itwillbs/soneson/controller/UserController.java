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
	
	// 유저 설정 프로필 초기 출력 화면
	@ResponseBody
	@PostMapping("settingUserProfile")
	public String settingUserProfile() {
		System.out.println("UserController - settingUserProfile()");
		return "1";
	}
	
	// 유저 설정 프로필 사진 변경
	@ResponseBody
	@PostMapping("settingUpdateUserProfilePic")
	public String settingUpdateUserProfilePic() {
		System.out.println("UserController - settingUpdateUserProfilePic()");
		return "1";
	}
	
	// 유저 설정 프로필 사진 변경 취소
	@ResponseBody
	@PostMapping("settingCancelUpdateUserProfilePic")
	public String settingCancelUpdateUserProfilePic() {
		System.out.println("UserController - settingCancelUpdateUserProfilePic()");
		return "1";
	}
	
	// 유저 설정 이름 변경
	@ResponseBody
	@PostMapping("settingUpdateUserName")
	public String settingUpdateUserName() {
		System.out.println("UserController - settingUpdateUserName()");
		return "1";
	}
	
	// 유저 설정 이름 변경 취소
	@ResponseBody
	@PostMapping("settingCancelUpdateUserName")
	public String settingCancelUpdateUserName() {
		System.out.println("UserController - settingCancelUpdateUserName()");
		return "1";
	}
	
	// 유저 설정 소개 변경
	@ResponseBody
	@PostMapping("settingUpdateUserIntro")
	public String settingUpdateUserIntro() {
		System.out.println("UserController - settingUpdateUserIntro()");
		return "1";
	}
	
	// 유저 설정 소개 변경 취소
	@ResponseBody
	@PostMapping("settingcCancelUpdateUserIntro")
	public String settingcCancelUpdateUserIntro() {
		System.out.println("UserController - settingcCancelUpdateUserIntro()");
		return "1";
	}
	
	// 유저 설정 계정 초기 출력 화면
	@ResponseBody
	@PostMapping("settingUserAccount")
	public String settingUserAccount() {
		System.out.println("UserController - settingUserAccount()");
		return "1";
	}
	
	// 유저 설정 계정 초기 출력 화면
	@ResponseBody
	@PostMapping("settingUpdateUserPassword")
	public String settingUpdateUserPassword() {
		System.out.println("UserController - settingUpdateUserPassword()");
		return "1";
	}
	
	// 유저 설정 계정 초기 출력 화면
	@ResponseBody
	@PostMapping("settingCancelUpdateUserPassword")
	public String settingCancelUpdateUserPassword() {
		System.out.println("UserController - settingCancelUpdateUserPassword()");
		return "1";
	}
	
	// 유저 설정 계정 연락처 변경
	@ResponseBody
	@PostMapping("settingUpdateUserPhone")
	public String settingUpdateUserPhone() {
		System.out.println("UserController - settingUpdateUserPhone()");
		return "1";
	}
		
	// 유저 설정 계정 연락처 변경 취소
	@ResponseBody
	@PostMapping("settingCancelUpdateUserPhone")
	public String settingCancelUpdateUserPhone() {
		System.out.println("UserController - settingCancelUpdateUserPhone()");
		return "1";
	}
	
	// 유저 설정 계정 연락처 변경 취소
	@ResponseBody
	@PostMapping("settingUpdateUserLeave")
	public String settingUpdateUserLeave() {
		System.out.println("UserController - settingUpdateUserLeave()");
		return "1";
	}
	
	// 유저 설정 계정 연락처 변경 취소
	@ResponseBody
	@PostMapping("settingCancelUpdateUserLeave")
	public String settingCancelUpdateUserLeave() {
		System.out.println("UserController - settingCancelUpdateUserLeave()");
		return "1";
	}
	
	// 유저 설정 계정 배송지 초기 출력 화면
	@ResponseBody
	@PostMapping("settingUserPayment")
	public String settingUserPayment() {
		System.out.println("UserController - settingUserPayment()");
		return "1";
	}
	
	// 유저 설정 계정 배송지 초기 출력 화면
	@ResponseBody
	@PostMapping("settingUserAddress")
	public String settingUserAddress() {
		System.out.println("UserController - settingUserAddress()");
		return "1";
	}
	

		
		
		
	/*====================================================================
	 * 마이페이지에서 세부 페이지로 이동
	 * ===================================================================
	 * */
	
	// 마이페이지에서 프로젝트 올리기 페이지 이동
	@GetMapping("userProjectsCreated")
	public String userProjectsCreated() {
		System.out.println("UserController - userProjectsCreated()");
		return "mypage/user/user_projects_created";
	}
	
	// 마이페이지에서 관심 프로젝트
	@GetMapping("userProjectsInterest")
	public String userProjectsInterest() {
		System.out.println("UserController - userProjectsInterest()");
		return "mypage/user/user_projects_interest";
	}
	
	// 마이페이지에서 관심 프로젝트 - 좋아한 페이지 이동
	@ResponseBody
	@PostMapping("userProjectsLiked")
	public String userProjectsLiked() {
		System.out.println("UserController - userProjectsLiked()");
		return "1";
	}

	// 마이페이지에서 관심 프로젝트 - 알림신청 페이지 이동
	@ResponseBody
	@PostMapping("userProjectsAlarm")
	public String userProjectsAlarm() {
		System.out.println("UserController - userProjectsAlarm()");
		return "1";
	}
	
	// 마이페이지에서 후원 현황(목록) 페이지 이동
	@GetMapping("userFundingList")
	public String userFundingList() {
		System.out.println("UserController - userFundingList()");
		return "mypage/user/user_funding_list";
	}
		
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
