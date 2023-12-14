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
}
