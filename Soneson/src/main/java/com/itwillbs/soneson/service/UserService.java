package com.itwillbs.soneson.service;

import java.nio.file.Paths;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwillbs.soneson.mapper.UserMapper;
import com.itwillbs.soneson.vo.AddressVO;
import com.itwillbs.soneson.vo.AuthInfoVO;
import com.itwillbs.soneson.vo.MyQuestionVO;
import com.itwillbs.soneson.vo.UserVO;


// 스프링에서 서비스 역할을 수행할 클래스 정의 시 @Service 어노테이션 지정(@Component 가능)
// => @Service 어노테이션이 붙은 클래스는 스프링 빈으로 등록되어
//    컨트롤러 클래스에서 DI 를 통해 자동으로 주입받을 수 있다!
@Service
public class UserService {
	// UserMapper 객체 자동 주입
	@Autowired
	private UserMapper mapper;
	

	// 회원가입 요청 작업을 위한 joinUser() 메서드 정의
	public int insertUser(UserVO user) {
		// UserMapper - insertUser() 메서드를 호출하여 학생정보 등록 요청
		// => 파라미터 : UserVO 객체   리턴타입 : int
		// => 메서드 호출 완료 후 별도의 작업이 없으므로 return 문 뒤에 바로 메서드 호출 코드 기술
		return mapper.insertUser(user); 
	}

	// 인증 정보 저장 요청
	public void registAuthInfo(String id, String authCode) {
		// 기존 인증정보가 존재하는지 여부 확인
		// MemberMapper - selectAuthInfo() 메서드 호출하여 기존 인증정보 조회
		// => 파라미터 : 아이디   리턴타입 : AuthInfoVO(authInfo)
		AuthInfoVO authInfo = mapper.selectAuthInfo(id);
		
		// 기존 인증정보 존재 여부 판별
		if(authInfo == null) { // 기존 인증정보 존재하지 않을 경우(새 인증정보 추가)
			System.out.println("기존 인증정보 없음!");
			
			// MemberMapper - insertAuthInfo() 메서드 호출하여 새 인증정보 추가
			mapper.insertAuthInfo(id, authCode);
		} else { // 기존 인증정보 존재(기존 인증정보 갱신)
			System.out.println("기존 인증정보 있음!");
			
			// MemberMapper - updateAuthInfo() 메서드 호출하여 기존 인증정보 갱신
			mapper.updateAuthInfo(id, authCode);
		}
	}
	
	
	// 이메일 인증 요청
	public boolean emailAuth(AuthInfoVO authInfo) {
		boolean isAuthSuccess = false;
		
		// MemberMapper - selectAuthInfo() 메서드를 호출하여 아이디가 일치하는 인증정보 조회(재사용)
		AuthInfoVO currentAuthInfo = mapper.selectAuthInfo(authInfo.getAuth_id());
		System.out.println("전달받은 인증정보 : " + authInfo);
		System.out.println("조회된 기존 인증정보 : " + currentAuthInfo);
		
		// 조회된 인증정보 존재할 경우
		if(currentAuthInfo != null) {
			// 하이퍼링크 통해 전달받은 인증코드와 조회된 인증정보의 인증코드 문자열 비교
			if(authInfo.getAuth_code().equals(currentAuthInfo.getAuth_code())) { // 인증코드 일치
				// 1. Mapper - updateMailAuthStatus() 메서드를 호출하여
				//    member 테이블의 인증상태(mail_auth_status)를 "Y" 로 변경
				// => 파라미터 : 아이디
				mapper.updateMailAuthStatus(authInfo.getAuth_id());
				
				// 2. Mapper - deleteAuthInfo() 메서드를 호출하여
				//    auth_info 테이블의 인증정보 삭제
				// => 파라미터 : 아이디
				mapper.deleteAuthInfo(authInfo.getAuth_id());
				
				// 3. isAuthSuccess 를 true 로 변경
				isAuthSuccess = true;
			}
		}
		
		return isAuthSuccess;
	}
	// 암호화 된 패스워드 조회 요청
	public String getPasswd(UserVO user) {
		return mapper.selectPasswd(user);
	}
	
	// 멤버 상세정보 조회 요청
	public UserVO getUserInfo(String email) {
		return mapper.selectUser(email);
	}

	// 멤버 목록 조회 요청
	public List<UserVO> getUserList() {
		return mapper.selectUserList();
	}
	
	// 회원 핀테크 정보 확인용
	public UserVO getUser(UserVO user, String user_id) {
		
		return mapper.selectUserFint(user, user_id);
	}



	// 회원 상세정보 조회 요청 -아이디  ajax 확인용
	public UserVO selectUserId(UserVO user) {
		return mapper.selectUserId(user);
	}

