package com.itwillbs.soneson.service;

import java.net.URI;
import java.util.Map;

import org.json.JSONArray;
import org.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.MediaType;
import org.springframework.http.RequestEntity;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.util.UriComponentsBuilder;

import com.itwillbs.soneson.handler.BankValueGenerator;
import com.itwillbs.soneson.vo.BankAccountDetailVO;
import com.itwillbs.soneson.vo.RequestTokenVO;
import com.itwillbs.soneson.vo.ResponseAccountListVO;
import com.itwillbs.soneson.vo.ResponseDepositListVO;
import com.itwillbs.soneson.vo.ResponseTokenVO;
import com.itwillbs.soneson.vo.ResponseUserInfoVO;
import com.itwillbs.soneson.vo.ResponseWithdrawVO;

@Service
public class BankApiClient {
	@Value("${client_id}")
	private String client_id;
	
	@Value("${client_secret}")
	private String client_secret;
	
	@Value("${client_use_code}")
	private String client_use_code;
	
	@Value("${base_url}")
	private String base_url;
	
	@Value("${fintech_use_num}")
	private String fintech_use_num;
	
	@Value("${bank_code}")
	private String bank_code;
	
	@Value("${account_num}")
	private String account_num;
	// -----------------------------------------------------------------------------------
	// 계좌 관련 값을 자동으로 생성하는 BankValueGenerator 타입 변수 선언
	@Autowired
	private BankValueGenerator bankValueGenerator;
	// -----------------------------------------------------------------------------------
	// 로그 출력을 위한 로거 설정(BankApiClient.class 로 변경)
	private static final Logger log = LoggerFactory.getLogger(BankApiClient.class);
	// -----------------------------------------------------------------------------------
	
	// 2.1.1. 사용자인증 API (3-legged) 요청 정보 생성 및 요청 수행
	public String requestAuth() {
		log.info(">>>>>>>>>>>>>>>>>>>> requestAuth() 확인");
		URI uri = UriComponentsBuilder
					.fromUriString(base_url) // 기본 주소
					.path("/oauth/2.0/authorize") // 작업 요청 상세 주소
					// 주소 뒤에 파라미터 연결 시 queryParam() 메서드 활용(GET 방식일 경우)
					.queryParam("response_type", "code") // 첫번째 파라미터
					.queryParam("client_id", client_id) // 두번째 파라미터
					.queryParam("redirect_uri", "http://localhost:8081/soneson/callback") // 세번째 파라미터
					.queryParam("scope", "login inquiry transfer") // 네번째 파라미터
					.queryParam("state", "12345678901234567890123456789012") // 다섯번째 파라미터
					.queryParam("auth_type", "0") // 여섯번째 파라미터
					.encode() // 파라미터에 대한 인코딩 수행
					.build() // UriComponents 객체 생성
					.toUri(); // java.net.URI 객체로 변환
		
		
		
		// RestTemplate 객체 활용하여 REST 방식의 요청 수행
		// 1) RestTemplate 객체 생성
		RestTemplate restTemplate = new RestTemplate();
		// 2) RestTemplate 객체의 getForEntity() 메서드를 호출하여 GET 방식의 HTTP 요청을 수행하고
		ResponseEntity<String> responseEntity = restTemplate.getForEntity(uri, String.class);
		// => getForEntity() 메서드 호출 시 HTTP 요청이 수행되고
		//    응답 데이터가 리턴되어 ResponseEntity 타입으로 저장됨
		System.out.println("응답코드 : " + responseEntity.getStatusCode());
		System.out.println("응답데이터 : " + responseEntity.getBody());
	
		return responseEntity.getBody();
	}

