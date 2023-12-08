package com.itwillbs.soneson.vo;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

// 웹소켓 채팅 메세지를 자동으로 파싱하기 위한 클래스 정의(1:1 채팅방용)
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class ChatMessage2 {
	private String type; // 메세지 타입
	private String userId; // 현재 세션의 사용자 아이디(메세지 발신자 아이디)
	private String receiverId; // 메세지 수신자 아이디
	private String roomId; // 채팅방 아이디
	private String message; // 채팅 메세지
	
	// 타입으로 사용될 문자열을 상수(public static final)로 제공
	public static final String TYPE_ENTER = "ENTER"; // 채팅방 입장
	public static final String TYPE_TALK = "TALK"; // 채팅 메세지 전송
	public static final String TYPE_LEAVE = "LEAVE"; // 채팅방 퇴장
	public static final String TYPE_REMOVE = "REMOVE"; // 채팅방 삭제
	public static final String TYPE_INIT = "INIT"; // 채팅 페이지 접속(소켓 초기화)
	public static final String TYPE_START = "START"; // 채팅 시작
	
}









