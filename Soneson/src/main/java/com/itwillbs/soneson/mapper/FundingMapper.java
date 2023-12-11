package com.itwillbs.soneson.mapper;

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

}
