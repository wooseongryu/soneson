package com.itwillbs.soneson.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.itwillbs.soneson.vo.ResponseTokenVO;


@Mapper
public interface BankMapper {

	// 토큰 정보 등록
	void insertToken(@Param("id") String id, @Param("token") ResponseTokenVO responseToken);
	
}