	// 2.1.2. 토큰발급 API - 사용자 토큰발급 API (3-legged) 요청
	public ResponseTokenVO requestToken(Map<String, String> authResponse) {
		System.out.println("발급전");
		RequestTokenVO requestToken = new RequestTokenVO();
		requestToken.setCode(authResponse.get("code"));
		requestToken.setClient_id(client_id);
		requestToken.setClient_secret(client_secret);
		requestToken.setRedirect_uri("http://localhost:8081/soneson/callback");
		requestToken.setGrant_type("authorization_code");
		
		
		URI uri = UriComponentsBuilder
					.fromUriString(base_url) // 기본 주소
					.path("/oauth/2.0/token") // 작업 요청 상세 주소
					.encode() // 파라미터에 대한 인코딩 수행
					.build() // UriComponents 객체 생성
					.toUri(); // java.net.URI 객체로 변환
		
 		LinkedMultiValueMap<String, String> parameters = new LinkedMultiValueMap<String, String>();
		parameters.add("code", authResponse.get("code"));
		parameters.add("client_id", client_id);
		parameters.add("client_secret", client_secret);
		parameters.add("redirect_uri", "http://localhost:8081/soneson/callback");
		parameters.add("grant_type", "authorization_code");
		System.out.println(parameters);
		
		HttpEntity<LinkedMultiValueMap<String, String>> httpEntity = 
				new HttpEntity<LinkedMultiValueMap<String,String>>(parameters);
		
		System.out.println("uri: " + uri);
		
		RestTemplate restTemplate = new RestTemplate();
		ResponseEntity<ResponseTokenVO> responseEntity 
				= restTemplate.exchange(uri, HttpMethod.POST, httpEntity, ResponseTokenVO.class);
		// ------------------------------------
		log.info("응답코드 : " + responseEntity.getStatusCode());
		log.info("응답헤더 : " + responseEntity.getHeaders());
		log.info("응답데이터 : " + responseEntity.getBody()); // 리턴타입 : ResponseTokenVO
		
		
		return responseEntity.getBody();
	}

	// 2.2. 사용자/서비스 관리 - 2.2.1. 사용자정보조회 API - GET
	public ResponseUserInfoVO requestUserInfo(Map<String, String> map) {
		// 1. 사용자 정보 조회 시 엑세스 토큰값을 헤더로 담아 전송 필요하므로
		HttpHeaders headers = new HttpHeaders();
		headers.add("Authorization", "Bearer" + map.get("access_token"));
		
		// 2. 헤더 정보를 갖는 HttpEntity 객체 생성
		HttpEntity<String> httpEntity = new HttpEntity<String>(headers);
		
		// 3. 요청에 필요한 URI 정보 생성
		URI uri = UriComponentsBuilder
				.fromUriString(base_url) // 기본 주소
				.path("/v2.0/user/me") // 작업 요청 상세 주소
				.queryParam("user_seq_no", map.get("user_seq_no")) // 파라미터
				.encode() // 파라미터에 대한 인코딩 수행
				.build() // UriComponents 객체 생성
				.toUri(); // java.net.URI 객체로 변환
		
		// 4. RestTemplate 객체 생성
		RestTemplate restTemplate = new RestTemplate();
		
		// 5. RestTemplate 객체의 exchange() 메서드 호출하여 HTTP 요청 수행 - GET
		ResponseEntity<ResponseUserInfoVO> responseEntity = 
				restTemplate.exchange(uri, HttpMethod.GET, httpEntity, ResponseUserInfoVO.class);
		
		// ResponseEntity 객체의 getBody() 메서드 호출하여 응답 데이터 리턴
		return responseEntity.getBody();
	}

	// 2.2. 사용자/서비스 관리 - 2.2.3. 등록계좌조회 API - GET
	public ResponseAccountListVO requestAccountList(Map<String, String> map) {
		// 1. 사용자 정보 조회 시 엑세스 토큰값을 헤더로 담아 전송 필요하므로
		HttpHeaders headers = new HttpHeaders();
		headers.add("Authorization", "Bearer" + map.get("access_token"));
		
		// 2. 헤더 정보를 갖는 HttpEntity 객체 생성
		HttpEntity<String> httpEntity = new HttpEntity<String>(headers);
		
		// 3. 요청에 필요한 URI 정보 생성
		URI uri = UriComponentsBuilder
				.fromUriString(base_url) // 기본 주소
				.path("/v2.0/account/list") // 작업 요청 상세 주소
				.queryParam("user_seq_no", map.get("user_seq_no")) // 파라미터
				.queryParam("include_cancel_yn", "Y") // 파라미터
				.queryParam("sort_order", "D") // 파라미터
				.encode() // 파라미터에 대한 인코딩 수행
				.build() // UriComponents 객체 생성
				.toUri(); // java.net.URI 객체로 변환
		
		// 4. RestTemplate 객체 생성
		RestTemplate restTemplate = new RestTemplate();
		
		// 5. RestTemplate 객체의 exchange() 메서드 호출하여 HTTP 요청 수행 - GET
		ResponseEntity<ResponseAccountListVO> responseEntity = 
				restTemplate.exchange(uri, HttpMethod.GET, httpEntity, ResponseAccountListVO.class);

		return responseEntity.getBody();
	}

