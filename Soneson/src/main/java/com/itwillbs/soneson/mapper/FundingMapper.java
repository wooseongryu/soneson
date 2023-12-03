package com.itwillbs.soneson.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.itwillbs.soneson.vo.FundingVO;

@Mapper
public interface FundingMapper {
	
	// 후원 관련 내용 확인 시 로그인 여부
	FundingVO selectIdFund(String sId);

}
