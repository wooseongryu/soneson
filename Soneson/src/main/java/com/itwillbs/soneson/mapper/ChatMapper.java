package com.itwillbs.soneson.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.itwillbs.soneson.vo.ChatMessage2;
import com.itwillbs.soneson.vo.ChatRoomListVO;

@Mapper
public interface ChatMapper {

	void insertChatRoom(List<ChatRoomListVO> chatRoomList);

	List<Map<String, String>> selectChatRoomList(String sender_id);

	List<ChatMessage2> selectChatList(String room_id);

	void insertMessage(ChatMessage2 chatMessage);

	int deleteChatRoomUser(ChatMessage2 chatMessage);

	int selectCurrentChatRoomUserCountFromRoomId(ChatMessage2 chatMessage);

	void updateChatRoomUser(ChatMessage2 chatMessage);

}
