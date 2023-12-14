package com.itwillbs.soneson.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
@AllArgsConstructor // 파라미터 싹 다 받도록!
@Data
public class ChatRoomListVO { // 채팅방 목록 중 1개의 정보를 관리하는 클래스
	private String room_id;
	private String user_id;
	
}