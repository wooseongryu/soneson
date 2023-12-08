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

// 웹소켓 핸들링을 위한 클래스 정의 - TextWebSocketHandler 클래스 상속
// => 기본적으로 서버에서 단 하나만 생성됨
public class MyWebSocketHandler extends TextWebSocketHandler {
	// 접속한 클라이언트(사용자)들의 정보를 Map 객체에 저장하기 위한 객체 생성(나와 세션을 1:1로!)
	// key : 웹소켓 세션 아이디(문자열)   value : 웹소켓 세션 객체(WebSocketSession)
	// => HashMap 타입 대신 ConcurrentHashMap 타입 사용 시 여러 Thread 가 동시 접근 시에도 락(Lock)을 통해 안전하게 데이터 관리
	private Map<String, WebSocketSession> users = new ConcurrentHashMap<String, WebSocketSession>();
	
	// 메세지 파싱을 수행하기 위한 Gson 객체 생성
	Gson gson = new Gson();

	@Override
	public void afterConnectionEstablished(WebSocketSession session) throws Exception {
		// WebSocket 객체 생성(연결)될 때 자동으로 호출되는 메서드
		System.out.println("웹소켓 연결됨(afterConnectionEstablished) - " + session.getId());
		// session.getId()는 UUID 기반으로 랜덤값 나오고 WebSocket Session이 각자 구분되고 이걸 저장해야함!
		
		// Map 객체에 클라이언트 정보 저장 => 키는 세션 아이디, 값은 세션 객체
		users.put(session.getId(), session);
		System.out.println("클라이언트 목록 : " + users);
	}

	@Override
	protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {
//		System.out.println("메세지 전송됨!(handleTextMessage)");
		
//		System.out.println("전송받은 메세지(객체) : " + message);
		System.out.println("전송받은 메세지 : " + message.getPayload()); // JSON 형식 문자열 전달됨
		
		// ------------------------------------------------------------------
		// [ JSON 형식 문자열 파싱 방법]
		// 1. JSONObject 객체를 통해 메세지를 파싱하여 getXXX() 메서드로 접근
//		JSONObject jo = new JSONObject(message.getPayload());
//		System.out.println("메세지타입 : " + jo.getString("type"));
//		System.out.println("송신자 : " + jo.getString("nickname"));
//		System.out.println("메세지 : " + jo.getString("message"));
				
		// 2. Gson 객체를 활용(Jackson 도 가능)하여 자동 파싱
		// => 파싱에 필요한 속성명과 동일한 이름을 갖는 VO 클래스 형식 필요(VO 패키지에 ChatMessage.java 클래스 만듦!)
		// GSON 객체의 fromJson() 메서드를 호출하여 파싱할 데이터와 파싱 클래스 지정
		// => 해당 클래스 타입의 객체가 리턴됨
//		ChatMessage chatMessage = gson.fromJson(message.getPayload(), ChatMessage.class);
//		System.out.println("ChatMessage : " + chatMessage);
				
		// ------------------------------------------------------------------
		
		// WebSocketSession 객체에 메세지 송신자의 세션 정보가 저장되어 있고
		// TextMessage 객체에 메세지 정보가 저장되어 있음 => getPayload() 메세드 호출
		System.out.println(session.getId() + " : " + message.getPayload());
//		message.getPayload(); // html의 body 부분 갖고 오는거랑 같음!		
		
		// 클라이언트 목록 객체(Map 안의 users)에 저장되어 있는 모든 세션에게 메세지 전송
		// Map 객체의 values() 메서드를 호출하면 모든 value 값만을 리턴받을 수 있으며
		// 향상된 for문을 통해 리턴값을 WebSocketSession 타입으로 저장 반복!
		// cf) Map 객체에서 value와 반대로 오로지 key 값만 받아오고 싶으면 keySet 이용하면 됨 set이 중복 제거해주니까!
		for(WebSocketSession ws : users.values()) {
//			System.out.println(session.getId() + " : " + ws.getId());
			// 클라이언트 목록의 세션 아이디와 현재 요청된 세션 아이디가 다를 경우에만 메세지를 전송
			// (내가 보낸 메세지를 내가 수신된 메세지라고 따로 확인할 필요가 없으니)
			if(!session.getId().equals(ws.getId())) {
				// WebSocketSession 객체의 sendMessage() 메서드를 호출하여 메세지 전송
//				ws.sendMessage(message); // 개발자 도구에 object 보이게 함!
				
				// 메세지 타입 판별("ENTER", "TALK", "LEAVE" - VO 패키지의 ChatMessage.java에 public static final String TYPE_ENTER = "ENTER"; 만들어서!)
//				if(chatMessage.getType().equals(ChatMessage.TYPE_ENTER)) { // 입장 메세지
					// "[닉네임]님이 입장하셨습니다" 를 메세지로 설정 => ChatMessage 객체에 저장
//					chatMessage.setMessage(chatMessage.getNickname() + " 님이 입장하셨습니다.");
//				} else if(chatMessage.getType().equals(ChatMessage.TYPE_LEAVE)) { // 입장 메세지
					// "[닉네임]님이 입장하셨습니다" 를 메세지로 설정 => ChatMessage 객체에 저장
//					chatMessage.setMessage(chatMessage.getNickname() + " 님이 퇴장하셨습니다.");
//				}
//				else if (chatMessage.getType().equals(ChatMessage.TYPE_TALK) { // 대화 메세지					
//				}
				
				// sendMessage() 메서드를 호출하여 메세지 전송
				// => ChatMessage 객체를 JSON 문자열 형식으로 변환하여 전송 (Parsing : String -> Object // Formatting : Object -> String)
				// (Gson 객체의 toJson() 메서드 활용)
				// => 단, sendMessage() 메서드 파라미터 타입은 TextMessage 객체 타입 활용
//				ws.sendMessage(new TextMessage(gson.toJson(chatMessage)));
				
			}
			
			
		}
		
	}

	@Override
	public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
		System.out.println("웹소켓 연결 해제됨!");
		
		// 클라이언트 정보가 저장된 Map 객체에서 현재 종료 요청이 발생한 세션 객체를 제거
		// => Map 객체의 remove() 메서드를 호출하여 전달받은 세션 아이디를 키로 지정
		users.remove(session.getId());
		System.out.println("클라이언트 목록 : " + users);
	}
	
	@Override
	public void handleTransportError(WebSocketSession session, Throwable exception) throws Exception {
		System.out.println("웹소켓 오류 발생됨!");
	}

	
}
