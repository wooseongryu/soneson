package com.itwillbs.soneson.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.itwillbs.soneson.service.AdminService;
import com.itwillbs.soneson.service.QnaService;
import com.itwillbs.soneson.vo.PageInfoVO;
import com.itwillbs.soneson.vo.QnaCateVO;
import com.itwillbs.soneson.vo.QnaVO;



@Controller
public class QnaController {
	
	@Autowired
	private QnaService qnaService;
	
	@Autowired
	private AdminService adminService;
	
	/*====================================================================
	 * - 목차 -
	 * 1. 자주묻는 질문
	 * ===================================================================
	 * */
	
	/*====================================================================
	 * 1. 자주묻는 질문
	 * ===================================================================
	 * */
	// 자주 묻는 질문 목록
	@GetMapping("qna")
	public String qna(
			@RequestParam(defaultValue = "1") int pageNum, 
			Model model,
			@RequestParam(defaultValue = "-1") int qnaCate_idx) {
		System.out.println("event_qnaController - qna");
		
		int listLimit = 10; // 한 페이지에서 표시할 글 목록 갯수
		
		int startRow = (pageNum - 1) * listLimit; // 조회 시작 행(레코드) 번호
		
		List<QnaVO> qnaList = qnaService.getQnaList(startRow, listLimit, qnaCate_idx);

		List<QnaCateVO> qnaCateList = qnaService.getQnaCateList();
		
		System.out.println("qnaCateIdx: " + qnaCate_idx);
		
		int listCount = qnaService.getQnaListCount(qnaCate_idx);
		
		int pageListLimit = 3;
		
		int maxPage = listCount / listLimit + (listCount % listLimit > 0 ? 1 : 0);
		
		int startPage = (pageNum - 1) / pageListLimit * pageListLimit + 1;
		
		int endPage = startPage + pageListLimit - 1;
		
		if(endPage > maxPage) {
			endPage = maxPage;
		}
		
		
		PageInfoVO pageInfo = new PageInfoVO(listCount, pageListLimit, maxPage, startPage, endPage);
		model.addAttribute("qnaList", qnaList);
		model.addAttribute("qnaCateList", qnaCateList);
		model.addAttribute("pageInfo", pageInfo);
		
		return "soneson/event_qna/qna";
	}
	
	// 자주 묻는 질문 상세글 보기
	@GetMapping("qnaDetail")
	public String qnaDetail(String qnaCate_idx , Model model) {
		System.out.println("event_qnaController - qnaDetail");
		
		QnaVO qna = adminService.getQna(qnaCate_idx).get(0);
		
		model.addAttribute("qna", qna);
		model.addAttribute("replaceChar", "\n");
		
		return "soneson/event_qna/qna_detail";
	}
	
	
}
