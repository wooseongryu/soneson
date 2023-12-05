package com.itwillbs.soneson.vo;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

// 웹소켓 채팅 메세지를 자동으로 파싱하기 위한 클래스 정의 // @Data로 해도 되나?
@Getter
@Setter
@AllArgsConstructor		// 모든 생성자
@NoArgsConstructor		// 기본 생성자
@ToString
public class ChatMessage {
	private String type;
	private String nickname;
	private String message;
	
	// 타입으로 사용될 문자열을 상수(public static final)로 제공
	public static final String TYPE_ENTER = "ENTER";	// 사용 X
	public static final String TYPE_TALK = "TALK";
	public static final String TYPE_LEAVE = "LEAVE";	// 사용 X
	
	
}

// 주영 TESTER
//private int room_idx;				// 채팅방 번호
//private String user_id;			// 구매자(유저) 아이디(닉네임/이름)

//private String creator_id;		// 판매자(창작자) 아이디(닉네임/이름)
//private String creator_profile;	// 상대방 프로필 사진(대화 내용에 나오는게 아닌 대화창 화면에 표기할 용도)

////private int unread_count;		// 안 읽은 메세지 수

//private Timestamp date;			// 메세지 주고 받는 일자(년월일)
									// 발송 시각은?(오후 몇시 몇분)
									// 읽음 표시는?(1 또는 사라짐)
