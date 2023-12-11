package com.itwillbs.soneson.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.itwillbs.soneson.service.FundingService;
import com.itwillbs.soneson.vo.FundingVO;
import com.itwillbs.soneson.vo.ProjectVO;
@Controller
public class FundingController {
	@Autowired
	private FundingService service;
	
	/*====================================================================
	 * 후원 관련 세부 페이지
	 * ===================================================================
	 * */
	
	// 후원 현황(목록) 페이지
	@GetMapping("fundingList")
	public String fundingList(HttpSession session, Model model, FundingVO fund) {
		System.out.println("FundingController - fundingList()");
//		
//		String sId = (String)session.getAttribute("sId");
//		
//		if(sId == null) {
//			model.addAttribute("msg", "로그인 후 이용 가능 합니다.");
//			model.addAttribute("targetURL", "login");
//			return "forward";
//		}
//		fund = service.selectIdFund(sId);
//		System.out.println(fund);
//		model.addAttribute("fund", fund);
		
		return "mypage/funding/funding_list";
		
	}
	
	// 후원(결제) 완료 페이지
	@GetMapping("fundingSuccess")
	public String fundingSuccess() {
		System.out.println("FundingController - fundingSuccess()");
		


		return "mypage/funding/funding_success";
	}
	
	// 후원(결제) 취소 확인 페이지
	@GetMapping("fundingCancel")
	public String fundingCancel() {
		System.out.println("FundingController - fundingCancel()");
		

		
		return "mypage/funding/funding_cancel";
	}
	
	// 후원 상세 페이지
	@GetMapping("fundingDetail")
	public String fundingDetail() {
		System.out.println("FundingController - fundingDetail()");
		
	
		return "mypage/funding/funding_detail";
	}
		
	//세부내용에서 후원하기 버튼 클릭 시 결제페이지 이동
	@GetMapping("fundingPaymentform")
	public String fundingPaymentform() {
		
		return "";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
