package com.itwillbs.soneson.controller;


import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.itwillbs.soneson.service.AdminService;
import com.itwillbs.soneson.service.UserService;
import com.itwillbs.soneson.vo.NoticeVO;
import com.itwillbs.soneson.vo.UserVO;


@Controller
public class AdminController {

	// 서비스 오토와이어
	@Autowired
	private AdminService adminService;
	
	@Autowired
	private UserService userService;
	
/*====================================================================
 * - 목차 -
 * 1. 관리자 마이페이지
 * 2. 회원 관리
 * 3. 메인페이지 관리
 * 4. 펀딩 프로젝트 관리
 * 5. 펀딩후기관리
 * 6. 정산관리
 * 7. 게시판관리
 * ===================================================================
 * */


/*====================================================================
 * 1. 관리자 마이페이지
 * ===================================================================
 * */

	// 관리자 마이페이지로 이동
	@GetMapping("admin")
	public String admin(HttpSession session, Model model) {
		System.out.println("AdminController - admin()");
		
//		String sId = (String)session.getAttribute("sId");
//		String isAdmin = (String)session.getAttribute("isAdmin");
//		
//		if(sId == null || isAdmin.equals("N")) {
//			model.addAttribute("msg", "잘못된 접근입니다!");
//			return "fail_back";
//		}
		
		
		return "mypage/admin/admin_mypage";	
	}


/*====================================================================
 * 2. 회원 관리
 * ===================================================================
 * */
	
	// 회원 관리 - 회원정보관리 페이지로 이동	
	@GetMapping("adminSelectUser")
	public String adminSelectUser(Model model, HttpSession session) {
		System.out.println("AdminController - adminSelectUser()");
		
//		String sId = (String)session.getAttribute("sId");
//		String isAdmin = (String)session.getAttribute("isAdmin");
//		
//		if(sId == null || isAdmin.equals("N")) {
//			model.addAttribute("msg", "잘못된 접근입니다!");
//			return "fail_back";
//		}
		
		List<UserVO> userList = userService.getUserList();
		// Model 객체에 List 객체 저장
		model.addAttribute("userList", userList);
		
		return "mypage/admin/admin_select_user";	
	}
	
	// 관리자 권한 부여/해제
	@GetMapping("adminUserAuthorize")
	public String adminUserAuthorize(UserVO user, HttpSession session, Model model) {
		System.out.println("AdminController - adminUserAuthorize()");
		
//		String sId = (String)session.getAttribute("sId");
//		String isAdmin = (String)session.getAttribute("isAdmin");
//		
//		if(sId == null || isAdmin.equals("N")) {
//			model.addAttribute("msg", "잘못된 접근입니다!");
//			return "fail_back";
//		}
		
		int updateCount = adminService.updateUserAuthorize(user);
		
		if (updateCount == 0) {
			model.addAttribute("msg", "권한 부여 실패!");
			return "fail_back";
		}
		
		return "redirect:/adminSelectUser";
	}
	
	
	
	// 회원 관리 - 회원결제관리 페이지로 이동	
	@GetMapping("adminSelectUserPay")
	public String adminSelectUserPay() {
		System.out.println("AdminController - adminSelectUserPay()");
		
		return "mypage/admin/admin_select_userPay";	
	}
	
	// 회원 관리 - 신고회원관리 페이지로 이동
	@GetMapping("adminSelectReport")
	public String adminSelectReport() {
		System.out.println("AdminController - adminSelectReport()");
		
		return "mypage/admin/admin_select_userReport";	
	}
	
/*====================================================================
 * 3. 메인페이지 관리
 * ===================================================================
 * */
	
	// 메인페이지 관리 - 메인 카테고리 관리 페이지로 이동
	@GetMapping("adminSelectMainCate")
	public String adminSelectMainCate() {
		System.out.println("AdminController - adminSelectMainCate()");
		
		return "mypage/admin/admin_select_mainCate";	
	}

	// 메인페이지 관리 - 메인 세부 카테고리 관리 페이지로 이동 ( 만들어야함 )
	
	
/*====================================================================
 * 4. 펀딩 프로젝트 관리
 * ===================================================================
 * */

	// 펀딩 프로젝트 관리 - 등록된 전체 펀딩 관리 페이지로 이동
	@GetMapping("adminSelectFundAll")
	public String adminSelectFundAll() {
		System.out.println("AdminController - adminSelectFundAll()");
		
		return "mypage/admin/admin_select_fundAll";	
	}
	
	// 펀딩 프로젝트 관리 - 진행예정인 펀딩 관리 페이지로 이동
	@GetMapping("adminSelectFundBefore")
	public String adminSelectFundBefore() {
		System.out.println("AdminController - adminSelectFundBefore()");
		
		return "mypage/admin/admin_select_fundBefore";	
	}
	
	// 펀딩 프로젝트 관리 - 진행중인 펀딩 관리 페이지로 이동
	@GetMapping("adminSelectFundOngoing")
	public String adminSelectFundOngoing() {
		System.out.println("AdminController - adminSelectFundOngoing()");
		
		return "mypage/admin/admin_select_fundOngoing";	
	}

	
	// 펀딩 프로젝트 관리 - 마감된 펀딩 관리 페이지로 이동
	@GetMapping("adminSelectFundAfter")
	public String adminSelectFundAfter() {
		System.out.println("AdminController - adminSelectFundAfter()");
		
		return "mypage/admin/admin_select_fundAfter";	
	}


/*====================================================================
 * 5. 펀딩후기관리
 * ===================================================================
 * */

	
	// 펀딩후기관리 관리 - 펀딩후기관리 페이지로 이동
	@GetMapping("adminSelectReview")
	public String adminSelectReview() {
		System.out.println("AdminController - adminSelectReview()");
		
		return "mypage/admin/admin_select_review";	
	}

/*====================================================================
 * 6. 정산관리
 * ===================================================================
 * */
	