	// 회원 상세정보 조회 요청 - 이메일 ajax 확인용
	public UserVO selectUserEmail(UserVO user) {
		return mapper.selectUserEmail(user);
	}
	
//	// 회원 정보 변경 요청
//	public int updateUser(UserVO user) {
//		return mapper.updateUser(user);
//	}
	
//	// 회원 탈퇴 정보 요청 시 조회
//	public UserVO getdeleteUser(UserVO user) {
//		return mapper.selectUser(user);
//	}

//	// 회원 탈퇴 요청
//	public int deleteUser(UserVO user) {
//		return mapper.deleteUser(user);
//	}
	
	// 아이디 찾기 
	public UserVO userIdSearch(UserVO user) {
		return mapper.selectIdSearch(user);
	}


	// 비밀번호 찾기
	public int userPasswdSearch(UserVO user) {
		System.out.println("UserService - userPasswdSearch()");
		return mapper.selectPasswdSearch(user);
	}

	// 임시 비밀번호 변경
	public int userPasswdChange(UserVO user) {
		System.out.println("UserService - userPasswdChange()");
		return mapper.updatePasswdChange(user);
	}

	// 카카오 등록된 회원 찾기
	public UserVO getUserKakaoLogin(String kakao_id) {
		System.out.println("UserService - getUserKakaoLogin()");
		return mapper.getUserKakaoLogin(kakao_id);
	}

	// 카카오 아이디 연동하기
	public int updateKakaoId(UserVO user) {
		System.out.println("UserService - updateKakao");
		return mapper.updateKakaoId(user);
	}

//	// 이메일 랜덤으로 바꾸기 - 회원 삭제시
//	public int updateRandomEmail(UserVO user) {
//		return mapper.updateRandomEmail(user);
//	}

//	// 회원 삭제시 이메일 중복체크용
//	public int checkDuplicateEmail(String deleteEmail) {
//		return mapper.checkDuplicateEmail(deleteEmail);
//	}


	
	
	

//	=======================================================
	
	
	public UserVO selectUserPass(UserVO user ) {
		return mapper.selectUserPass(user);
	}
	
	// 유저 설정 페이지 초기값
	public UserVO getUserProfile(String sId) {
		System.out.println("UserService - getUserProfile()");
		
		return mapper.getUserProfile(sId);
	}

	// 유저 설정 변경 pro
	public int updateUserInfo(Map<String, String> map) {
		System.out.println("UserService - updateUserInfo()");
		
		return mapper.updateUserInfo(map);
	}

	// 유저 비밀번호 변경
	public int updatePassword(UserVO user) {
		System.out.println("UserService - updatePassword()");
		
		return mapper.updatePassword(user);
	}

	// 유저 설정 계정 초기값
	public UserVO selectUserAccount(String sId) {
		System.out.println("UserService - selectUserAccount()");
		
		return mapper.selectUserAccount(sId);
	}
	
	// 유저 휴대폰 번호 변경
	public int updateUserPhone(UserVO user) {
		System.out.println("UserService - updateUserPhone()");
		
		return mapper.updateUserPhone(user);
	}
	
	// 유저 설정 카카오 연동 해제
	public int updateKakaoStatus(String sId) {
		System.out.println("UserService - updateKakaoStatus()");
		
		return mapper.updateKakaoStatus(sId);
	}

	// 유저 설정 계정 회원탈퇴 처리
	public int updateUserLeave(UserVO user) {
		System.out.println("UserService - updateUserLeave()");
		
		return mapper.updateUserLeave(user);
	}

	// 유저 설정 회원탈퇴 랜덤 이메일 변경 중복 확인
	public int checkDuplicateEmail(String deleteEmail) {
		System.out.println("UserService - checkDuplicateEmail()");
		
		return mapper.checkDuplicateEmail(deleteEmail);
	}

	// 유저 설정 계정 배송지 등록 중복 확인
	public int checkDuplicateAddress(AddressVO address) {
		System.out.println("UserService - checkDuplicateAddress()");
		
		return mapper.checkDuplicateAddress(address);
	}

	// 유저 설정 계정 배송지 등록
	public int insertUserAddress(AddressVO address) {
		System.out.println("UserService - insertUserAddress()");
		
		return mapper.insertUserAddress(address);
	}

	// 유저 설정 계정 배송지 초기 출력 화면
	public List<AddressVO> selectUserAddress(String sId) {
		System.out.println("UserService - selectUserAddress()");
		
		return mapper.selectUserAddress(sId);
	}

	// 유저 설정 계정 배송지 삭제
	public int deleteUserAddress(int address_idx) {
		System.out.println("UserService - deleteUserAddress()");
		
		return mapper.deleteUserAddress(address_idx);
	}

	// 유저 설정 프로필사진 등록 유무 확인
	public boolean selectIsUserProfilePicExist(String sId) {
		System.out.println("UserService - selectIsUserProfilePicExist()");
		
		return mapper.selectIsUserProfilePicExist(sId);
	}

	// 유저 설정 프로필 사진 업로드
	public int updateUserProfilePic(UserVO user) {
		System.out.println("UserService - updateUserProfilePic()");
		
		return mapper.updateUserProfilePic(user);
	}

	// 유저 설정 프로필 수정 전 기존 파일 경로 가져오기
	public String selectUserPicPath(String sId) {
		System.out.println("UserService - selectUserPicPath()");
		
		return mapper.selectUserPicPath(sId);
	}

