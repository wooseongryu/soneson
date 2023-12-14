package com.itwillbs.soneson.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.itwillbs.soneson.vo.ChatMessage2;
import com.itwillbs.soneson.vo.ChatRoomListVO;

@Mapper
public interface ChatMapper {
	
	// 채팅방 저장 요청
	void insertChatRoom(List<ChatRoomListVO> chatRoomList);
	
	// 채팅방 목록 조회 요청
	List<Map<String, String>> selectChatRoomList(String sender_id);
	
	// 채팅방 채팅 내역 조회 요청
	List<ChatMessage2> selectChatList(String room_id);
	
	// 채팅 메세지 저장 요청
	void insertMessage(ChatMessage2 chatMessage);
	
	// 채팅방 사용자 삭제 요청
	int deleteChatRoomUser(ChatMessage2 chatMessage);

}