	// 정산관리 - 정산관리 페이지로 이동	
	@GetMapping("adminSelectAccount")
	public String adminSelectAccount() {
		System.out.println("AdminController - adminSelectAccount()");
		
		return "mypage/admin/admin_select_account";	
	}

	
/*====================================================================
 * 7. 게시판관리
 * ===================================================================
 * */
	
	// 게시판관리 - 공지사항 페이지로 이동
	@GetMapping("adminSelectNotice")
	public String adminSelectNotice(Model model, HttpSession session) {
		System.out.println("AdminController - adminSelectNotice()");
		
//		String sId = (String)session.getAttribute("sId");
//		String isAdmin = (String)session.getAttribute("isAdmin");
		
//		if(sId == null || isAdmin.equals("N")) {
//			model.addAttribute("msg", "잘못된 접근입니다!");
//			return "fail_back";
//		}
		
		List<NoticeVO> noticeList = adminService.getNotice("");
		model.addAttribute("noticeList", noticeList);
		
		return "mypage/admin/admin_select_notion";	
	}

	
	// 관리자 공지사항 등록
	@PostMapping("adminNoticeInsertPro")
	public String adminNoticeInsertPro(NoticeVO notice, Model model) {
		System.out.println("AdminController - adminNoticeInsertPro()");
		int insertCount = adminService.insertNotice(notice);
		
//		String sId = (String)session.getAttribute("sId");
//		String isAdmin = (String)session.getAttribute("isAdmin");
//		
//		if(sId == null || isAdmin.equals("N")) {
//			model.addAttribute("msg", "잘못된 접근입니다!");
//			return "fail_back";
//		}

		if (insertCount == 0) {
			model.addAttribute("msg", "등록 실패!");
			return "fail_back";
		}
		
		return "redirect:/adminSelectNotice";
	}
	
	// 관리자 공지사항 삭제
	@GetMapping("adminNoticeDelete")
	public String adminNoticeDelete(int notice_idx, Model model, HttpSession session) {
		System.out.println("AdminController - adminNoticeDelete()");
		
//		String sId = (String)session.getAttribute("sId");
//		String isAdmin = (String)session.getAttribute("isAdmin");
//		
//		if(sId == null || isAdmin.equals("N")) {
//			model.addAttribute("msg", "잘못된 접근입니다!");
//			return "fail_back";
//		}
		
		int deleteCount = adminService.deleteNotice(notice_idx);
		
		if (deleteCount == 0) {
			model.addAttribute("msg", "삭제 실패!");
			return "fail_back";
		}
		
		return "redirect:/adminSelectNotice";
	}
	
	// 관리자 공지사항 수정 폼
	@GetMapping("adminNoticeUpdate")
	public String adminNoticeUpdate(String notice_idx, Model model, HttpSession session) {
		System.out.println("AdminController - adminNoticeUpdate()");
		
//		String sId = (String)session.getAttribute("sId");
//		String isAdmin = (String)session.getAttribute("isAdmin");
//		
//		if(sId == null || isAdmin.equals("N")) {
//			model.addAttribute("msg", "잘못된 접근입니다!");
//			return "fail_back";
//		}
		
		NoticeVO notice = adminService.getNotice(notice_idx).get(0);
		model.addAttribute("notice", notice);
		
		return "mypage/admin/update_notion";
	}
	
	// 관리자 공지사항 수정
	@PostMapping("adminNoticeUpdatePro")
	public String adminNoticeUpdatePro(NoticeVO notice, Model model) {
		System.out.println("AdminController - adminNoticeUpdatePro()");
		int updateCount = adminService.updateNotice(notice);
		
		if (updateCount == 0) {
			model.addAttribute("msg", "수정 실패!");
			return "fail_back";
		}
		
		return "redirect:/adminSelectNotice";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	// 게시판관리 - 자주묻는 질문 페이지로 이동
	@GetMapping("adminSelectQna")
	public String adminSelectQna() {
		System.out.println("AdminController - adminSelectQna()");
		
		return "mypage/admin/admin_select_qna";	
	}
	
	// 게시판관리 - 1:1문의 페이지로 이동
	@GetMapping("adminSelectOTO")
	public String adminSelectOTO() {
		System.out.println("AdminController - adminSelectOTO()");
		
		return "mypage/admin/admin_select_OTO";	
	}
	
	// 게시판관리 - 이벤트 페이지로 이동
	@GetMapping("adminSelectEvent")
	public String adminSelectEvent() {
		System.out.println("AdminController - adminSelectEvent()");
		
		return "mypage/admin/admin_select_event";	
	}

	
	// 이벤트 등록 페이지로 이동
	@GetMapping("adminInsertEvent")
	public String adminInsertEvent() {
		System.out.println("AdminController - adminInsertEvent()");
		
		return "mypage/admin/admin_insert_event";	
	}
	
	// 이벤트 카테고리 등록 페이지로 이동
	@GetMapping("adminInsertEventCate")
	public String adminInsertEventCate() {
		System.out.println("AdminController - adminInsertEventCate()");
		
		return "mypage/admin/admin_insert_eventCategory";	
	}
	
	
	
}
