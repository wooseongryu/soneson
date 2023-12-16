package com.itwillbs.soneson.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.itwillbs.soneson.service.ChatService;
import com.itwillbs.soneson.vo.ChatMessage2;

@Controller
public class ChatController {
   @Autowired
   private ChatService chatService;
   
   Gson gson = new Gson();
   
   // 전체 채팅방
//   @GetMapping("ChatMain")
//   public String main() {
//      return "chat/main";
//   }
      
   
   // 1:1 채팅방
   @GetMapping("ChatMain2")
   public String main2(HttpSession session, String id, Model model) {
      
      String sId = (String)session.getAttribute("sId");
      System.out.println("sId :" + sId);
         
      model.addAttribute("receiver_id" + id);
      
      return "mypage/chat/main2";
   }
   
   // 채팅 아이콘 리스트
   @GetMapping("Chatting")
   public String chatting(HttpSession session) {
      System.out.println("ChatController - chatting()");

      String sId = (String)session.getAttribute("sId");
         System.out.println("sId : " + sId);
      
      return "mypage/chat/chatting";
   }

   // 채팅방 채팅 목록 조회
   @ResponseBody
   @GetMapping("requestChatList")
   public String chatList(String room_id) {
      // ChatService - getChatList() 메서드 호출하여 채팅 목록 조회 요청
      // => 파라미터 : room_id   리턴타입 : List<ChatMessage2>(chatList)
      List<ChatMessage2> chatList = chatService.getChatList(room_id);
      return gson.toJson(chatList);
   }
   
   
}