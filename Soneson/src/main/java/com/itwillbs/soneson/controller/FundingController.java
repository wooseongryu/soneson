package com.itwillbs.soneson.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.itwillbs.soneson.service.FundingService;
import com.itwillbs.soneson.vo.FundingVO;
@Controller
public class FundingController {
	@Autowired
	private FundingService fundingService;
	
	/*====================================================================
	 * 후원 관련 세부 페이지
	 * ===================================================================
	 * */
	
	// 후원 현황(목록) 페이지
	@GetMapping("fundingList")
	public String fundingList() {
		System.out.println("FundingController - fundingList()");
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
		
	
		
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
