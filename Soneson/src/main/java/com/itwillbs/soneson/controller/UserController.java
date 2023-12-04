package com.itwillbs.soneson.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.commons.lang3.RandomStringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.itwillbs.soneson.service.UserService;
import com.itwillbs.soneson.vo.UserVO;

@Controller
public class UserController {
	@Autowired
	private UserService userService;
	
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
	public String settingUserProfile(HttpSession session, Gson gson, UserVO user) {
		System.out.println("UserController - settingUserProfile()");
		
		String sId = (String)session.getAttribute("sId");
		
		// TODO
		// 나머지값 컬럼 생성 후 받아와야 됨.
		user = userService.getUserProfile(sId);
		
//		System.out.println("************" + user);
		
		return gson.toJson(user);
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
	
	// 유저 설정 소개 변경 pro
	@ResponseBody
	@PostMapping("settingUpdateUserProfilePro")
	public String settingUpdateUserProfilePro(@RequestParam Map<String, String> map, Gson gson, HttpSession session, Model model) {
		System.out.println("UserController - settingUpdateUserProfilePro()");
		
		String sId = (String)session.getAttribute("sId");
		if (sId == null) {
			return gson.toJson(map);
		}
		
		map.put("isLogin", "true");
		map.put("sId", sId);
		
		if (map.containsKey("user_info")) {
			map.replace("user_info", map.get("user_info").replaceAll("\n", "<br>"));
		}
		
		int updateCount = userService.updateUserInfo(map);
		
		if (updateCount == 0) {
			return gson.toJson(map);
		}
		
		map.put("isUpdated", "true");
		return gson.toJson(map);
	}
	
	// 유저 설정 소개 변경 취소
	@ResponseBody
	@PostMapping("settingcCancelUpdateUserIntro")
	public String settingcCancelUpdateUserIntro() {
		System.out.println("UserController - settingcCancelUpdateUserIntro()");
		return "1";
	}
	
	// TODO
	// 유저 설정 계정 초기 출력 화면
	@ResponseBody
	@PostMapping("settingUserAccount")
	public String settingUserAccount(HttpSession session, UserVO user, Gson gson) {
		System.out.println("UserController - settingUserAccount()");
		
		String sId = (String)session.getAttribute("sId");
		
		user = userService.selectUserAccount(sId);
		
		System.out.println("))))))))))))))" + user);
		
		return gson.toJson(user);
	}
	
	// 유저 설정 계정 비밀번호 변경
	@ResponseBody
	@PostMapping("settingUpdateUserPassword")
	public String settingUpdateUserPassword() {
		System.out.println("UserController - settingUpdateUserPassword()");
		return "1";
	}
	
	// 유저 설정 계정 비밀번호 변경 pro
	@ResponseBody
	@PostMapping("isPassEqual")
	public String isPassEqual(UserVO user, HttpSession session, Map<String, Boolean> map, Gson gson) {
		System.out.println("UserController - isPassEqual()");
		
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		
		String sId = (String)session.getAttribute("sId");
		if (sId == null) {
			map.put("isLogin", false);
			return gson.toJson(map);
		}
		map.put("isLogin", true);
		
		user.setUser_id(sId);
		UserVO dbUser = userService.selectUserPass(user);
		
		if(!passwordEncoder.matches(user.getUser_passwd(), dbUser.getUser_passwd())) {
			map.put("isPassEqual", false);
			return gson.toJson(map);
		}
		map.put("isPassEqual", true);
		
		return gson.toJson(map);
	}
	
	// 유저 설정 계정 비밀번호 변경 pro
	@ResponseBody
	@PostMapping("settingUpdateUserPasswordPro")
	public String settingUpdateUserPasswordPro(UserVO user, HttpSession session) {
		System.out.println("UserController - settingUpdateUserPasswordPro()");

		user.setUser_id((String)session.getAttribute("sId"));
		
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		user.setUser_passwd(passwordEncoder.encode(user.getUser_passwd()));
		
		System.out.println(user);
		
		int updateCount = userService.updatePassword(user);
		
		if (updateCount < 0) {
			System.out.println("비번 변경 실패");
			return "false";
		}
		
		return "true";
	}
	
	// 유저 설정 계정 비밀번호 변경 취소
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
	
	// 유저 설정 계정 연락처 변경 pro
	@ResponseBody
	@PostMapping("settingUpdateUserPhonePro")
	public String settingUpdateUserPhonePro(UserVO user, HttpSession session, Gson gson) {
		System.out.println("UserController - settingUpdateUserPhonePro()");

		user.setUser_id((String)session.getAttribute("sId"));
		
		System.out.println("===" + user);
		
		int updateCount = userService.updateUserPhone(user);
		
		return gson.toJson(user);
	}
		
	// 유저 설정 계정 연락처 변경 취소
	@ResponseBody
	@PostMapping("settingCancelUpdateUserPhone")
	public String settingCancelUpdateUserPhone() {
		System.out.println("UserController - settingCancelUpdateUserPhone()");
		return "1";
	}
	
	// TODO
	// 유저 설정 카카오 연동 해제
	@ResponseBody
	@PostMapping("settingDisconnectKakao")
	public String settingDisconnectKakao(HttpSession session, Map<String, String> map, Gson gson) {
		System.out.println("UserController - settingDisconnectKakao()");
		
		String sId = (String)session.getAttribute("sId");
		
		int updateCount = userService.updateKakaoStatus(sId);
		
		if (updateCount == 0) {
			map.put("isSuccess", "false");
			return gson.toJson(map);
		}
		
		map.put("isSuccess", "true");
		return gson.toJson(map);
	}
	
	
	// 유저 설정 계정 회원탈퇴
	@ResponseBody
	@PostMapping("settingUpdateUserLeave")
	public String settingUpdateUserLeave() {
		System.out.println("UserController - settingUpdateUserLeave()");
		return "1";
	}
	
	// 유저 설정 계정 회원탈퇴 취소
	@ResponseBody
	@PostMapping("settingCancelUpdateUserLeave")
	public String settingCancelUpdateUserLeave() {
		System.out.println("UserController - settingCancelUpdateUserLeave()");
		return "1";
	}
	
	// 유저 설정 계정 회원탈퇴 처리
	@ResponseBody
	@PostMapping("settingLeaveUser")
	public String settingLeaveUser(HttpSession session, Gson gson, Map<String, String> map, UserVO user) {
		System.out.println("UserController - settingLeaveUser()");
		
		String sId = (String)session.getAttribute("sId");
		
		System.out.println("))))))))))))" + sId + "(((");
		
		if (sId == null) {
			map.put("isSuccess", "false");
			return gson.toJson(map);
		}
		
		user.setUser_id(sId);
		
		int dupCount = 1;
		String deleteEmail = "";
		
		while (true) {
			deleteEmail = RandomStringUtils.randomAlphabetic(20);
			dupCount = userService.checkDuplicateEmail(deleteEmail);
			if (dupCount == 0) {
				break;
			}
		}
		
		user.setUser_email(deleteEmail);
		
		int updateCount = userService.updateUserLeave(user);
		
		if (updateCount == 0) {
			map.put("isSuccess", "false");
			return gson.toJson(map);
		}
		
		session.invalidate();
		map.put("isSuccess", "true");
		return gson.toJson(map);
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
	
	

		
	
		
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
