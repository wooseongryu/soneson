package com.itwillbs.soneson.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.itwillbs.soneson.service.BankApiClient;
import com.itwillbs.soneson.service.BankApiService;
import com.itwillbs.soneson.vo.BankAccountDetailVO;
import com.itwillbs.soneson.vo.ResponseAccountListVO;
import com.itwillbs.soneson.vo.ResponseDepositListVO;
import com.itwillbs.soneson.vo.ResponseTokenVO;
import com.itwillbs.soneson.vo.ResponseUserInfoVO;
import com.itwillbs.soneson.vo.ResponseWithdrawVO;
import com.itwillbs.soneson.vo.UserVO;


@Controller
public class FintechController {
	@Autowired
	private BankApiClient bankApiClient;
	@Autowired
	private BankApiService bankApiService;
	
	private static final Logger log = LoggerFactory.getLogger(FintechController.class);
	
	
	
	@GetMapping("/callback")
	public String responseAuthCode(@RequestParam Map<String, String> authResponse, HttpSession session, Model model) {
		
		String id = (String)session.getAttribute("sId");
		
		if(id == null) {
			model.addAttribute("msg", "로그인 필수!");
			model.addAttribute("isClose", true); // 현재 창(서브 윈도우) 닫기
			return "fail_back";
		}
		
		log.info("응답결과 : " + authResponse);
		
		
		if(authResponse == null || authResponse.get("code") == null) {
			model.addAttribute("msg", "인증 오류 발생! 다시 인증하세요!");
			model.addAttribute("isClose", true); // 현재 창(서브 윈도우) 닫기
			return "fail_back";
		}
		
		// 2.1.2. 토큰발급 API 
		ResponseTokenVO responseToken = bankApiClient.requestToken(authResponse);
		
		
		if(responseToken.getAccess_token() == null) {
			model.addAttribute("msg", "토큰 발급 실패! 다시 인증하세요!");
			model.addAttribute("isClose", true); // 현재 창(서브 윈도우) 닫기
			return "fail_back";
		}
		
		bankApiService.registToken(id, responseToken);
		
		// 세션 객체에 엑세스토큰(access_token), 사용자번호(user_seq_no) 저장
		session.setAttribute("access_token", responseToken.getAccess_token());
		session.setAttribute("user_seq_no", responseToken.getUser_seq_no());
		
		
		model.addAttribute("msg", "계좌 인증 완료!");
		model.addAttribute("isClose", true); // 현재 창(서브 윈도우) 닫기
		model.addAttribute("functionName", "selectAuthInfo");
		model.addAttribute("targetURL", "FintechUserInfo");
		return "forwardFintech";
	}
	
	// 모금성공한 프로젝트 클릭해서 들어갔을 때 해당 프로젝트 후원한 유저 목록
	// 2.2. 사용자/서비스 관리 - 2.2.1. 사용자정보조회 API
	@GetMapping("/FintechUserInfo")
	public String requestUserInfo(Map<String, String> map, HttpSession session, Model model) {
//		System.out.println(map);
		
		// 세션에 저장된 엑세스토큰 및 사용자번호를 Map 객체에 저장
//		map.put("access_token", (String)session.getAttribute("access_token"));
//		map.put("user_seq_no", (String)session.getAttribute("user_seq_no"));

//		System.out.println(map);
		
		map.put("project_code", "50");
		
		List<Map<String, String>> userInfoList = bankApiService.selectUserToken();
		
		System.out.println(")))))))))))))))___________+++");
		System.out.println(userInfoList);
		
//		if(map.get("access_token") == null || map.get("user_seq_no") == null) {
//			model.addAttribute("msg", "계좌 인증 필수!");
//			return "fail_back";
//		}
		
//		List<ResponseUserInfoVO> userInfos = new ArrayList<ResponseUserInfoVO>();
//		for (Map<String, String> user : userInfoList) {
//			ResponseUserInfoVO userInfo = bankApiClient.requestUserInfo(user);
//			userInfo.setAccess_token(user.get("access_token"));
//			userInfos.add(userInfo);
//		}
		
//		List<ResponseUserInfoVO> userInfos = new ArrayList<ResponseUserInfoVO>();
//		for (Map<String, String> user : userInfoList) {
////			ResponseUserInfoVO userInfo = bankApiClient.requestUserInfo(user);
//			System.out.println("0000000000000");
//			System.out.println(userInfo);
//			System.out.println(user.get("fintech_use_num"));
//			System.out.println(map.get("fintech_use_num"));
//			System.out.println("--");
////			if (user.get("fintech_use_num").equals(userInfo.getRes_list().get)) {
////				userInfo.setAccess_token(user.get("access_token"));
////				userInfos.add(userInfo);
////			}
//		}
		
//		System.out.println(")))22222222222");
//		System.out.println(userInfos);
		
//		System.out.println(")))))))))+++++++++++++++++");
//		System.out.println(userInfos);
		
//		System.out.println("))))))))))))))))))userInfos");
//		System.out.println(userInfos);
//		
//		ResponseUserInfoVO userInfo = bankApiClient.requestUserInfo(map);
//		log.info(">>> userInfo : " + userInfo); 
		
		model.addAttribute("userInfoList", userInfoList);
		model.addAttribute("project_code", 50);
		
		return "mypage/fintech/fintech_user_info";
	}
	
