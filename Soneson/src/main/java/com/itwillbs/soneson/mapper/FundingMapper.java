package com.itwillbs.soneson.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.web.bind.annotation.RequestParam;

import com.itwillbs.soneson.vo.FundingVO;

@Mapper
public interface FundingMapper {
	
	// 후원 관련 내용 확인 시 로그인 여부
	FundingVO selectIdFund(String sId);
	
	
	//선택한 후원 정보
	Map<String, String> selectproject(int pro_code);

	//선택 리워드 정보 (나중에 @ 추가하기)
	Map<String, String> selectReward(@Param("pro_code") int pro_code, @Param("reward_code") int reward_code);

	//유저 배송정보
	Map<String, String> selectUser(String sId);


	List<Map<String, String>> selectAddress(String id);

	//fund insert
	int insertUserFund(Map<String, Object> map);

	int insertUserAuth(Map<String, Object> map);

	int insertUserAddress(Map<String, Object> map);
	//배송지등록
	int insertAddress(Map<String, String> map);


	// 후원현황
	List<Map<String, Object>> selectUserFundingList(String sId);

	// 펀딩 취소
	int deleteFundCount(Map<String, Object> map);

	// 펀딩 취소 - 주소 데이터 삭제 
	int deleteAddressCount(Map<String, Object> map);
	
	// 펀딩 취소 - 인포데이터 데이터 삭제
	int deleteInfoCount(Map<String, Object> map);


	int selectUserCount(Map<String, Object> map);

	// 펀딩한 유저 카운트
	int selectFundCount(int project_code);

	// 펀딩 상세페이지 조회
	Map<String, Object> selectfundingDetail(@Param("project_code") int project_code, @Param("sId") String sId);

}
