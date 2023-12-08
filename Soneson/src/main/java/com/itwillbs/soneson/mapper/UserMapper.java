package com.itwillbs.soneson.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.web.bind.annotation.RequestParam;

import com.itwillbs.soneson.vo.AddressVO;
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

	// 회원 마이페이지 - 비밀번호 확인 ajax
	UserVO selectUserPass(UserVO user);

	// 회원 상세정보 조회 - 회원가입 아이디 확인 ajax용
	UserVO selectUserId(UserVO user);

	// 회원 상세정보 조회 - 회원가입 이메일 확인 ajax용
	UserVO selectUserEmail(UserVO user);
	
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
	UserVO getUserKakaoLogin(String kakao_id);

	int updateKakaoId(UserVO user);

	// 회원 탈퇴시 랜덤이메일로 이메일 변경처리
	int updateRandomEmail(UserVO user);



	
	
	
	// ===================================================
	
	// 유저 설정 페이지 초기값
	UserVO getUserProfile(String sId);

	// 유저 설정 변경 pro
	int updateUserInfo(Map<String, String> map);

	// 유저 핀테크 조회
	UserVO selectUserFint(@Param("user")UserVO user, @Param("user_id")String user_id);
	
	// 유저 비밀번호 변경
	int updatePassword(UserVO user);

	// 유저 설정 계정 초기값
	UserVO selectUserAccount(String sId);

	// 유저 휴대폰 번호 변경
	int updateUserPhone(UserVO user);

	// 유저 설정 카카오 연동 해제
	int updateKakaoStatus(String sId);

	// 유저 설정 계정 회원탈퇴 처리
	int updateUserLeave(UserVO user);

	// 삭제된 이메일 체크
	int checkDuplicateEmail(String deleteEmail);

	// 유저 설정 계정 배송지 등록 중복 확인
	int checkDuplicateAddress(AddressVO address);

	// 유저 설정 계정 배송지 등록
	int insertUserAddress(AddressVO address);

	// 유저 설정 계정 배송지 초기 출력 화면
	List<AddressVO> selectUserAddress(String sId);

	// 유저 설정 계정 배송지 삭제
	int deleteUserAddress(int address_idx);

	// 유저 설정 프로필사진 등록 유무 확인
	boolean selectIsUserProfilePicExist(String sId);

	// 유저 설정 프로필 사진 업로드
	int updateUserProfilePic(UserVO user);
}