	// 2.2.3. 등록계좌조회 API
	@GetMapping("FintechAccountList")
	public String accountList(Map<String, String> map, HttpSession session, Model model) {
		map.put("access_token", (String)session.getAttribute("access_token"));
		map.put("user_seq_no", (String)session.getAttribute("user_seq_no"));
		
		ResponseAccountListVO accountList = bankApiClient.requestAccountList(map);
		log.info(">>>>>>>> accountList : " + accountList);
		
		model.addAttribute("accountList", accountList);
		
		return "mypage/fintech/fintech_account_list";
	}
	
	@PostMapping("BankAccountDetail")
	public String accountDetail(@RequestParam Map<String, String> map, HttpSession session, Model model) {
//		map.put("access_token", (String)session.getAttribute("access_token"));
		
//		System.out.println("))))))))))--------------");
//		System.out.println(map);
		
		BankAccountDetailVO accountDetail = bankApiClient.requestAccountDetail(map);
		log.info(">>>>>>>>> accountDetail : " + accountDetail);
		
		model.addAttribute("accountDetail", accountDetail);
		model.addAttribute("user_name", map.get("user_name"));
		model.addAttribute("account_num_masked", map.get("account_num_masked"));
		model.addAttribute("access_token", map.get("access_token"));
		
		return "mypage/fintech/fintech_account_detail";
	}
	
	// 출금이체
	@PostMapping("BankPayment")
	public String payment(@RequestParam Map<String, String> map, HttpSession session, Model model) {
//		map.put("access_token", (String)session.getAttribute("access_token"));
		
		System.out.println(")))BankPayment");
//		System.out.println(map);
		
//		map.put("id", "lsc2464"); // 테스트 출금 정보 등록(요청 사용자 번호용 임시 아이디)
		
		List<Map<String, String>> userInfoList = bankApiService.selectUserToken();
		
		List<ResponseWithdrawVO> withdrawResultList = new ArrayList<ResponseWithdrawVO>();
		for (Map<String, String> user : userInfoList) {
			if (!user.get("status").equals("결제성공")) {
				
				ResponseWithdrawVO tmp = bankApiClient.requestWithdraw(user);
//				withdrawResultList.add(bankApiClient.requestWithdraw(user));
				withdrawResultList.add(tmp);
//				System.out.println("유저");
//				System.out.println(user.get("fundIdx"));
				
				if (tmp.getRsp_code().equals("A0000")) {
//					System.out.println(user.get("fundIdx"));
					
					int updateCount = bankApiService.updateFundStatus(user.get("fundIdx"));
					// TODO
					// updateCount 실패 처리
				}
				
				System.out.println("-----");
				System.out.println(tmp.getRsp_code());
			}
			
//			System.out.println("---------");
			
//			for (ResponseWithdrawVO result : withdrawResultList) {
//				if (result.getRsp_code().equals("A0000")) {
//					bankApiService.updateFundStatus(result.);
//				}
//			}
			
//			System.out.println("withdrawResultList1--" + withdrawResultList.get(0).getRsp_code());
		}
		
		model.addAttribute("withdrawResultList", withdrawResultList);
		
		return "redirect:/FintechUserInfo";
	}
	
	
	
	@PostMapping("BankRefund")
	public String refund(@RequestParam Map<String, String> map, HttpSession session, Model model) {
		map.put("access_token", (String)session.getAttribute("access_token"));
		map.put("id", "lsc2464"); // 테스트 출금 정보 등록(요청 사용자 번호용 임시 아이디)
		
		ResponseDepositListVO depositResult = bankApiClient.requestDeposit(map);
		log.info(">>>>>>>>> depositResult : " + depositResult);
		
		model.addAttribute("depositResult", depositResult);
		
		return "mypage/fintech/fintech_refund_result";
	}
	
	@PostMapping("BankTransfer")
	public String transfer(@RequestParam Map<String, String> map, HttpSession session, Model model) {
		map.put("access_token", (String)session.getAttribute("access_token"));
		map.put("id", "lsc2464"); // 테스트 출금 정보 등록(요청 사용자 번호용 임시 아이디)
		
		Map<String, Object> transferResult = bankApiService.requestTransfer(map);
		log.info(">>>>>>>>> transferResult : " + transferResult);
		
		model.addAttribute("transferResult", transferResult);
		
		return "mypage/fintech/fintech_transfer_result";
	}
	
}











