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
	List<Map<String, String>> selectUserToken();
	
}
