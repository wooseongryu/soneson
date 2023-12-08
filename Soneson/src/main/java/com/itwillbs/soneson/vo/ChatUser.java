package com.itwillbs.soneson.vo;

import org.springframework.web.socket.WebSocketSession;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
// 사용자의 세션 정보를 관리하는 클래스
public class ChatUser {
	private String userId; // 사용자 아이디
	private WebSocketSession session; // 웹소켓 세션
}
