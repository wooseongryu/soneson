package com.itwillbs.soneson.controller;

import java.util.HashMap;
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


@Controller
public class FintechController {
	@Autowired
	private BankApiClient bankApiClient;
	@Autowired
	private BankApiService bankApiService;
	
	// 로그 출력을 위한 org.slf4j.Logger 타입 변수 선언
	// => org.slf4j.LoggerFactory 클래스의 getLogger() 메서드를 호출하여 Logger 객체 리턴받기
	//    파라미터 : 로그를 사용할 현재 클래스 지정(반드시 .class 명시)
	private static final Logger log = LoggerFactory.getLogger(FintechController.class);
	// => Logger 객체의 다양한 로그 출력 메서드(info(), debug(), warn(), error() 등) 활용하여 로그 출력 가능
	//    (로그 레벨에 따라 메서드를 구분하여 로그 심각도 구분할 수 있다!)
	
	@GetMapping("/FintechMain")
	public String fintechMain() {
		return "/fintech/main";
	}
	
	// 임시. GET 방식 요청 수행을 테스트하기 위한 매핑
//	@ResponseBody
//	@GetMapping("/RequestAuth")
//	public String requestAuth() {
//		// BankApiClient - requestAuth() 메서드 호출하여 인증 요청 수행
//		return bankApiClient.requestAuth();
//	}
	
	@GetMapping("/callback")
	public String responseAuthCode(@RequestParam Map<String, String> authResponse, HttpSession session, Model model) {
		// 콜백을 통해 전달되는 응답 데이터 4가지(code, scope, client_info, state) 파라미터 값이
		// Map 타입 객체에 자동으로 저장됨
		
		String id = (String)session.getAttribute("sId");
		// 세션 아이디 존재하지 않을 경우 처리
		if(id == null) {
			// Model 객체를 통해 출력할 메세지(msg) 및 창 닫기 여부(isClose) 전달
			model.addAttribute("msg", "로그인 필수!");
			model.addAttribute("isClose", true); // 현재 창(서브 윈도우) 닫기
			return "fail_back";
		}
		
//		System.out.println("응답결과 : " + authResponse);
		// Logger 객체의 debug() 메서드를 호출하여 디버그 레벨의 로그로 응답결과 출력
		log.info("응답결과 : " + authResponse);
		
		// 인증 실패 시(= 인증 정보 존재하지 않을 경우) 오류 메세지 출력 및 인증 창 닫기
		if(authResponse == null || authResponse.get("code") == null) {
			// Model 객체를 통해 출력할 메세지(msg) 및 창 닫기 여부(isClose) 전달
			model.addAttribute("msg", "인증 오류 발생! 다시 인증하세요!");
			model.addAttribute("isClose", true); // 현재 창(서브 윈도우) 닫기
			return "fail_back";
		}
		
		// 2.1.2. 토큰발급 API - 사용자 토큰발급 API (3-legged) 요청
		// REST 방식 요청을 통해 인증코드를 사용하여 엑세스토큰(Access Token) 발급 요청
		// => BankApiClient - requestToken() 메서드를 호출하여 엑세스토큰 발급 요청
		//    파라미터 : 사용자 인증을 통해 전달받은 인증 정보(Map 객체)
		//    리턴타입 : 엑세스토큰 관련 정보를 관리할 ResponseTokenVO 타입(responseToken)
		log.info("Access Token - 가져오기전");
		ResponseTokenVO responseToken = bankApiClient.requestToken(authResponse);
		log.info("Access Token - " + responseToken.toString());
		
		// 토큰 발급 실패 시(인증 코드 오류 등) 오류 메세지 출력 및 인증 창 닫기
		if(responseToken.getAccess_token() == null) {
			// Model 객체를 통해 출력할 메세지(msg) 및 창 닫기 여부(isClose) 전달
			model.addAttribute("msg", "토큰 발급 실패! 다시 인증하세요!");
			model.addAttribute("isClose", true); // 현재 창(서브 윈도우) 닫기
			return "fail_back";
		}
		
		// BankApiService - registToken() 메서드를 호출하여 토큰 관련 정보 저장 요청
		// => 파라미터 : 세션 아이디, ResponseTokenVO 객체
		bankApiService.registToken(id, responseToken);
		
		// 세션 객체에 엑세스토큰(access_token), 사용자번호(user_seq_no) 저장
		session.setAttribute("access_token", responseToken.getAccess_token());
		session.setAttribute("user_seq_no", responseToken.getUser_seq_no());
		
		model.addAttribute("msg", "계좌 인증 완료!");
		model.addAttribute("isClose", true); // 현재 창(서브 윈도우) 닫기
		model.addAttribute("targetURL", "FintechUserInfo");
		return "forward";
	}
	
