package com.itwillbs.soneson.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

/*====================================================================
 * - 목차 -
 * 1. 관리자 마이페이지
 * 2. 회원 정보 관리
 * 3. 메인페이지 관리
 * 4. 펀딩 프로젝트 관리
 * 5. 게시판관리
 * 6. 펀딩후기관리
 * ===================================================================
 * */


/*====================================================================
 * 1. 관리자 마이페이지
 * ===================================================================
 * */



@Controller
public class AdminController {

	@GetMapping("admin")
	public String admin() {
		System.out.println("AdminController - admin()");
		
		return "mypage/admin/admin_mypage";	
	}


/*====================================================================
 * 2. 회원 정보 관리
 * ===================================================================
 * */
	
	
	@GetMapping("adminSelectUser")
	public String adminSelectUser() {
		System.out.println("AdminController - adminSelectUser()");
		
		return "mypage/admin/admin_select_user";	
	}
	
	@GetMapping("adminSelectUserPay")
	public String adminSelectUserPay() {
		System.out.println("AdminController - adminSelectUserPay()");
		
		return "mypage/admin/admin_select_userPay";	
	}
	
	@GetMapping("adminSelectReport")
	public String adminSelectReport() {
		System.out.println("AdminController - adminSelectReport()");
		
		return "mypage/admin/admin_select_userReport";	
	}
	
/*====================================================================
 * 3. 메인페이지 관리
 * ===================================================================
 * */
	
	@GetMapping("adminSelectMainCate")
	public String adminSelectMainCate() {
		System.out.println("AdminController - adminSelectMainCate()");
		
		return "mypage/admin/admin_select_mainCate";	
	}


/*====================================================================
 * 4. 펀딩 프로젝트 관리
 * ===================================================================
 * */
	
	
	@GetMapping("adminSelectFundAll")
	public String adminSelectFundAll() {
		System.out.println("AdminController - adminSelectFundAll()");
		
		return "mypage/admin/admin_select_fundAll";	
	}
	
	@GetMapping("adminSelectFundBefore")
	public String adminSelectFundBefore() {
		System.out.println("AdminController - adminSelectFundBefore()");
		
		return "mypage/admin/admin_select_fundBefore";	
	}
	
	@GetMapping("adminSelectFundOngoing")
	public String adminSelectFundOngoing() {
		System.out.println("AdminController - adminSelectFundOngoing()");
		
		return "mypage/admin/admin_select_fundOngoing";	
	}

	@GetMapping("adminSelectFundAfter")
	public String adminSelectFundAfter() {
		System.out.println("AdminController - adminSelectFundAfter()");
		
		return "mypage/admin/admin_select_fundAfter";	
	}

/*====================================================================
 * 5. 게시판관리
 * ===================================================================
 * */
	
	
	@GetMapping("adminSelectNotice")
	public String adminSelectNotice() {
		System.out.println("AdminController - adminSelectNotice()");
		
		return "mypage/admin/admin_select_notion";	
	}
	
	@GetMapping("adminSelectQna")
	public String adminSelectQna() {
		System.out.println("AdminController - adminSelectQna()");
		
		return "mypage/admin/admin_select_qna";	
	}
	
	@GetMapping("adminSelectOTO")
	public String adminSelectOTO() {
		System.out.println("AdminController - adminSelectOTO()");
		
		return "mypage/admin/admin_select_OTO";	
	}
	
	@GetMapping("adminSelectEvent")
	public String adminSelectEvent() {
		System.out.println("AdminController - adminSelectEvent()");
		
		return "mypage/admin/admin_select_event";	
	}

	@GetMapping("adminInsertEvent")
	public String adminInsertEvent() {
		System.out.println("AdminController - adminInsertEvent()");
		
		return "mypage/admin/admin_insert_event";	
	}
	
	
/*====================================================================
 * 6. 펀딩후기관리
 * ===================================================================
 * */
	
	@GetMapping("adminSelectReview")
	public String adminSelectReview() {
		System.out.println("AdminController - adminSelectReview()");
		
		return "mypage/admin/admin_select_review";	
	}
	
}
