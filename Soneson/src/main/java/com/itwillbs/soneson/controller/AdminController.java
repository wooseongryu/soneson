package com.itwillbs.soneson.controller;


import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.itwillbs.soneson.service.AdminService;
import com.itwillbs.soneson.service.ProjectListService;
import com.itwillbs.soneson.service.UserService;
import com.itwillbs.soneson.vo.EventCateVO;
import com.itwillbs.soneson.vo.EventVO;
import com.itwillbs.soneson.vo.QnaCateVO;
import com.itwillbs.soneson.vo.QnaVO;
import com.itwillbs.soneson.vo.UserVO;


@Controller
public class AdminController {

	// 서비스 오토와이어
	@Autowired
	private AdminService adminService;
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private ProjectListService projectListService;
	
	
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
		
		String sId = (String)session.getAttribute("sId");
		String isAdmin = (String)session.getAttribute("isAdmin");
		
		
		
		if(sId == null || isAdmin.equals("N")) {
			model.addAttribute("msg", "잘못된 접근입니다!");
			return "fail_back";
		}
		
		
		int joinUserCount = adminService.countJoinUser();

		int deleteUserCount = adminService.countDeleteUser();

		
		// 프로젝트 달성률 그래프
		List<Map<String, Object>> projectMyList = adminService.selectProjectMyList();

		// 프로젝트 달성률 그래프
		List<Map<Object, Object>> costAmount = adminService.costAmount();
		
		
		
		

		model.addAttribute("costAmount", costAmount);
		model.addAttribute("projectMyList", projectMyList);
		model.addAttribute("joinUserCount", joinUserCount);
		model.addAttribute("deleteUserCount", deleteUserCount);
		
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
		
		String sId = (String)session.getAttribute("sId");
		String isAdmin = (String)session.getAttribute("isAdmin");
		
		if(sId == null || isAdmin.equals("N")) {
			model.addAttribute("msg", "잘못된 접근입니다!");
			return "fail_back";
		}
		
		List<UserVO> userList = userService.getUserList();
		// Model 객체에 List 객체 저장
		model.addAttribute("userList", userList);
		
