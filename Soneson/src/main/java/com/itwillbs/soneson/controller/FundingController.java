package com.itwillbs.soneson.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.itwillbs.soneson.service.BankApiClient;
import com.itwillbs.soneson.service.FundingService;
import com.itwillbs.soneson.service.ProjectService;
import com.itwillbs.soneson.vo.FundingVO;
import com.itwillbs.soneson.vo.ProjectVO;
import com.itwillbs.soneson.vo.ResponseUserInfoVO;
@Controller
public class FundingController {
	@Autowired
	private FundingService service;
	
	@Autowired
	private BankApiClient bankApiClient;
	
	@Autowired
	private ProjectService projectservice;
	
	Gson gson = new Gson();
	
	/*====================================================================
	 * 후원 관련 세부 페이지
	 * ===================================================================
	 * */
	
	@GetMapping("fundingCencel")
	public String fundingCencel(@RequestParam Map<String, Object> map, HttpSession session, Model model) {
		System.out.println("FundingController - fundingCencel()");
		
		String sId = (String)session.getAttribute("sId");
		map.put("sId", sId);
		int deleteFundCount = service.deleteFundCount(map);
		int deleteAddressCount = service.deleteAddressCount(map);
		int deleteInfoCount = service.deleteInfoCount(map);
	
		
		if (deleteFundCount == 0) {
			model.addAttribute("msg", "후원 삭제 실패!");
			return "fail_back";
		}

		if (deleteAddressCount == 0) {
			model.addAttribute("msg", "주소 삭제 실패!");
			return "fail_back";
		}
		
		if (deleteInfoCount == 0) {
			model.addAttribute("msg", "후원자 인포 삭제 실패!");
			return "fail_back";
		}
		
		
		model.addAttribute("msg", "후원이 취소되었습니다.");
		model.addAttribute("targetURL", "fundingList");
		return "forward";
	}
	
	
	// 후원(결제) 완료 페이지
	@GetMapping("fundingSuccess")
	public String fundingSuccess(HttpSession session, Model model, @RequestParam int project_code ) {
		System.out.println("FundingController - fundingSuccess()");

		model.addAttribute("selectFundCount", service.selectFundCount(project_code));
		
		return "mypage/funding/funding_success";
	}
	
//	// 후원(결제) 취소 확인 페이지
//	@GetMapping("fundingCancel")
//	public String fundingCancel() {
//		System.out.println("FundingController - fundingCancel()");
//		return "mypage/funding/funding_cancel";
//	}
	
	// 후원 상세 페이지
	@GetMapping("fundingDetail")
	public String fundingDetail(HttpSession session, Model model, @RequestParam int project_code) {
		System.out.println("FundingController - fundingDetail()");
		
		String sId = (String)session.getAttribute("sId");
		
		Map<String, Object> fundingDetail = service.selectfundingDetail(project_code, sId);
	
		model.addAttribute("fundingDetail", fundingDetail);
		
		return "mypage/funding/funding_detail";
	}
		
