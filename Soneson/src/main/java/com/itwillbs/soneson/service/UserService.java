package com.itwillbs.soneson.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwillbs.soneson.mapper.UserMapper;
import com.itwillbs.soneson.vo.AuthInfoVO;
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
	
	// 회원 상세정보 조회 요청 - 아이디 ajax 확인용
	public UserVO getUser(UserVO user, String user_id) {
		
		return mapper.selectUserFint(user, user_id);
	}
	public UserVO getUserPass(UserVO user ) {
		return mapper.selectUser(user);
	}


	// 회원 상세정보 조회 요청 - 이메일 ajax 확인용
	public UserVO getUser2(UserVO user) {
		return mapper.selectUser2(user);
	}
	
	// 회원 정보 변경 요청
	public int updateUser(UserVO user) {
		return mapper.updateUser(user);
	}
	
	// 회원 탈퇴 정보 요청 시 조회
	public UserVO getdeleteUser(UserVO user) {
		return mapper.selectUser(user);
	}

	// 회원 탈퇴 요청
	public int deleteUser(UserVO user) {
		return mapper.deleteUser(user);
		
	}
	
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

	// 이메일 랜덤으로 바꾸기 - 회원 삭제시
	public int updateRandomEmail(UserVO user) {
		return mapper.updateRandomEmail(user);
	}

	// 회원 삭제시 이메일 중복체크용
	public int checkDuplicateEmail(String deleteEmail) {
		return mapper.checkDuplicateEmail(deleteEmail);
	}


	
	
	

//	=======================================================
	
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

	
	
}














