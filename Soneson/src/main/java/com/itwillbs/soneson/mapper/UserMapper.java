package com.itwillbs.soneson.mapper;

import java.nio.file.Paths;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.web.bind.annotation.RequestParam;

import com.itwillbs.soneson.vo.AddressVO;
import com.itwillbs.soneson.vo.AuthInfoVO;
import com.itwillbs.soneson.vo.MyQuestionVO;
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

	// 유저 설정 프로필 수정 전 기존 파일 경로 가져오기
	String selectUserPicPath(String sId);

	// 유저프로필 메인 페이지
	Map<String, String> selectUserMainInfo(Map<String, String> map);

	// 유저프로필 메인 페이지 유저 존재 유무 확인
	int selectExistUser(String id);

	// 유저 정보
	String selectUserInfo(String user_id);

	// 팔로우
	int insertFollow(Map<String, String> map);

	// 팔로우 해제
	int deleteFollow(Map<String, String> map);

	// 팔로워
	List<Map<String, String>> selectUserFollower(String user_id);

	// ajax 팔로우 유무 확인
	int selectIsFollowing(Map<String, String> map);

	// 팔로워 수
	int countFollower(String user_id);

	// 팔로잉
	List<Map<String, String>> selectUserFollowing(String user_id);

	
	// 1대1문의 
	List<MyQuestionVO> selectUserOTO(String sId);

	// 1대1문의보기
	MyQuestionVO selectUserAnswer(String myQuestion_num);
	
	// 유저 프로필 올린 프로젝트
	List<Map<String, String>> selectUploadProjects(String user_id);

	
	// 유저 올린 프로젝트
	List<Map<String, String>> selectUploadProjectList(String sId);

	
	// 유저 심사중 프로젝트
	List<Map<String, String>> selectUserProjectExam(String sId);

	// 유저 승인된 프로젝트
	List<Map<String, String>> selectUserProjectApprove(String sId);

	// 유저 반려된 프로젝트
	List<Map<String, String>> selectUserProjectReject(String sId);

	// 유저 공개예정 프로젝트
	List<Map<String, String>> selectUserProjectRelease(String sId);

	// 유저 진행중인 프로젝트
	List<Map<String, String>> selectUserProjectProceed(String sId);

	// 유저 마감된 프로젝트
	List<Map<String, String>> selectUserProjectEnd(String sId);

	// 프로젝트 후원자 조회
	List<Map<String, String>> selectfundingDonerInfoList(Map<String, String> map);

	// 유저 작성중인 프로젝트
	List<Map<String, String>> selectWritingProjectList(String sId);

	// 1217 엄성윤 헤더 프로필
	Map<String, String> selectUserPicture(String user_id);

	// 유저프로필 후원한 프로젝트
	List<Map<String, String>> selectSupportProjects(String user_id);
	
	
	//작성 중인 프로젝트 삭제
	int deleteSampleProject(int project_code);

}















