package com.itwillbs.soneson.vo;

import java.time.LocalDateTime;

import lombok.Data;


@Data
public class ChatVO {
	private String roomId;				// 채팅방 아이디
	private String senderId;			// 메세지 발신자 아이디
	private String receiverId;			// 메세지 수신자 아이디
	private String message;				// 채팅 메세지
	private LocalDateTime writeDate;	// 메세지 주고 받는 일자 및 시간(년월일)
	

	
	
}