	// 2.3. 계좌조회 서비스(사용자) - 2.3.1. 잔액조회 API
	public BankAccountDetailVO requestAccountDetail(Map<String, String> map) {
		String bank_tran_id = bankValueGenerator.getBankTranId();
		String tran_dtime = bankValueGenerator.getTranDTime();
		
		log.info(">>>>>>> 은행거래고유번호(bank_tran_id) : " + bank_tran_id);
		log.info(">>>>>>> 요청일시(tran_dtime) : " + tran_dtime);
		
		// 1. 사용자 정보 조회 시 엑세스 토큰값을 헤더로 담아 전송 필요하므로
		HttpHeaders headers = new HttpHeaders();
		headers.add("Authorization", "Bearer" + map.get("access_token"));
		
		// 2. 헤더 정보를 갖는 HttpEntity 객체 생성
		HttpEntity<String> httpEntity = new HttpEntity<String>(headers);
		log.info(">>>>> httpEntity : " + httpEntity.getHeaders());
		
		// 3. 요청에 필요한 URI 정보 생성
		URI uri = UriComponentsBuilder
				.fromUriString(base_url) // 기본 주소
				.path("/v2.0/account/balance/fin_num") // 작업 요청 상세 주소
				.queryParam("bank_tran_id", bank_tran_id) // 거래고유번호(참가기관)
				.queryParam("fintech_use_num", map.get("fintech_use_num")) // 핀테크이용번호
				.queryParam("tran_dtime", tran_dtime) // 요청일시
				.encode() // 파라미터에 대한 인코딩 수행
				.build() // UriComponents 객체 생성
				.toUri(); // java.net.URI 객체로 변환
		
		// 4. RestTemplate 객체 생성
		RestTemplate restTemplate = new RestTemplate();
		
		// 5. RestTemplate 객체의 exchange() 메서드 호출하여 HTTP 요청 수행 - GET
		ResponseEntity<BankAccountDetailVO> responseEntity = 
				restTemplate.exchange(uri, HttpMethod.GET, httpEntity, BankAccountDetailVO.class);
		
		return responseEntity.getBody();
	}

