package com.itwillbs.soneson.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.List;
import java.util.Map;
import java.util.UUID;

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
import org.springframework.web.multipart.MultipartFile;

import com.google.gson.Gson;
import com.itwillbs.soneson.service.UserService;
import com.itwillbs.soneson.vo.AddressVO;
import com.itwillbs.soneson.vo.ProjectVO;
import com.itwillbs.soneson.vo.UserVO;

@Controller
public class UserController {
	@Autowired
	private UserService userService;
	
	Gson gson = new Gson();
	
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
	public String user(HttpSession session, String id, Model model, Map<String, String> map) {
		System.out.println("UserController - user()");
		
		if (userService.selectExistUser(id) == 0) {
			model.addAttribute("msg", "존재하지 않는 유저입니다.");
			return "fail_back";
		}
		
		String sId = (String)session.getAttribute("sId");
		if (sId == null) {
			model.addAttribute("msg", "로그인 후 이용 가능합니다.");
			model.addAttribute("targetURL", "login");
			return "forward";
		}
		
		map.put("sId", sId);
		map.put("id", id);
		
		map = userService.selectUserMainInfo(map);
		
		model.addAttribute("user", map);
		
		if (id.equals(sId)) {
			map.put("isOwn", "true");
		}
		
//		System.out.println("--" + map);
		
		return "mypage/user/user_main";
	}
	
	// 팔로우
	@GetMapping("follow")
	public String follow(String follow_id, HttpSession session, Model model, Map<String, String> map) {
		System.out.println("UserController - follow()");
		
		String sId = (String)session.getAttribute("sId");
		if (sId == null) {
			model.addAttribute("msg", "로그인 후 이용 가능합니다.");
			return "fail_back";
		}
		
		map.put("sId", sId);
		map.put("follow_id", follow_id);
		
		int insertCount = userService.insertFollow(map);
		
		if (insertCount == 0) {
			model.addAttribute("msg", "팔로우 실패!");
			return "fail_back";
		}
		
		return "redirect:/user?id=" + follow_id;
	}
	
	// 팔로우 해제
	@GetMapping("deleteFollow")
	public String deleteFollow(String follow_id, HttpSession session, Model model, Map<String, String> map) {
		System.out.println("UserController - deleteFollow()");
		
		String sId = (String)session.getAttribute("sId");
		if (sId == null) {
			model.addAttribute("msg", "로그인 후 이용 가능합니다.");
			return "fail_back";
		}
		
		map.put("sId", sId);
		map.put("follow_id", follow_id);
		
		int deleteCount = userService.deleteFollow(map);
		
		if (deleteCount == 0) {
			model.addAttribute("msg", "팔로우 해제 실패!");
			return "fail_back";
		}
		
		return "redirect:/user?id=" + follow_id;
	}
	
	
	// 팔로우 해제 ajax
	@ResponseBody
	@PostMapping("removeFollow")
	public String removeFollow(String user_id, HttpSession session, Model model, Map<String, String> map) {
		System.out.println("UserController - removeFollow()");
		
		String sId = (String)session.getAttribute("sId");
		if (sId == null) {
			return gson.toJson(map);
		}
		map.put("isLogin", "true");
		
		map.put("sId", sId);
		map.put("follow_id", user_id);
		
		int deleteCount = userService.deleteFollow(map);
		
//		if (deleteCount == 0) {
//			model.addAttribute("msg", "팔로우 해제 실패!");
//			return "fail_back";
//		}
		
		int followerCnt = userService.countFollower(user_id);
		
		map.put("followerCnt", followerCnt + "");
		
		return gson.toJson(map);
	}
	
	// 팔로우 ajax
	@ResponseBody
	@PostMapping("insertFollow")
	public String insertFollow(String user_id, HttpSession session, Model model, Map<String, String> map) {
		System.out.println("UserController - insertFollow()");
		
		String sId = (String)session.getAttribute("sId");
		if (sId == null) {
			return gson.toJson(map);
		}
		map.put("isLogin", "true");
		
		map.put("sId", sId);
		map.put("follow_id", user_id);
		
		int insertCount = userService.insertFollow(map);
		
//		if (insertCount == 0) {
//			model.addAttribute("msg", "팔로우 실패!");
//			return "fail_back";
//		}
		
		int followerCnt = userService.countFollower(user_id);
		
		map.put("followerCnt", followerCnt + "");
		
		return gson.toJson(map);
	}
	
	// 프로필
	@ResponseBody
	@PostMapping("userProfile")
	public String userProfile(String user_id) {
		System.out.println("UserController - userProfile()");
		
		String user_info = userService.selectUserInfo(user_id);
		
		return gson.toJson(user_info);
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
		
		System.out.println("----------------");
		// TODO
		// 모든 프로젝트 불러오는 중... 해당 유저의 프로젝트만 가져오도록 수정 필요.
		List<Map<String, String>> map = userService.selectUploadProjects();
		
		System.out.println(")))))");
		System.out.println(map);
		
		return gson.toJson(map);
	}
	
