package com.itwillbs.soneson.service;

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
}