	// 2.5. 이체서비스 - 2.5.1. 출금이체 API
	public ResponseWithdrawVO requestWithdraw(Map<String, String> map) {
		// 1. 사용자 정보 조회 시 엑세스 토큰값을 헤더로 담아 전송 필요하므로
		HttpHeaders headers = new HttpHeaders();
		headers.setBearerAuth(map.get("access_token"));
		headers.setContentType(MediaType.APPLICATION_JSON);
		
		// 2. 요청에 필요한 URI 정보 생성 => 문자열로 바로 생성
		String url = base_url + "/v2.0/transfer/withdraw/fin_num";
		
		// 3. 요청 파라미터를 JSON 데이터로 생성하기(기본 라이브러리 org.json 활용)
		// 3-1) 1개의 출금 정보를 저장할 JSONObject 객체 생성 => put() 메서드 활용
		JSONObject jo = new JSONObject();
		
		// --------- 중간 전달자(핀테크 이용기관) 정보 ---------
		jo.put("bank_tran_id", bankValueGenerator.getBankTranId()); // 거래고유번호(참가기관)
		jo.put("cntr_account_type", "N"); // 약정 계좌/계정 구분("N" : 계좌, "C" 계정 => N 고정)
		jo.put("cntr_account_num", "23062003999"); // 약정 계좌/계정 번호(핀테크 서비스 기관 계좌)
		jo.put("dps_print_content", map.get("id") + "_출금"); // 입금계좌인자내역
		
		
		// --------- 요청 고객(출금 대상) 정보 ---------
		jo.put("fintech_use_num", map.get("withdraw_fintech_use_num")); // 출금계좌 핀테크이용번호
		jo.put("wd_print_content", map.get("deposit_user_name") + "_송금"); // 출금계좌인자내역
		jo.put("tran_amt", map.get("tran_amt")); // 거래금액
		jo.put("tran_dtime", bankValueGenerator.getTranDTime()); // 요청일시
		jo.put("req_client_name", map.get("withdraw_user_name")); // 요청고객성명(출금계좌)
		jo.put("req_client_fintech_use_num", map.get("withdraw_fintech_use_num")); // 요청고객핀테크이용번호(출금계좌)
		// => 요청고객계좌번호 미사용 시 핀테크이용번호 설정
		jo.put("req_client_num", map.get("id").toUpperCase()); // 요청고객회원번호(아이디처럼 사용) => 단, 영문자는 모두 대문자
		jo.put("transfer_purpose", "TR"); // 이체용도(송금(TR), 결제(ST))
		
		
		// --------- 수취 고객(실제 최종 입금 대상) 정보 ---------
		// 최종적으로 이 돈을 수신하는 계좌에 대한 정보
		// 이 정보(3개)는 피싱 등의 사고 발생 시 지급 정지를 위한 정보(검증 수행하지 않음)
		jo.put("recv_client_name", map.get("deposit_user_name")); // 최종수취고객성명
		jo.put("recv_client_bank_code", map.get("deposit_bank_code")); // 최종수취고객계좌 개설기관.표준코드
		jo.put("recv_client_account_num", map.get("deposit_account_num")); // 최종수취고객계좌번호
		
		log.info(">>>>> 출금이체 요청 JSON 데이터 : " + jo.toString());
		
		// 4. 헤더 정보를 갖는 HttpEntity 객체 생성
		HttpEntity<String> httpEntity = new HttpEntity<String>(jo.toString(), headers);
		log.info(">>>>> httpEntity : " + httpEntity.getHeaders());
		
		// 5. POST 방식으로 API 요청 시 JSON 데이터 전송하기 위해
		RestTemplate restTemplate = new RestTemplate();
		ResponseEntity<ResponseWithdrawVO> responseEntity = 
				restTemplate.postForEntity(url, httpEntity, ResponseWithdrawVO.class);
		log.info(">>>>> 출금이체결과 : " + responseEntity.getBody());
		
		return responseEntity.getBody();
		/*
		 * [ 테스트 데이터(출금이체) 등록 방법 ]
		 * 사용자 일련번호, 핀테크 이용번호 : 자신(요청 고객)의 정보 선택
		 * => 출금기관 대표코드, 출금계좌번호(출력용 포함) 자동으로 입력됨
		 * 송금인 실명 : req_client_name 값 입력(자신(요청 고객)의 정보 입력)
		 * 거래 금액 : tran_amount 값 입력
		 * 입금계좌 인자내역 : dps_print_content 값 입력
		 * 수취인 성명 : 핀테크 이용기관의 계좌 예금주명 입력(최종 수취인 아님!)
		 */
	}

	
	// 2.5. 이체서비스 - 2.5.2. 입금이체 API
	public ResponseDepositListVO requestDeposit(Map<String, String> map) {
		// 1. 사용자 정보 조회 시 엑세스 토큰값을 헤더로 담아 전송 필요하므로
		HttpHeaders headers = new HttpHeaders();
		headers.setBearerAuth(map.get("access_token"));
		headers.setContentType(MediaType.APPLICATION_JSON);
		
		// 2. 요청에 필요한 URI 정보 생성 => 문자열로 바로 생성
		String url = base_url + "/v2.0/transfer/deposit/fin_num";
		
		// 3. 요청 파라미터를 JSON 데이터로 생성하기(기본 라이브러리 org.json 활용)
		// 3-1) 1건의 입금 이체 정보를 저장할 JSONObject 객체 생성
		JSONObject joReq = new JSONObject();
		joReq.put("tran_no", "1"); // 거래순번
		joReq.put("bank_tran_id", bankValueGenerator.getBankTranId()); // 거래고유번호
		
		joReq.put("fintech_use_num", map.get("deposit_fintech_use_num")); // 입금계좌 핀테크이용번호(테스트 데이터 등록)
		joReq.put("print_content", map.get("id") + "_송금"); // 입금계좌인자내역(테스트 데이터 등록)
		
		joReq.put("tran_amt", map.get("tran_amt")); // 거래금액(테스트 데이터 등록)
		joReq.put("req_client_name", map.get("deposit_user_name")); // 요청고객성명(거래를 요청한 사용자 이름)
		joReq.put("req_client_fintech_use_num", map.get("deposit_fintech_use_num")); // 요청고객 핀테크이용번호
		joReq.put("req_client_num", map.get("id").toUpperCase()); // 요청고객회원번호
		joReq.put("transfer_purpose", "TR"); // 이체용도(입금이체 = 송금 = TR)
		
		// 3-2) 입금 이체 1건의 정보를 배열(리스트)로 관리할 JSONArray 객체 생성
		JSONArray jaReqList = new JSONArray();
		jaReqList.put(joReq); // JSONArray 객체에 JSONObject 객체 추가
		
		// 3-3) 기본 입금 이체 정보를 저장할 JSONObject 객체 생성
		JSONObject jo = new JSONObject();
		jo.put("cntr_account_type", "N"); // 약정 계좌/계정 구분("N" : 계좌, "C" 계정 => N 고정)
		jo.put("cntr_account_num", "23062003999"); // 약정 계좌/계정 번호(핀테크 서비스 기관 계좌)
		jo.put("wd_pass_phrase", "NONE"); // 입금이체용 암호문구(테스트 시 "NONE" 값 설정)
		jo.put("wd_print_content", map.get("deposit_user_name") + "_입금"); // 출금계좌인자내역
		jo.put("name_check_option", "on"); // 수취인성명 검증 여부(on : 검증함, 생략 시 off)
		jo.put("tran_dtime", bankValueGenerator.getTranDTime()); // 요청일시
		jo.put("req_cnt", "1"); // 입금요청건수(현재 여러건 이체 불가능하므로 단건이체 "1" 고정)
		
		// 3-4) 기본 입금 이체 정보 JSONObject 객체에 JSONArray 객체 추가
		jo.put("req_list", jaReqList);
		
		log.info(">>>>> 입금이체 요청 JSON 데이터 : " + jo.toString());
		
		
		// 4. 헤더 정보를 갖는 HttpEntity 객체 생성
		// => 파라미터 데이터(body)로 JSONObject 객체를 문자열로 변환하여 전달, 헤더도 전달
		HttpEntity<String> httpEntity = new HttpEntity<String>(jo.toString(), headers);
		log.info(">>>>> httpEntity : " + httpEntity.getHeaders());
		
		// 5. POST 방식으로 API 요청 시 JSON 데이터 전송하기 위해
		//    RestTemplate 객체의 postForEntity() 메서드 호출
		RestTemplate restTemplate = new RestTemplate();
		ResponseEntity<ResponseDepositListVO> responseEntity = 
				restTemplate.postForEntity(url, httpEntity, ResponseDepositListVO.class);
		log.info(">>>>> 입금이체결과 : " + responseEntity.getBody());
		
		return responseEntity.getBody();
		
		/*
		 * [ 테스트 데이터(입금이체) 등록 방법 ]
		 * 사용자 일련번호, 핀테크 이용번호 : 송금 대상 고객의 정보 선택
		 * => 입금기관 대표코드, 입금계좌번호(출력용 포함) 자동으로 입력됨
		 * 송금인 실명 : 핀테크 이용기관의 계좌 예금주명 입력(입금 요청 고객 정보 아님)
		 * 거래 금액 : tran_amount 값 입력
		 * 입금계좌 인자내역 : print_content 값 입력
		 * 수취인 성명 : 송금 대상 고객 계좌 예금주명 입력(최종 수취인)
		 */
	}
	
}















