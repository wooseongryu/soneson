package com.itwillbs.soneson.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class ChatController {
	// 채팅 팝업 페이지
	@GetMapping("chatting")
	public String chatting() {
		System.out.println("ChatController - chatting()");
		return "mypage/chat/chatting";
		
		
	}
}
