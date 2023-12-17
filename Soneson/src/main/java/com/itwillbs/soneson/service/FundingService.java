package com.itwillbs.soneson.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwillbs.soneson.mapper.FundingMapper;
import com.itwillbs.soneson.vo.FundingVO;
@Service
public class FundingService {
	@Autowired
	private FundingMapper mapper;
	
	// 후원 관련 내용 확인 시 로그인 여부
	public FundingVO selectIdFund(String sId) {
		return mapper.selectIdFund(sId) ;
	}
	
	
	// 선택 후원정보 받아오기
	public Map<String, String> selectproject(int pro_code) {
		return mapper.selectproject(pro_code);
	}

	// 선택 리워드 정보
	public Map<String, String> selectReward(int pro_code, int reward_code) {
		return mapper.selectReward(pro_code, reward_code);
	}

	//유저 배송정보
	public Map<String, String> selectUser(String sId) {
		return mapper.selectUser(sId);
	}


	public List<Map<String, String>> selectAddress(String id) {
		return mapper.selectAddress(id);
	}

	//fund테이블 저장
	public int insertUserFund(Map<String, Object> map) {
		return mapper.insertUserFund(map);
	}

	//funduserAuth
	public int insertUserAuth(Map<String, Object> map) {
		return mapper.insertUserAuth(map);
	}


	public int insertUserAddress(Map<String, Object> map) {
		return mapper.insertUserAddress(map);
	}

	//후원페이지 주소저장
	public int insertAddress(Map<String, String> map) {
		return mapper.insertAddress(map);
	}


	
	// 후원현황
	public List<Map<String, Object>> selectUserFundingList(String sId) {
		return mapper.selectUserFundingList(sId);
	}

	// 펀딩 취소 - 데이터 삭제
	public int deleteFundCount(Map<String, Object> map) {
		return mapper.deleteFundCount(map);
	}

	// 펀딩 취소 - 주소 데이터 삭제
	public int deleteAddressCount(Map<String, Object> map) {
		return mapper.deleteAddressCount(map);
	}
	
	// 펀딩 취소 - 인포데이터 데이터 삭제
	public int deleteInfoCount(Map<String, Object> map) {
		return mapper.deleteInfoCount(map);
	}


	public int selectUserCount(Map<String, Object> map) {
		return mapper.selectUserCount(map);
	}

	// 후원성공시 유저카운트 
	public int selectFundCount(int project_code) {
		return mapper.selectFundCount(project_code);
	}

	// 펀딩 상세페이지 조회
	public Map<String, Object> selectfundingDetail(int project_code, String sId) {

		return mapper.selectfundingDetail(project_code, sId);
	}
}
