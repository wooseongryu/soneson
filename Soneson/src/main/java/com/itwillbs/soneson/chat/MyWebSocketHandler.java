package com.itwillbs.soneson.chat;

import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

import org.json.JSONObject;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

import com.google.gson.Gson;
import com.itwillbs.soneson.vo.ChatMessage;

// 웹소켓 핸들링을 위한 클래스 정의 - TextWebSocketHandler 클래스 상속
// => 기본적으로 서버에서 단 하나만 생성됨
public class MyWebSocketHandler extends TextWebSocketHandler {
	// 접속한 클라이언트(사용자)들의 정보를 Map 객체에 저장하기 위한 객체 생성(나와 세션을 1:1로!)
	// key : 웹소켓 세션 아이디(문자열)   value : 웹소켓 세션 객체(WebSocketSession)
	// => HashMap 타입 대신 ConcurrentHashMap 타입 사용 시 여러 Thread 가 동시 접근 시에도 락(Lock)을 통해 안전하게 데이터 관리
	private Map<String, WebSocketSession> users = new ConcurrentHashMap<String, WebSocketSession>();


	@Override
	public void afterConnectionEstablished(WebSocketSession session) throws Exception {
		
		System.out.println("웹소켓 연결됨(afterConnectionEstablished) - " + session.getId());
		
	}

	@Override
	protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {
		System.out.println("메세지 전송됨!(handleTextMessage)");
		

	}

	@Override
	public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
		System.out.println("웹소켓 연결 해제됨!");
		
		
	}
	
	@Override
	public void handleTransportError(WebSocketSession session, Throwable exception) throws Exception {
		System.out.println("웹소켓 오류 발생됨!");
	}

	
}