	//세부내용에서 후원하기 버튼 클릭 시 결제페이지 이동 int pro_code, int reward_code, 나중에 추가
//	@GetMapping("fundingPaymentForm")
	@PostMapping("fundingPaymentForm")
	public String fundingPaymentForm(HttpSession session, Model model, @RequestParam int project_code, @RequestParam int reward_code) {
		// 나중에 파라미터 앞에 @requestParam 붙여주기
		String sId = (String)session.getAttribute("sId");
		
		if(sId == null) {
			model.addAttribute("msg", "로그인 후 이용 가능 합니다.");
			model.addAttribute("targetURL", "login");
			return "forward";
		}
		
//		int pro_code = 50;
		// 해당 프로젝트 정보
		Map<String, String> map = service.selectproject(project_code);
		
//		int reward_code = 57;
		//선택리워드 정보
		Map<String, String> reward = service.selectReward(project_code, reward_code);
		reward.replace("reward_item_name", reward.get("reward_item_name").replace("|", " + "));
		
		//유저배송정보
		Map<String, String> user = service.selectUser(sId);
		
		//유저배송지목록
		List<Map<String, String>> addressList = service.selectAddress(sId);
		
		//핀테크 정보
		Map<String, String> fintechInfo = projectservice.selectToken(sId);
		
		
		
		if(!(fintechInfo == null) && fintechInfo.get("access_token") != null) {
			System.out.println("토큰있음!!!!!!!!!!!!!!!!!!");
			ResponseUserInfoVO userInfo = bankApiClient.requestUserInfo(fintechInfo);
			model.addAttribute("userInfo", userInfo);
			System.out.println(">>>>>><<<<<<" + userInfo);
		} 
		
		
		System.out.println("프로젝트 정보 >>>>>>>" + map);
		System.out.println("선택 리워드 정보 >>>>>>>" + reward);
		System.out.println("유저 배송 정보 >>>>>>>" + user);
		System.out.println("유저 배송 목록 >>>>>>>" + addressList);
		JSONArray jsonList = new JSONArray(addressList);
		JSONObject jsonObject = new JSONObject(addressList);
		System.out.println("유저 배송 목록 >>>>>>>" + jsonList.toString());
		model.addAttribute("jsonList", jsonList.toString());
		model.addAttribute("pro", map);
		model.addAttribute("reward", reward);
		model.addAttribute("user", user);
		model.addAttribute("addressList", addressList);
		model.addAttribute("fintechInfo", fintechInfo);
		
		return "payment/stepPay";
	}
	

	
	//후원페이지에서 주소저장
	@ResponseBody
	@PostMapping("insertFundUserAddress")
	public String insertFundUserAddress(@RequestParam Map<String, String> map, HttpSession session) {
		System.out.println(map);
		
		String sId = (String)session.getAttribute("sId");
		if (sId == null) {
			JSONObject jsonObject = new JSONObject(map);
			return jsonObject.toString();
		}
		map.put("isLogin", "true");
		map.put("user_id", sId);
		
		map.put("address_idx", null);
		int insertCount = service.insertAddress(map);
//		int reward_code = Integer.parseInt(map.get("reward_code"));
		System.out.println(insertCount);
		System.out.println("등록하고 오는길~~~~~~~~~~~~~~~~" + map);
		
		
		if(insertCount > 0) {
			map.put("isSuccess", "true");
			JSONObject jsonObject = new JSONObject(map);
			return jsonObject.toString();
		} else {
			JSONObject jsonObject = new JSONObject(map);
			return jsonObject.toString();
		}
		
		
	}
	
	
	//후원결제 페이지~~~~
	@GetMapping("insertFundUser") 
	public String insertFundUser(@RequestParam Map<String, Object> map, HttpSession session, Model model) {
		String sId = (String)session.getAttribute("sId");
		
		if(sId == null) {
			model.addAttribute("msg", "로그인 후 이용 가능 합니다.");
			model.addAttribute("targetURL", "login");
			return "forward";
		}
		map.put("user_id", sId);
		System.out.println(">>>>>>>>>insertFundUser<<<<<<<<<" + map);
		
		// 유저 확인
		
		int selectUserCount = service.selectUserCount(map); 
		
		if(selectUserCount > 0) {
			model.addAttribute("msg", "이미 후원한 프로젝트입니다");
			model.addAttribute("targetURL", "fundingList");
			return "forward";
		}
		
		
		int insertUserFund = service.insertUserFund(map);
		if(insertUserFund > 0) {
			int insertUserAuth = service.insertUserAuth(map);
			if(insertUserAuth > 0) {
				int insertUserAddress = service.insertUserAddress(map);
				if(insertUserAddress > 0) {
					model.addAttribute("project_code", map.get("project_code"));
					return "redirect:/fundingSuccess";
				}
			}
		} 
		
		model.addAttribute("msg", "다시 시도해주세요.");
		return "fail_back";
	}
	
	
	
	
	// 후원 현황(목록) 페이지 
	@GetMapping("fundingList")
	public String fundingList(HttpSession session, Model model) {
		System.out.println("FundingController - fundingList()");

		String sId = (String)session.getAttribute("sId");
		
		if(sId == null) {
			model.addAttribute("msg", "로그인 후 이용 가능 합니다.");
			model.addAttribute("targetURL", "login");
			return "forward";
		}

		List<Map<String, Object>> userFundingList = service.selectUserFundingList(sId);
		
		model.addAttribute("userFundingList", userFundingList);
		
		return "mypage/funding/funding_list";	
	}
	
	
	
	
	
	
}
