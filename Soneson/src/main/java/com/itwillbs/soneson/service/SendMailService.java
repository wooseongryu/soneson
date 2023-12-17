package com.itwillbs.soneson.service;

import org.springframework.stereotype.Service;

import com.itwillbs.soneson.handler.SendMailClient;



@Service
public class SendMailService {
	
	// 인증 메일 발송 요청을 위한 sendAuthMail() 메서드 정의
	public String sendAuthMail(String id, String email) {
		// 인증 메일에 포함시킬 난수 생성
		String authCode = com.itwillbs.soneson.handler.GenerateRandomCode.getRandomCode(50); // 길이 50 만큼의 난수 생성
//		System.out.println(authCode);
		// -----------------------------------------------------------
		// 인증 메일에 포함시킬 제목과 본문 생성
		String subject = "[손에손] 가입 인증 메일입니다.";
		String content = "<a href='http://c3d2306t1.itwillbs.com/soneson/UserEmailAuth?auth_id=" + id + "&auth_code=" + authCode + "'>"
							+ "이메일 인증을 위해 이 링크를 클릭해 주세요!</a>";
		new Thread(new Runnable() {
			
			@Override
			public void run() {
				SendMailClient mailClient = new SendMailClient();
				mailClient.sendMail(email, subject, content);
			}
		}).start();
		
		// 발송된 인증코드 리턴
		return authCode;
	}
	
	public void sendPasswd(String id, String email, String newPasswd) {
		String subject = "[손에손] 비밀번호 변경 메일입니다.";
		
		String content = "임시 비밀번호는 " + newPasswd + " 입니다.";
		
		new Thread(new Runnable() {
			
			@Override
			public void run() {
				SendMailClient mailClient = new SendMailClient();
				mailClient.sendMail(email, subject, content);
			}
		}).start();
	}
}


















