package com.itwillbs.soneson.handler;

import java.security.SecureRandom;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

// 핀테크 요청 작업에 사용할 다양한 값을 생성하는 클래스
// => 스프링 빈으로 등록하여 다른 클래스에서 자동 주입받기 위해
//    @Component 어노테이션 적용
@Component
public class BankValueGenerator {
	// 프로퍼티로 등록된 이용기관코드(client_use_code) 가져오기
	@Value("${client_use_code}")
	private String client_use_code;
	
	// 거래고유번호 자동 생성 - getBankTranId() 메서드 정의
	// => 파라미터 : 없음   리턴타입 : String
	// => 고유번호 형식 : 이용기관코드(10자리) + 생성주체구분코드("U") + 이용기관 부여번호(9자리)
	//                    ex) F123456789U4BC34239Z
	public String getBankTranId() {
		String bank_tran_id = "";
		
		// 만약, 이용기관 부여번호(9자리)가 정수형 난수로만 구성될 경우 => SecureRandom 클래스 활용
//		SecureRandom sr = new SecureRandom();
//		int rNum = sr.nextInt(1000000000); // 0 ~ 999999999
////		System.out.println(rNum);
//		// 단, 9자리보다 적은 정수(또는 실수)형 난수는 앞자리에 0이 올 경우 표현되지 않으므로
//		// 9자리 난수 문자열로 활용이 불가능할 수 있다! => 문자열 포맷 처리하는 추가 작업 필요
//		// => 추출된 난수를 String 클래스의 format() 메서드를 통해 9자리 문자열 형식을 지정하되
//		//    부족한 자릿수(앞자리)는 0으로 채우기
//		bank_tran_id = String.format("%09d", rNum);
		// ===============================================================================
		// GenerateRandomCode - getRandomCode() 메서드 재사용 => 파라미터로 난수 길이 전달
		// => 알파벳 대문자로 모두 변환 시 String 클래스의 toUpperCase() 메서드 활용
		bank_tran_id = client_use_code + "U" + GenerateRandomCode.getRandomCode(9).toUpperCase();
		
		return bank_tran_id;
	}

	// 작업 요청일시(거래시간 등) 자동 생성 - getTranDTime() 메서드 정의
	// => 파라미터 : 없음   리턴타입 : String
	// => 현재 시스템의 날짜 및 시각을 기준으로 14자리 문자열 생성(yyyyMMddHHmmss 형식 활용)
	// => java.time.LocalDateTime 클래스 활용
	public String getTranDTime() {
		// 현재 시스템의 날짜 및 시각 정보 가져오기
		LocalDateTime localDateTime = LocalDateTime.now(); 
		
		// java.time.DateTimeFormatter 클래스의 ofPattern() 메서드 활용하여 포맷 변경
		DateTimeFormatter dateTimeFormatter = DateTimeFormatter.ofPattern("yyyyMMddHHmmss");
		
		// LocalDateTime 객체에 포맷을 적용하여 문자열로 리턴되는 날짜 및 시각 정보 리턴
		return localDateTime.format(dateTimeFormatter);
	}
}


















