package com.itwillbs.soneson.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.itwillbs.soneson.vo.ResponseTokenVO;


@Mapper
public interface BankMapper {

	// 토큰 정보 등록
	void insertToken(@Param("id") String id, @Param("token") ResponseTokenVO responseToken);

	// 테스트...
	List<Map<String, String>> selectUserToken(String project_code);

	// Fund테이블 status 변경
	int updateFundStatus(String fundIdx);

	// 모금 성공한 프로젝트 리스트
	List<Map<String, String>> selectStandByPaymentProject();

	// 입금이체 프로젝트 리스트
	List<Map<String, String>> selectStandByRefundProject();
	
	//access_token 여부확인
	int selectExistAccessToken(String id);
	
	//토큰 업데이트
	void updateToken(@Param("id") String id, @Param("token") ResponseTokenVO responseToken);
	
}
