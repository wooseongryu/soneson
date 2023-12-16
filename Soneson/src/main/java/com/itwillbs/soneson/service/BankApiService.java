package com.itwillbs.soneson.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwillbs.soneson.mapper.BankMapper;
import com.itwillbs.soneson.vo.ResponseDepositListVO;
import com.itwillbs.soneson.vo.ResponseTokenVO;
import com.itwillbs.soneson.vo.ResponseWithdrawVO;


@Service
public class BankApiService {
	@Autowired
	private BankMapper mapper;
	
	@Autowired
	private BankApiClient bankApiClient;

	// 토큰 관련 정보 저장 요청
	public void registToken(String id, ResponseTokenVO responseToken) {
		// BankMapper - insertToken() 메서드 호출하여 토큰 관련 정보 저장 요청
		int selectCount = mapper.selectExistAccessToken(id);
		if(selectCount > 0) {
			System.out.println("쿼리실행~~~~~~~~~~~~~~~~");
			mapper.updateToken(id, responseToken);
			System.out.println("쿼리실행완~~~~~~~~~~~~~~~~");
			return;
		}
		mapper.insertToken(id, responseToken);
	}

	// 송금 요청
	public Map<String, Object> requestTransfer(Map<String, String> map) {
		// 요청 결과를 저장할 Map 객체 생성
		Map<String, Object> transferResult = new HashMap<String, Object>();
		
		// ---------------------------------------------------------------------
		// BankApiClient - requestWithdraw() 메서드 호출하여 출금이체 요청
		// => 파라미터 : Map 객체   리턴타입 : ResponseWithdrawVO(withdraw)
		ResponseWithdrawVO withdrawResult = bankApiClient.requestWithdraw(map);
		System.out.println(">>>>>>>>> withdrawResult : " + withdrawResult);
		// 출금이체 요청 결과가 저장된 ResponseWithdrawVO 객체를 Map 객체에 추가
		transferResult.put("withdrawResult", withdrawResult);
		
		// ---------------------------------------------------------------------
		// BankApiClient - requestDeposit() 메서드 호출하여 입금이체 요청
		// => 파라미터 : Map 객체   리턴타입 : ResponseDepositListVO(depositResult)
		ResponseDepositListVO depositResult = bankApiClient.requestDeposit(map);
		System.out.println(">>>>>>>>> depositResult : " + depositResult);
		// 입금이체 요청 결과가 저장된 ResponseDepositListVO 객체를 Map 객체에 추가
		transferResult.put("depositResult", depositResult);
		
		// ---------------------------------------------------------------------
		// 요청 정보가 저장된 Map 객체 리턴
		return transferResult;
	}

	// 테스트...
	public List<Map<String, String>> selectUserToken(String project_code) {
		System.out.println("BankApiService - selectUserToken()");
		
		return mapper.selectUserToken(project_code);
	}

	// Fund테이블 status 변경
	public int updateFundStatus(String fundIdx) {
		System.out.println("BankApiService - updateFundStatus");
		
		return mapper.updateFundStatus(fundIdx);
	}

	// 모금 성공한 프로젝트 리스트
	public List<Map<String, String>> selectStandByPaymentProject() {
		System.out.println("BankApiService - selectStandByPaymentProject()");
		
		return mapper.selectStandByPaymentProject();
	}

	// 입금이체 프로젝트 리스트
	public List<Map<String, String>> selectStandByRefundProject() {
		System.out.println("BankApiService - selectStandByRefundProject()"); 
		
		return mapper.selectStandByRefundProject();
	}
	
	
	// 창작자 정보 가져오기
	public Map<String, String> selectCreatorToken(String project_code) {
		return mapper.selectCreatorToken(project_code);
	}
	
}












