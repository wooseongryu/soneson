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
import com.itwillbs.soneson.vo.MyQuestionVO;
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
	 * 자주묻는 질문
	 * ===================================================================
	 * */
	
	/*====================================================================
	 * 자주묻는 질문
	 * ===================================================================
	 * */
	// 자주 묻는 질문 목록
	@GetMapping("qna")
	public String qna(
			@RequestParam(defaultValue = "1") int pageNum, 
			Model model,
			@RequestParam(defaultValue = "-1") int qnaCate_idx) {
		System.out.println("QnaController - qna");
		
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
		System.out.println("QnaController - qnaDetail");
		
		QnaVO qna = adminService.getQna(qnaCate_idx).get(0);

		List<QnaCateVO> qnaCateList = qnaService.getQnaCateList();
		
		model.addAttribute("qna", qna);
		model.addAttribute("qnaCateList", qnaCateList);
		model.addAttribute("replaceChar", "\n");
		
		return "soneson/event_qna/qna_detail";
	}

	// 1대1 문의 등록폼
	@GetMapping("oneToOneQna")
	public String oneToOneQna(String qnaCate_idx , Model model) {
		System.out.println("QnaController - oneToOneQna");
		return "soneson/event_qna/one_to_one_qna";
	}
	
	
	// 1대1 문의 등록 처리
	@PostMapping("oneToOneQnaPro")
	public String oneToOneQnaPro(HttpSession session, MyQuestionVO myQuestion, Model model) {
		System.out.println("QnaController - oneToOneQnaPro");
		
		String sId = (String)session.getAttribute("sId");
		
		if (!sId.equals(myQuestion.getMyQuestion_id())) {
			model.addAttribute("msg", "잘못된 접근입니다!");
			return "fail_back";
		}
	
		
		int insertCount = qnaService.insertMyQuestion(myQuestion);
		
		if(insertCount > 0) { // 성공
			model.addAttribute("msg", "1:1 문의가 등록되었습니다");
			model.addAttribute("targetURL", "./");
			return "forward";
		} else { // 실패
			model.addAttribute("msg", "1:1 문의 등록 실패");
			return "fail_back";
		}
		
		
	}
	
	
}
