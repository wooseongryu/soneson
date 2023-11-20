package com.itwillbs.soneson.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.itwillbs.soneson.vo.AuthInfoVO;
import com.itwillbs.soneson.vo.UserVO;


@Mapper
public interface UserMapper {

	// 멤버정보 등록 - 추상메서드 정의
	int insertUser(UserVO user); // public abstract 생략되어 있음

	// 멤버 상세정보 조회
	UserVO selectUser(String email);

	// 멤버 목록 조회
	List<UserVO> selectUserList();

	
	// 기존 인증정보 조회
	AuthInfoVO selectAuthInfo(String id);
	
	// 새 인증정보 등록
	// 주의! 메서드 파라미터 2개 이상을 XML 에서 접근하기 위해서는
	// 각 파라미터마다 @Param 어노테이션을 통해 각 파라미터명을 별도로 지정해줘야한다!
	// => @Param("파라미터명") 데이터타입 변수명
	void insertAuthInfo(@Param("id") String id, @Param("authCode") String authCode);
	// 또는 단일 VO 객체를 사용하면 해결
//	void insertAuthInfo(AuthInfoVO authInfo);

	// 기존 인증정보 갱신
	void updateAuthInfo(@Param("id") String id, @Param("authCode") String authCode);

	// 회원 인증상태 변경
	void updateMailAuthStatus(String id);

	// 인증정보 삭제
	void deleteAuthInfo(String id);

	// 암호화 된 패스워드 조회
	String selectPasswd(UserVO user);

	// 회원 상세정보 조회
	UserVO selectUser(UserVO user);

	// 회원 상세정보 조회
	UserVO selectUser2(UserVO user);
	
	// 회원 정보 변경
	int updateUser(UserVO user);

	
	// 회원 탈퇴 요청
	int deleteUser(UserVO user);

	

	// 아이디 찾기
	UserVO selectIdSearch(UserVO user);
	
	// 비밀번호 재발급용 아이디 확인
	UserVO selectCheckPasswd(UserVO user);


	// 비밀번호 찾기
	int selectPasswdSearch(UserVO user);

	// 임시 비밀번호 변경
	int updatePasswdChange(UserVO user);

	// 카카오 등록된 회원 찾기
	UserVO getMemberKakaoLogin(String kakao_id);

	int updateKakaoId(UserVO user);
	
	int updateRandomEmail(UserVO user);

	int checkDuplicateEmail(String deleteEmail);

	

	
	
}














