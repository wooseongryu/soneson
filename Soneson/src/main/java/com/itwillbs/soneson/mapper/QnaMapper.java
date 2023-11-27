package com.itwillbs.soneson.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.itwillbs.soneson.vo.QnaCateVO;
import com.itwillbs.soneson.vo.QnaVO;


@Mapper
public interface QnaMapper {
	
	// 자주묻는 질문 목록 조회
	List<QnaVO> selectQnaList(@Param("startRow") int startRow, 
			@Param("listLimit") int listLimit,
			@Param("qnaCate_idx") int qnaCate_idx);

	// 자주묻는 질문 목록 수 조회
	int selectQnaListCount(@Param("qnaCate_idx") int qnaCate_idx);


	// 자주묻는 질문 카테고리 조회
	List<QnaCateVO> selectQnaCateList();

}