	// 팔로워
	@ResponseBody
	@PostMapping("userFollower")
	public String userFollower(String user_id, HttpSession session) {
		System.out.println("UserController - userFollower()");
		
		List<Map<String, String>> map = userService.selectUserFollower(user_id);
		
		return gson.toJson(map);
	}
	
	// ajax 팔로우 유무 확인
	@ResponseBody
	@PostMapping("isFollowing")
	public String isFollowing(String user_id, HttpSession session, Map<String, String> map, Model model) {
		System.out.println("UserController - isFollowing()");
		
		String sId = (String)session.getAttribute("sId");
//		if (sId == null) {
//			model.addAttribute("msg", "로그인 후 이용 가능합니다.");
//			model.addAttribute("targetURL", "login");
//			return "forward";
//		}
		
		map.put("sId", sId);
		map.put("id", user_id);
		
		int selectCount = userService.selectIsFollowing(map);

		if (selectCount != 0) {
			map.put("isFollowing", "true");
		}
		
		return gson.toJson(map);
	}
	
	// 팔로잉
	@ResponseBody
	@PostMapping("userFollowing")
	public String userFollowing(String user_id, HttpSession session, Model model) {
		System.out.println("UserController - userFollowing()");
		
		List<Map<String, String>> map = userService.selectUserFollowing(user_id);
		
		return gson.toJson(map);
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
	public String settingUserProfile(HttpSession session, UserVO user) {
		System.out.println("UserController - settingUserProfile()");
		
		String sId = (String)session.getAttribute("sId");
		
		user = userService.getUserProfile(sId);
		
		return gson.toJson(user);
	}
	
	// 유저 설정 프로필 사진 변경
	@ResponseBody
	@PostMapping("settingUpdateUserProfilePic")
	public String settingUpdateUserProfilePic() {
		System.out.println("UserController - settingUpdateUserProfilePic()");
		return "1";
	}
	
	// 유저 설정 프로필 사진 수정
	@ResponseBody
	@PostMapping("uploadUserProfilePic")
	public String uploadUserProfilePic(UserVO user, HttpSession session, Map<String, String> map) {
		System.out.println("UserController - uploadUserProfilePic()");
		
		String sId = (String)session.getAttribute("sId");
		if (sId == null) {
			return gson.toJson(map);
		}
		map.put("isLogin", "true");
		
		user.setUser_id(sId);
		
		String uploadDir = "/resources/upload"; // 가상의 경로
		String saveDir = session.getServletContext().getRealPath(uploadDir); // 실제 업로드 경로
		String subDir = ""; // 서브디렉토리명을 저장할 변수 선언(날짜로 구분)
		
		System.out.println(saveDir);
		
		try {
			LocalDate now = LocalDate.now();
			DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd");
			subDir = now.format(dtf);
			saveDir += "/" + subDir;
			Path path = Paths.get(saveDir);
			Files.createDirectories(path);
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		MultipartFile mFile_picture = user.getProfilePic();
		
		String uuid = UUID.randomUUID().toString();
		user.setUser_picture("");
		
		String fileName_picture = uuid.substring(0, 8) + "_" + mFile_picture.getOriginalFilename();
		
		if(!mFile_picture.getOriginalFilename().equals("")) {
			user.setUser_picture(subDir + "/" + fileName_picture);
		}
		
		// 수정전 기존의 파일경로 가지고 있어야됨.
		String tmpUserPicPath = userService.selectUserPicPath(sId);
		
		int updateCount = userService.updateUserProfilePic(user);
		
		if (updateCount == 0) {
			return gson.toJson(map);
		}
		map.put("isSuccess", "true");
		
		// 실제폴더에 저장.
		try {
			if(!mFile_picture.getOriginalFilename().equals("")) {
				mFile_picture.transferTo(new File(saveDir, fileName_picture));
			}
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		// 수정시 기존의 파일 삭제.
		String uploadPath = "resources/upload";
		try {
			String realPath = session.getServletContext().getRealPath(uploadPath);
			Path path = Paths.get(realPath + "/" + tmpUserPicPath);
			Files.deleteIfExists(path);
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		return gson.toJson(map);
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
	public String settingUpdateUserProfilePro(@RequestParam Map<String, String> map, HttpSession session, Model model) {
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
	
	// 유저 설정 계정 초기 출력 화면
	@ResponseBody
	@PostMapping("settingUserAccount")
	public String settingUserAccount(HttpSession session, UserVO user) {
		System.out.println("UserController - settingUserAccount()");
		
		String sId = (String)session.getAttribute("sId");
		
		user = userService.selectUserAccount(sId);
		
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
	public String isPassEqual(UserVO user, HttpSession session, Map<String, Boolean> map) {
		System.out.println("UserController - isPassEqual()");
		
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		
		String sId = (String)session.getAttribute("sId");
		if (sId == null) {
			return gson.toJson(map);
		}
		map.put("isLogin", true);
		
		user.setUser_id(sId);
		UserVO dbUser = userService.selectUserPass(user);
		
		if(!passwordEncoder.matches(user.getUser_passwd(), dbUser.getUser_passwd())) {
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
	public String settingUpdateUserPhonePro(UserVO user, HttpSession session, Map<String, String> map) {
		System.out.println("UserController - settingUpdateUserPhonePro()");

		String sId = (String)session.getAttribute("sId");
		if (sId == null) {
			return gson.toJson(map);
		}
		map.put("isLogin", "true");
		
		user.setUser_id(sId);
		
		int updateCount = userService.updateUserPhone(user);
		
		if (updateCount == 0) {
			return gson.toJson(map);
		}
		map.put("isSuccess", "true");
		map.put("user_phone", user.getUser_phone());
		
		return gson.toJson(map);
	}
		
	// 유저 설정 계정 연락처 변경 취소
	@ResponseBody
	@PostMapping("settingCancelUpdateUserPhone")
	public String settingCancelUpdateUserPhone() {
		System.out.println("UserController - settingCancelUpdateUserPhone()");
		return "1";
	}
	
	// 유저 설정 카카오 연동 해제
	@ResponseBody
	@PostMapping("settingDisconnectKakao")
	public String settingDisconnectKakao(HttpSession session, Map<String, String> map) {
		System.out.println("UserController - settingDisconnectKakao()");
		
		String sId = (String)session.getAttribute("sId");
		if (sId == null) {
			return gson.toJson(map); 
		}
		map.put("isLogin", "true");
		
		int updateCount = userService.updateKakaoStatus(sId);
		
		if (updateCount == 0) {
//			map.put("isSuccess", "false");
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
	public String settingLeaveUser(HttpSession session, Map<String, String> map, UserVO user) {
		System.out.println("UserController - settingLeaveUser()");
		
		String sId = (String)session.getAttribute("sId");
		
		if (sId == null) {
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
			return gson.toJson(map);
		}
		
		session.invalidate();
		map.put("isSuccess", "true");
		return gson.toJson(map);
	}
	
	// 유저 설정 계정 결제수단 초기 출력 화면
	@ResponseBody
	@PostMapping("settingUserPayment")
	public String settingUserPayment() {
		System.out.println("UserController - settingUserPayment()");
		return "1";
	}
	
	// TODO
	// 유저 설정 계정 배송지 초기 출력 화면
	@ResponseBody
	@PostMapping("settingUserAddress")
	public String settingUserAddress(HttpSession session, AddressVO address, Map<String, Object> map) {
		System.out.println("UserController - settingUserAddress()");
		
		String sId = (String)session.getAttribute("sId");
				
		if (sId == null) {
			return gson.toJson(map);
		}
		map.put("isLogin", "true");
		
		List<AddressVO> addressList =  userService.selectUserAddress(sId);

		map.put("addressList", addressList);
		
		return gson.toJson(map);
	}
	
	// 유저 설정 계정 배송지 등록 중복 확인
	@ResponseBody
	@PostMapping("isDuplicateAddress")
	public String isDuplicateAddress(HttpSession session, Map<String, String> map, AddressVO address) {
		System.out.println("UserController - isDuplicateAddress()");
		
		String sId = (String)session.getAttribute("sId");
		if (sId == null) {
			return gson.toJson(map); 
		}
		map.put("isLogin", "true");
		
		address.setUser_id(sId);
		int selectCount = userService.checkDuplicateAddress(address);
		
		if (selectCount > 0) {
			map.put("isDuplicate", "true");
		}
		
		return gson.toJson(map);
	}

	// 유저 설정 계정 배송지 등록
	@ResponseBody
	@PostMapping("insertUserAddressPro")
	public String insertUserAddressPro(HttpSession session, Map<String, String> map, AddressVO address) {
		System.out.println("UserController - insertUserAddressPro()");
		
		String sId = (String)session.getAttribute("sId");
		if (sId == null) {
			return gson.toJson(map); 
		}
		map.put("isLogin", "true");

		address.setUser_id(sId);
		
		int insertCount = userService.insertUserAddress(address);
		
		if (insertCount == 0) {
			return gson.toJson(map);
		}
		
		map.put("isSuccess", "true");
		
		return gson.toJson(map);
	}
	
	// 유저 설정 계정 배송지 삭제
	@ResponseBody
	@PostMapping("deleteUserAddress")
	public String deleteUserAddress(HttpSession session, Map<String, String> map, int address_idx) {
		System.out.println("UserController - deleteUserAddress()");
		
		String sId = (String)session.getAttribute("sId");
		if (sId == null) {
			return gson.toJson(map); 
		}
		map.put("isLogin", "true");

		int deleteCount = userService.deleteUserAddress(address_idx);
		
		if (deleteCount == 0) {
			return gson.toJson(map);
		}
		
		map.put("isSuccess", "true");
		
		return gson.toJson(map);
	}
		
	// 유저 설정 로그인 유무 확인
	@ResponseBody
	@PostMapping("checkSessionAlive")
	public Boolean checkSessionAlive(HttpSession session, Map<String, String> map) {
		System.out.println("UserController - checkSessionAlive()");
		
		String sId = (String)session.getAttribute("sId");
		if (sId == null) {
			return false; 
		}
		
		return true;
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