	// 유저프로필 메인 페이지
	public Map<String, String> selectUserMainInfo(Map<String, String> map) {
		System.out.println("UserService - selectUserMainInfo()");
		
		return mapper.selectUserMainInfo(map);
	}

	// 유저프로필 메인 페이지 유저 존재 유무 확인
	public int selectExistUser(String id) {
		System.out.println("UserService - selectExistUser()");
		
		return mapper.selectExistUser(id);
	}

	// 유저 정보
	public String selectUserInfo(String user_id) {
		System.out.println("UserService - selectUserInfo()");
		
		return mapper.selectUserInfo(user_id);
	}

	// 팔로우
	public int insertFollow(Map<String, String> map) {
		System.out.println("UserService - insertFollow()");
		
		return mapper.insertFollow(map);
	}

	// 팔로우 해제
	public int deleteFollow(Map<String, String> map) {
		System.out.println("UserService - deleteFollow()");
		
		return mapper.deleteFollow(map);
	}

	// 팔로워
	public List<Map<String, String>> selectUserFollower(String user_id) {
		System.out.println("UserService - selectUserFollower()");
		
		return mapper.selectUserFollower(user_id);
	}

	// ajax 팔로우 유무 확인
	public int selectIsFollowing(Map<String, String> map) {
		System.out.println("UserService - selectIsFollowing()");
		
		return mapper.selectIsFollowing(map);
	}

	// 팔로워 수
	public int countFollower(String user_id) {
		System.out.println("UserService - UserService()");
		
		return mapper.countFollower(user_id);
	}

	// 팔로잉
	public List<Map<String, String>> selectUserFollowing(String user_id) {
		System.out.println("UserService - selectUserFollowing()");
		
		return mapper.selectUserFollowing(user_id);
	}

	
	
	// 1대1 문의 내역
	public List<MyQuestionVO> selectUserOTO(String sId) {
		return mapper.selectUserOTO(sId);
	}

	public MyQuestionVO selectUserAnswer(String myQuestion_num) {
		return mapper.selectUserAnswer(myQuestion_num);
	}

	// 유저 프로필 올린 프로젝트
	public List<Map<String, String>> selectUploadProjects(String user_id) {
		System.out.println("UserService - selectUploadProjects()");
		
		return mapper.selectUploadProjects(user_id);
	}
	
	// 유저 올린 프로젝트
	public List<Map<String, String>> selectUploadProjectList(String sId) {
		System.out.println("UserService - selectUploadProjectList(sId)");
		
		return mapper.selectUploadProjectList(sId);
	}

	// 유저 심사중 프로젝트
	public List<Map<String, String>> selectUserProjectExam(String sId) {
		System.out.println("UserService - selectUserProjectExam()");
		
		return mapper.selectUserProjectExam(sId);
	}

	// 유저 승인된 프로젝트
	public List<Map<String, String>> selectUserProjectApprove(String sId) {
		System.out.println("UserService - selectUserProjectApprove()");
		
		return mapper.selectUserProjectApprove(sId);
	}

	// 유저 반려된 프로젝트
	public List<Map<String, String>> selectUserProjectReject(String sId) {
		System.out.println("UserService - selectUserProjectReject()");
		
		return mapper.selectUserProjectReject(sId);
	}

	// 유저 공개예정 프로젝트
	public List<Map<String, String>> selectUserProjectRelease(String sId) {
		System.out.println("UserService - selectUserProjectRelease()");
		
		return mapper.selectUserProjectRelease(sId);
	}

	// 유저 진행중 프로젝트
	public List<Map<String, String>> selectUserProjectProceed(String sId) {
		System.out.println("UserService - selectUserProjectProceed()");
		
		return mapper.selectUserProjectProceed(sId);
	}

	// 유저 마감된 프로젝트
	public List<Map<String, String>> selectUserProjectEnd(String sId) {
		System.out.println("UserService - selectUserProjectEnd()");
		
		return mapper.selectUserProjectEnd(sId);
	}

	public List<Map<String, String>> selectfundingDonerInfoList(Map<String, String> map) {
		return mapper.selectfundingDonerInfoList(map);
	}

	// 유저 작성중인 프로젝트
	public List<Map<String, String>> selectWritingProjectList(String sId) {
		return mapper.selectWritingProjectList(sId);
	}

	// 로그인시 프로필, 성윤
	// 1217 엄성윤 헤더 프로필
	public Map<String, String> selectUserPicture(String user_id) {
		return mapper.selectUserPicture(user_id);
	}

	// 유저프로필 후원한 프로젝트
	public List<Map<String, String>> selectSupportProjects(String user_id) {
		System.out.println("UserService - selectSupportProjects()");
		
		return mapper.selectSupportProjects(user_id);
	}
	
	
	//작성 중인 프로젝트 삭제
	public int deleteSampleProject(int project_code) {
		return mapper.deleteSampleProject(project_code);
	}

	
}














