package com.itwillbs.soneson.vo;

import lombok.Data;

// 2.5. 이체서비스 - 2.5.2. 입금이체 API 응답 데이터의 요청 목록 중 각 입금 요청 정보 관리 클래스
@Data
public class DepositVO {
	private int tran_no; // 거래순번
	private String bank_tran_id; // 거래고유번호(참가기관)
	private String bank_tran_date; //  거래일자(참가기관)
	private String bank_code_tran; // 응답코드를 부여한 참가기관.표준코드
	private String bank_rsp_code; // 응답코드(참가기관)
	private String bank_rsp_message; // 응답메시지(참가기관)
	private String fintech_use_num; // 입금계좌 핀테크이용번호
	private String account_alias; // 입금계좌 별칭
	private String bank_code_std; // 입금(개설)기관.표준코드
	private String bank_code_sub; // 입금(개설)기관.점별코드
	private String bank_name; // 입금(개설)기관명
	private String account_num_masked; // 입금계좌번호(출력용)
	private String print_content; // 입금계좌인자내역
	private String account_holder_name; // 수취인(입금)인성명
	private long tran_amt; // 거래금액
	private String cms_num; // CMS 번호
	private String withdraw_bank_tran_id; // 출금이체 거래고유번호
}












