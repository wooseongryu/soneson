package com.itwillbs.soneson.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ChatController {
	
	// 전체 채팅방
//	@GetMapping("ChatMain")
//	public String main() {
//		return "chat/main";
//	}
		
	// 1:1 채팅방 팝업 페이지
	@GetMapping("chatting")
	public String chatting() {
		System.out.println("ChatController - chatting()");
		return "mypage/chat/chatting";
	}
	
	
}