	// 2.2. 사용자/서비스 관리 - 2.2.1. 사용자정보조회 API
	//  https://testapi.openbanking.or.kr/v2.0/user/me
	@GetMapping("/FintechUserInfo")
	public String requestUserInfo(Map<String, String> map, HttpSession session, Model model) {
		// 세션에 저장된 엑세스토큰 및 사용자번호를 변수에 저장
//		String access_token = (String)session.getAttribute("access_token");
//		String user_seq_no = (String)session.getAttribute("user_seq_no");
		// 만약, 엑세스토큰 또는 사용자번호가 없을 경우 
		// "계좌 인증 필수!" 출력 후 이전페이지로 돌아가기
//		if(access_token == null || user_seq_no == null) {
//			model.addAttribute("msg", "계좌 인증 필수!");
////			model.addAttribute("isClose", false); // 현재 창(서브 윈도우) 닫기(생략 가능)
//			return "fail_back";
//		}
		
		// 세션에 저장된 엑세스토큰 및 사용자번호를 Map 객체에 저장
//		Map<String, String> map = new HashMap<String, String>();
		// => 메서드 선언부에 타입 지정 시 자동으로 객체 생성
		map.put("access_token", (String)session.getAttribute("access_token"));
		map.put("user_seq_no", (String)session.getAttribute("user_seq_no"));
		
		if(map.get("access_token") == null || map.get("user_seq_no") == null) {
			model.addAttribute("msg", "계좌 인증 필수!");
			return "fail_back";
		}
		
//		log.info("토큰 정보 : " + map);
		
		// BankApiClient - requestUserInfo() 메서드 호출하여 핀테크 사용자 정보조회 요청
		// => 파라미터 : Map 객체   리턴타입 : ResponseUserInfoVO
		ResponseUserInfoVO userInfo = bankApiClient.requestUserInfo(map);
		log.info(">>> userInfo : " + userInfo); 
		
		// Model 객체에 ResponseUserInfoVO 객체 저장
		model.addAttribute("userInfo", userInfo);
		
		return "mypage/admin/fintech_user_info";
	}
	
	// 2.2.3. 등록계좌조회 API
	@GetMapping("FintechAccountList")
	public String accountList(Map<String, String> map, HttpSession session, Model model) {
		map.put("access_token", (String)session.getAttribute("access_token"));
		map.put("user_seq_no", (String)session.getAttribute("user_seq_no"));
		
		// BankApiClient - requestAccountList() 메서드 호출하여 계좌 정보 조회
		// => 파라미터 : Map 객체   리턴타입 : ResponseAccountListVO
		ResponseAccountListVO accountList = bankApiClient.requestAccountList(map);
		log.info(">>>>>>>> accountList : " + accountList);
		
		model.addAttribute("accountList", accountList);
		
		return "mypage/admin/fintech_account_list";
	}
	
	@PostMapping("BankAccountDetail")
	public String accountDetail(@RequestParam Map<String, String> map, HttpSession session, Model model) {
		// 요청에 사용할 엑세스토큰을 Map 객체에 추가
		map.put("access_token", (String)session.getAttribute("access_token"));
		
		// BankApiClient - requestAccountDetail() 메서드 호출하여 계좌 상세정보 조회 요청
		// => 파라미터 : Map 객체   리턴타입 : BankAccountDetailVO(accountDetail)
		BankAccountDetailVO accountDetail = bankApiClient.requestAccountDetail(map);
		log.info(">>>>>>>>> accountDetail : " + accountDetail);
		
		// 조회 결과(BankAccountDetailVO, 예금주명, 계좌번호) 저장
		model.addAttribute("accountDetail", accountDetail);
		model.addAttribute("user_name", map.get("user_name"));
		model.addAttribute("account_num_masked", map.get("account_num_masked"));
		
		return "mypage/admin/fintech_account_detail";
	}
	
	@PostMapping("BankPayment")
	public String payment(@RequestParam Map<String, String> map, HttpSession session, Model model) {
		// 요청에 사용할 엑세스토큰을 Map 객체에 추가
		map.put("access_token", (String)session.getAttribute("access_token"));
		map.put("id", "lsc2464"); // 테스트 출금 정보 등록(요청 사용자 번호용 임시 아이디)
		
		// BankApiClient - requestWithdraw() 메서드 호출하여 상품 구매에 대한 지불(출금이체) 요청
		// => 파라미터 : Map 객체   리턴타입 : ResponseWithdrawVO(withdraw)
		ResponseWithdrawVO withdrawResult = bankApiClient.requestWithdraw(map);
		log.info(">>>>>>>>> withdrawResult : " + withdrawResult);
		
		model.addAttribute("withdrawResult", withdrawResult);
		
		return "mypage/admin/fintech_payment_result";
	}
	
	@PostMapping("BankRefund")
	public String refund(@RequestParam Map<String, String> map, HttpSession session, Model model) {
		// 요청에 사용할 엑세스토큰을 Map 객체에 추가
		map.put("access_token", (String)session.getAttribute("access_token"));
		map.put("id", "lsc2464"); // 테스트 출금 정보 등록(요청 사용자 번호용 임시 아이디)
		
		// BankApiClient - requestDeposit() 메서드 호출하여 상품 구매에 대한 환불(입금이체) 요청
		// => 파라미터 : Map 객체   리턴타입 : ResponseDepositListVO(deposit)
		ResponseDepositListVO depositResult = bankApiClient.requestDeposit(map);
		log.info(">>>>>>>>> depositResult : " + depositResult);
		
		model.addAttribute("depositResult", depositResult);
		
		return "mypage/admin/fintech_refund_result";
	}
	
	@PostMapping("BankTransfer")
	public String transfer(@RequestParam Map<String, String> map, HttpSession session, Model model) {
		// 요청에 사용할 엑세스토큰을 Map 객체에 추가
		map.put("access_token", (String)session.getAttribute("access_token"));
		map.put("id", "lsc2464"); // 테스트 출금 정보 등록(요청 사용자 번호용 임시 아이디)
		
		// BankApiService - requestTransfer() 메서드 호출하여 송금 요청
		// => 파라미터 : Map 객체   리턴타입 : Map<String, Object>(transferResult)
		Map<String, Object> transferResult = bankApiService.requestTransfer(map);
		log.info(">>>>>>>>> transferResult : " + transferResult);
		
		model.addAttribute("transferResult", transferResult);
		
		return "mypage/admin/fintech_transfer_result";
	}
	
}











