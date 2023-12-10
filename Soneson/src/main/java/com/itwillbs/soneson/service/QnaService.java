package com.itwillbs.soneson.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwillbs.soneson.mapper.QnaMapper;
import com.itwillbs.soneson.vo.MyQuestionVO;
import com.itwillbs.soneson.vo.QnaCateVO;
import com.itwillbs.soneson.vo.QnaVO;


@Service
public class QnaService {
	
	@Autowired
	private QnaMapper mapper;

	// 자주 묻는 질문 목록 조회
	public List<QnaVO> getQnaList(int startRow, int listLimit, int qnaCate_idx) {
		return mapper.selectQnaList(startRow, listLimit, qnaCate_idx);
	}

	// 자주 묻는 질문 목록 수 조회
	public int getQnaListCount(int qnaCate_idx) {
		return mapper.selectQnaListCount(qnaCate_idx);
	}

	// 자주 묻는 질문 카테고리 조회
	public List<QnaCateVO> getQnaCateList() {
		return mapper.selectQnaCateList();
	}

	// 1:1 문의 작성
	public int insertMyQuestion(MyQuestionVO myQuestion) {
		return mapper.insertMyQuestion(myQuestion);
	}
	
	
	
	
}
