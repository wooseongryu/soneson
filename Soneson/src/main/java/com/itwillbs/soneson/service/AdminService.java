package com.itwillbs.soneson.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwillbs.soneson.mapper.AdminMapper;
import com.itwillbs.soneson.vo.NoticeVO;
import com.itwillbs.soneson.vo.UserVO;


@Service
public class AdminService {

	@Autowired
	private AdminMapper mapper;	
	
	
	/*====================================================================
	 * 관리자 회원 정보 관리 페이지
	 * ===================================================================
	 * */
	
	// 관리자 권한 부여/해제
	public int updateUserAuthorize(UserVO user) {
		System.out.println("AdminService - updateUserAuthorize()");
		return mapper.updateUserAuthorize(user);
	}
	
	
	/*==============================================================
	 * 공지 
	 * =============================================================
	 * */

	// 공지 등록
	public int insertNotice(NoticeVO notice) {
		return mapper.insertNotice(notice);
	}
	
	// 공지 조회
	// noticeIdx를 널스트링으로 전달 시 전체 공지 조회
	public List<NoticeVO> getNotice(String notice_idx) {
		System.out.println("AdminService - getNotice()");
		return mapper.selectNotice(notice_idx);
	}

	// 공지 삭제
	public int deleteNotice(int notice_idx) {
		System.out.println("AdminService - deleteNotice()");
		return mapper.deleteNotice(notice_idx);
	}

	// 공지 수정
	public int updateNotice(NoticeVO notice) {
		System.out.println("AdminService - updateNotice()");
		return mapper.updateNotice(notice);
	}
	
	
}