		return "mypage/admin/admin_select_user";	
	}
	
	// 관리자 권한 부여/해제
	@GetMapping("adminUserAuthorize")
	public String adminUserAuthorize(UserVO user, HttpSession session, Model model) {
		System.out.println("AdminController - adminUserAuthorize()");
		
		String sId = (String)session.getAttribute("sId");
		String isAdmin = (String)session.getAttribute("isAdmin");
		
		if(sId == null || isAdmin.equals("N")) {
			model.addAttribute("msg", "잘못된 접근입니다!");
			return "fail_back";
		}
		
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
	public String adminSelectFundAll(Model model) {
		System.out.println("AdminController - adminSelectFundAll()");
		
		List<Map<String, Object>> projectList = adminService.selectProjectList();
		
		model.addAttribute("projectList", projectList);
		
		
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
	
	
	
	
/*====================================================================
 *  자주 묻는 질문
 * ===================================================================
 * */
	
	// 관리자 자주 묻는 질문 조회 페이지
	@GetMapping("adminSelectQna")
	public String adminSelectQna(Model model, HttpSession session) {
		System.out.println("AdminController - adminSelectQna()");
		
		String sId = (String)session.getAttribute("sId");
		String isAdmin = (String)session.getAttribute("isAdmin");
		
		if(sId == null || isAdmin.equals("N")) {
			model.addAttribute("msg", "잘못된 접근입니다!");
			return "fail_back";
		}
		
		List<QnaVO> qnaList = adminService.getQna("");
		model.addAttribute("qnaList", qnaList);
		
		return "mypage/admin/admin_select_qna";
	}
	
	// 관리자 자주 묻는 질문 등록 폼
	@GetMapping("adminQNAInsert")
	public String adminQNAInsert(Model model, HttpSession session) {
		System.out.println("AdminController - adminQNAInsert()");
		
		String sId = (String)session.getAttribute("sId");
		String isAdmin = (String)session.getAttribute("isAdmin");
		
		if(sId == null || isAdmin.equals("N")) {
			model.addAttribute("msg", "잘못된 접근입니다!");
			return "fail_back";
		}
		
		List<QnaCateVO> qnaCategoryList = adminService.getQnaCategory();
		
		model.addAttribute("qnaCategoryList", qnaCategoryList);
		return "mypage/admin/admin_insert_qna";
	}
	
	// 관리자 자주묻는 질문 등록
	@PostMapping("adminQNAInsertPro")
	public String adminQNAInsertPro(QnaVO qna, Model model) {
		System.out.println("AdminController - adminQNAInsertPro()");
		int insertCount = adminService.insertQna(qna);
		
		if (insertCount == 0) {
			model.addAttribute("msg", "등록 실패!");
			return "fail_back";
		}
		
		return "redirect:/adminSelectQna";
	}
	
	// 관리자 자주묻는 질문 수정 폼
	@GetMapping("adminQNAUpdate")
	public String adminQNAUpdate(Model model, String qna_idx, HttpSession session) {
		System.out.println("AdminController - adminQNAUpdate()");
		
		String sId = (String)session.getAttribute("sId");
		String isAdmin = (String)session.getAttribute("isAdmin");
		
		if(sId == null || isAdmin.equals("N")) {
			model.addAttribute("msg", "잘못된 접근입니다!");
			return "fail_back";
		}
		
		List<QnaCateVO> qnaCategoryList = adminService.getQnaCategory();
		QnaVO qna = adminService.getQna(qna_idx).get(0);
		
		model.addAttribute("qnaCategoryList", qnaCategoryList);
		model.addAttribute("qna", qna);
		
		return "mypage/admin/admin_update_qna";
	}
	
	// 관리자 자주묻는 질문 수정
	@PostMapping("adminQNAUpdatePro")
	public String adminQNAUpdatePro(QnaVO qna, Model model) {
		System.out.println("AdminController - adminQNAUpdatePro()");
		int updateCount = adminService.updateQna(qna);
		
		if (updateCount == 0) {
			model.addAttribute("msg", "수정 실패!");
			return "fail_back";
		}
		
		return "redirect:/adminSelectQna";
	}
	
	// 관리자 자주묻는 질문 삭제
	@GetMapping("adminQNADelete")
	public String adminQNADelete(Model model, String qna_idx, HttpSession session) {
		System.out.println("AdminController - adminQNADelete()");
		
		String sId = (String)session.getAttribute("sId");
		String isAdmin = (String)session.getAttribute("isAdmin");
		
		if(sId == null || isAdmin.equals("N")) {
			model.addAttribute("msg", "잘못된 접근입니다!");
			return "fail_back";
		}
		
		int deleteCount = adminService.deleteQna(qna_idx);
		
		if (deleteCount == 0) {
			model.addAttribute("msg", "삭제 실패!");
			return "fail_back";
		}
		
		return "redirect:/adminSelectQna";
	}
	
/*====================================================================
 *  자주 묻는 질문 카테고리
 * ===================================================================
 * */
	
	// 관리자 질문카테고리 관리 페이지 및 폼
	@GetMapping("adminQNACategoryInsert")
	public String adminCategoryUpdate(Model model, HttpSession session) {
		System.out.println("AdminController - adminCategoryUpdate()");
		
		String sId = (String)session.getAttribute("sId");
		String isAdmin = (String)session.getAttribute("isAdmin");
		
		if(sId == null || isAdmin.equals("N")) {
			model.addAttribute("msg", "잘못된 접근입니다!");
			return "fail_back";
		}
		
		List<QnaCateVO> qnaCategoryList = adminService.getQnaCategory();
		
		model.addAttribute("qnaCategoryList", qnaCategoryList);
		
		return "mypage/admin/admin_insert_qnaCate";
	}
	
	// 관리자 질문카테고리 등록
	@PostMapping("adminQNACategoryInsertPro")
	public String adminQNACategoryInsertPro(String qnaCate_subject, Model model) {
		System.out.println("AdminController - adminQNACategoryInsertPro()");
		
		List<QnaCateVO> categoryList = adminService.getQnaCategory();
		for (QnaCateVO cate : categoryList) {
			if (qnaCate_subject.equals(cate.getQnaCate_subject())) {
				model.addAttribute("msg", "중복된 카테고리입니다!");
				return "fail_back";
			}
		}
		
		int insertCount = adminService.insertQnaCategory(qnaCate_subject);
		
		if (insertCount == 0) {
			model.addAttribute("msg", "등록 실패!");
			return "fail_back";
		}
		
		return "redirect:/adminQNACategoryInsert";
	}
	
	// 관리자 질문카테고리 삭제
	@GetMapping("adminQNACategoryDelete")
	public String adminQNACategoryDelete(String qnaCate_subject, HttpSession session, Model model) {
		System.out.println("AdminController - adminQNACategoryDelete()");
		
		String sId = (String)session.getAttribute("sId");
		String isAdmin = (String)session.getAttribute("isAdmin");
		
		if(sId == null || isAdmin.equals("N")) {
			model.addAttribute("msg", "잘못된 접근입니다!");
			return "fail_back";
		}
		
		int deleteCount = adminService.deleteQnaCategory(qnaCate_subject);
		
		if (deleteCount == 0) {
			model.addAttribute("msg", "삭제 실패!");
			return "fail_back";
		}
		
		return "redirect:/adminQNACategoryInsert";
	}
	
	
	// 게시판관리 - 1:1문의 페이지로 이동
	@GetMapping("adminSelectOTO")
	public String adminSelectOTO() {
		System.out.println("AdminController - adminSelectOTO()");
		
		return "mypage/admin/admin_select_OTO";	
	}
	
	
	
/*====================================================================
 * 게시판
 * ===================================================================
 * */
	
	// 관리자 게시판 목록 조회 페이지
	@GetMapping("adminSelectEvent")
	public String adminSelectEvent(EventVO event, Model model, HttpSession session) {
		System.out.println("AdminController - adminEventList()");
		
		String sId = (String)session.getAttribute("sId");
		String isAdmin = (String)session.getAttribute("isAdmin");
		
		if(sId == null || isAdmin.equals("N")) {
			model.addAttribute("msg", "잘못된 접근입니다!");
			return "fail_back";
		}
		
		List<EventVO> eventList = adminService.getEvent("");
		
		LocalDate now = LocalDate.now();
        DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy-MM-dd");
        String formatedNow = now.format(dtf);
        
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");

        
        try {
			Date nowDate = formatter.parse(formatedNow);

			for (EventVO e : eventList) {
				if(!e.getEvent_startDt().equals("") && !e.getEvent_startDt().equals("")) {
					Date eventEndDate = formatter.parse(e.getEvent_endDt());
					Date eventStartDate = formatter.parse(e.getEvent_startDt());
					
					if (eventStartDate.compareTo(nowDate) > 0) {
						e.setEvent_status("대기");
						continue;
					}
				
					if (eventEndDate.compareTo(nowDate) < 0) {
						e.setEvent_status("종료");
					} else {
						e.setEvent_status("진행중");
					}
				}
			
			
				
			}
		} catch (ParseException e) {
			e.printStackTrace();
		}
		model.addAttribute("eventList", eventList);
		
		return "mypage/admin/admin_select_event";
	}
	
	// 관리자 게시판 등록 폼
	@GetMapping("adminEventInsert")
	public String adminEventInsert(HttpSession session, Model model) {
		System.out.println("AdminController - adminEventInsert()");
		
		String sId = (String)session.getAttribute("sId");
		String isAdmin = (String)session.getAttribute("isAdmin");
		
		if(sId == null || isAdmin.equals("N")) {
			model.addAttribute("msg", "잘못된 접근입니다!");
			return "fail_back";
		}
		
		List<EventCateVO> eventCategoryList = adminService.getEventCategory();
		
		model.addAttribute("eventCategoryList", eventCategoryList);
		
		return "mypage/admin/admin_insert_event";
	}
	
	// 관리자 게시판 등록
	@PostMapping("adminEventInsertPro")
	public String adminEventInsertPro(EventVO event, HttpSession session, Model model) {
		System.out.println("AdminController - adminEventInsertPro()");
		
		String uploadDir = "/resources/upload"; // 가상의 경로
		String saveDir = session.getServletContext().getRealPath(uploadDir); // 실제 업로드 경로
		String subDir = ""; // 서브디렉토리명을 저장할 변수 선언(날짜로 구분)
		
		System.out.println(saveDir);
		
		
		try {
			LocalDate now = LocalDate.now();
			DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd");
			subDir = now.format(dtf);
			saveDir += "/" + subDir;
			Path path = Paths.get(saveDir);
			Files.createDirectories(path);
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		MultipartFile mFile_poster = event.getEvent_poster_multi();
		MultipartFile mFile_thumb = event.getEvent_thumbnail_multi();
		
		String uuid = UUID.randomUUID().toString();
		event.setEvent_poster("");
		String fileName_poster = uuid.substring(0, 8) + "_" + mFile_poster.getOriginalFilename();
		String fileName_thumb = uuid.substring(0, 8) + "_" + mFile_thumb.getOriginalFilename();
		
		if(!mFile_poster.getOriginalFilename().equals("")) {
			event.setEvent_poster(subDir + "/" + fileName_poster);
		}
		
		if(!mFile_thumb.getOriginalFilename().equals("")) {
			event.setEvent_thumbnail(subDir + "/" + fileName_thumb);
		}
		
		int insertCount = adminService.insertEvent(event);
		
		if (insertCount == 0) {
			model.addAttribute("msg", "등록 실패!");
			return "fail_back";
		}
		
		// 실제폴더에 저장.
		try {
			if(!mFile_poster.getOriginalFilename().equals("")) {
				mFile_poster.transferTo(new File(saveDir, fileName_poster));
			}
			if(!mFile_thumb.getOriginalFilename().equals("")) {
				mFile_thumb.transferTo(new File(saveDir, fileName_thumb));
			}
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		return "redirect:/adminSelectEvent";
	}
	
	// 관리자 게시판 수정 폼
	@GetMapping("adminEventUpdate")
	public String adminEventUpdate(String event_idx, Model model, HttpSession session) {
		System.out.println("AdminController - adminEventUpdate()");
		
		String sId = (String)session.getAttribute("sId");
		String isAdmin = (String)session.getAttribute("isAdmin");
		
		if(sId == null || isAdmin.equals("N")) {
			model.addAttribute("msg", "잘못된 접근입니다!");
			return "fail_back";
		}
		
		List<EventCateVO> eventCategoryList = adminService.getEventCategory();
		
		
		EventVO event = adminService.getEvent(event_idx).get(0);
		
		System.out.println("eventCategoryList : " + eventCategoryList);
		System.out.println("event : " + event);
		
		model.addAttribute("eventCategoryList", eventCategoryList);
		
		model.addAttribute("event", event);
		
		return "mypage/admin/admin_update_event";
	}
	
	// 관리자 게시판 수정
	@PostMapping("adminEventUpdatePro")
	public String adminEventUpdatePro(EventVO event, HttpSession session, Model model) {
		System.out.println("AdminController - adminEventUpdatePro()");
		
		String uploadDir = "/resources/upload"; // 가상의 경로
		String saveDir = session.getServletContext().getRealPath(uploadDir); // 실제 업로드 경로
		String subDir = ""; // 서브디렉토리명을 저장할 변수 선언(날짜로 구분)
		
		try {
			LocalDate now = LocalDate.now();
			DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd");
			subDir = now.format(dtf);
			saveDir += "/" + subDir;
			Path path = Paths.get(saveDir);
			Files.createDirectories(path);
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		MultipartFile mFile_poster = event.getEvent_poster_multi();
		MultipartFile mFile_thumb = event.getEvent_thumbnail_multi();
		
		String uuid = UUID.randomUUID().toString();
		event.setEvent_poster("");
		String fileName_poster = uuid.substring(0, 8) + "_" + mFile_poster.getOriginalFilename();
		String fileName_thumb = uuid.substring(0, 8) + "_" + mFile_thumb.getOriginalFilename();
		
		if(!mFile_poster.getOriginalFilename().equals("")) {
			event.setEvent_poster(subDir + "/" + fileName_poster);
		}
		
		if(!mFile_thumb.getOriginalFilename().equals("")) {
			event.setEvent_poster(subDir + "/" + fileName_thumb);
		}
		
		// 수정전 기존의 파일경로 가지고 있어야됨.
		EventVO tmpEvent = adminService.getEvent(String.valueOf(event.getEvent_idx())).get(0);
		
		int updateCount = adminService.updateEvent(event);
		
		if (updateCount == 0) {
			model.addAttribute("msg", "수정 실패!");
			return "fail_back";
		}
		
		// 실제폴더에 저장.
		try {
			if(!mFile_poster.getOriginalFilename().equals("")) {
				mFile_poster.transferTo(new File(saveDir, fileName_poster));
			}
			
			if(!mFile_thumb.getOriginalFilename().equals("")) {
				mFile_thumb.transferTo(new File(saveDir, fileName_thumb));
			}
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		// 수정시 기존의 파일 삭제.
		String uploadPath = "resources/upload";
		try {
			String realPath = session.getServletContext().getRealPath(uploadPath);
			Path path = Paths.get(realPath + "/" + tmpEvent.getEvent_poster());
			Files.deleteIfExists(path);
			
			path = Paths.get(realPath + "/" + tmpEvent.getEvent_thumbnail());
			Files.deleteIfExists(path);
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		return "redirect:/adminSelectEvent";
	}
	
	// 관리자 게시판 삭제
	@GetMapping("adminEventDelete")
	public String adminEventDelete(String event_idx, HttpSession session, Model model) {
		System.out.println("AdminController - adminEventDelete()");
		
		String sId = (String)session.getAttribute("sId");
		String isAdmin = (String)session.getAttribute("isAdmin");
		
		if(sId == null || isAdmin.equals("N")) {
			model.addAttribute("msg", "잘못된 접근입니다!");
			return "fail_back";
		}
		
		// 삭제하기전에 파일경로를 먼저 받아와야됨.
		EventVO tmpEvent = adminService.getEvent(event_idx).get(0);
		
		int deleteCount = adminService.deleteEvent(event_idx);
		
		if (deleteCount == 0) {
			model.addAttribute("msg", "삭제 실패!");
			return "fail_back";
		}
		
		// 삭제시 파일 도 함께 삭제.
		String uploadPath = "resources/upload";
		try {
			String realPath = session.getServletContext().getRealPath(uploadPath);
			Path path = Paths.get(realPath + "/" + tmpEvent.getEvent_poster());
			Files.deleteIfExists(path);
			path = Paths.get(realPath + "/" + tmpEvent.getEvent_thumbnail());
			Files.deleteIfExists(path);
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		return "redirect:/adminSelectEvent";
	}
	
	
/*====================================================================
 *  게시판 카테고리
 * ===================================================================
 * */
	
	// 관리자 게시판 카테고리 관리 페이지 및 폼
	@GetMapping("adminEventCategoryInsert")
	public String adminEventCategoryInsert(Model model, HttpSession session) {
		System.out.println("AdminController - adminEventCategoryInsert()");
		
		String sId = (String)session.getAttribute("sId");
		String isAdmin = (String)session.getAttribute("isAdmin");
		
		if(sId == null || isAdmin.equals("N")) {
			model.addAttribute("msg", "잘못된 접근입니다!");
			return "fail_back";
		}
		
		List<EventCateVO> eventCategoryList = adminService.getEventCategory();
		
		model.addAttribute("eventCategoryList", eventCategoryList);
		
		
		return "mypage/admin/admin_insert_eventCategory";
	}
	
	// 관리자 게시판 카테고리 등록
	@PostMapping("adminEventCategoryInsertPro")
	public String adminEventCategoryInsertPro(String eventCate_subject, Model model) {
		System.out.println("AdminController - adminEventCategoryInsertPro()");
		
		List<EventCateVO> eventCategoryList = adminService.getEventCategory();
		
		for (EventCateVO eventCate : eventCategoryList) {
			if (eventCate_subject.equals(eventCate.getEventCate_subject())) {
				model.addAttribute("msg", "중복된 카테고리입니다!");
				return "fail_back";
			}
		}
		
		int insertCount = adminService.insertEventCategory(eventCate_subject);
		
		if (insertCount == 0) {
			model.addAttribute("msg", "등록 실패!");
			return "fail_back";
		}
		
		return "redirect:/adminEventCategoryInsert";
	}
	
	// 관리자 게시판 카테고리 삭제
	@GetMapping("adminEventCategoryDelete")
	public String adminEventCategoryDelete(String eventCate_subject, HttpSession session, Model model) {
		System.out.println("AdminController - adminCategoryDelete()");
		
		String sId = (String)session.getAttribute("sId");
		String isAdmin = (String)session.getAttribute("isAdmin");
		
		if(sId == null || isAdmin.equals("N")) {
			model.addAttribute("msg", "잘못된 접근입니다!");
			return "fail_back";
		}
		
		int deleteCount = adminService.deleteEventCategory(eventCate_subject);
		
		if (deleteCount == 0) {
			model.addAttribute("msg", "삭제 실패!");
			return "fail_back";
		}
		
		return "redirect:/adminEventCategoryInsert";
	}
	
	
}
