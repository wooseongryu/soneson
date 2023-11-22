package com.itwillbs.soneson.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.itwillbs.soneson.vo.NoticeVO;
import com.itwillbs.soneson.vo.UserVO;



@Mapper
public interface AdminMapper {
	
	/*====================================================================
	 * 관리자 회원 정보 관리 페이지
	 * ===================================================================
	 * */
	
	int updateUserAuthorize(UserVO user);
	
	
	/*==============================================================
	 * 공지 
	 * =============================================================
	 * */
	int insertNotice(NoticeVO notice);
	
	List<NoticeVO> selectNotice(String notice_idx);
	
	int deleteNotice(int notice_idx);

	int updateNotice(NoticeVO notice);
	
	NoticeVO selectNotice(int notice_idx);
	
	
}
