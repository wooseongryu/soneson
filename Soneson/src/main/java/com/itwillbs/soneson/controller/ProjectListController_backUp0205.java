//package com.itwillbs.soneson.controller;
//
//import java.util.Arrays;
//import java.util.HashMap;
//import java.util.List;
//import java.util.Map;
//
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpSession;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.PathVariable;
//import org.springframework.web.bind.annotation.PostMapping;
//import org.springframework.web.bind.annotation.RequestParam;
//
//import com.itwillbs.soneson.service.ProjectListService;
//import com.itwillbs.soneson.service.UserService;
//import com.itwillbs.soneson.vo.ProjectVO;
//
//@Controller
//public class ProjectListController_backUp0205 {
//
//	@Autowired
//	private ProjectListService service;
//	
//	@Autowired
//	private UserService userService;
//	
////	@GetMapping("/{listType}")
//	public String getListType(Model model, String listType, HttpServletRequest request) {
////	public String getListType(Model model, @PathVariable String listType) {
//		Map<String, String> map = new HashMap<String, String>();
//		map.put("listType", listType); // 인기, 신규, 마감임박...
//		
////		List<Map<String, Object>> projectList = service.getTabProjectList(listType);
//		List<Map<String, Object>> projectList = service.getTabProjectList(map);
//		
//		int projectCount = projectList.size();
//		System.out.println("프로젝트 갯수 : " + projectCount);
//		
//		model.addAttribute("projectList", projectList);
//		model.addAttribute("projectCount", projectCount);
//		System.out.println("서블릿 경로 : " + request.getServletPath());
//		model.addAttribute("servletPath", request.getServletPath());
//		
//		
////		model.addAttribute("listType", listType);
//		
//		return "list/popular";
//	}
//	
////	@GetMapping("/list/{listType}")
////	@GetMapping("{listType}")
////	@GetMapping("/list/{listType}")
////	public String list(Model model, @PathVariable String listType) {
////		System.out.println("리스트 타입: " + listType);
////	    return getListType(model, listType);
////	}
//	
//	@GetMapping("popular")
//	public String popular(Model model, HttpServletRequest request) {
//		return getListType(model, "popular", request);
//	}
//	
//	@GetMapping("new")
//	public String fresh(Model model, HttpServletRequest request) {
//		return getListType(model, "new", request);
//	}
//	
//	@GetMapping("closing")
//	public String closing(Model model, HttpServletRequest request) {
//		return getListType(model, "closing", request);
//	}
//	
//	@GetMapping("upcoming")
//	public String upcoming(Model model, HttpServletRequest request) {
//		Map<String, String> map = new HashMap<String, String>();
//		
//		map.put("listType", "upcoming");
//		List<Map<String, Object>> projectList = service.getTabProjectList(map);
//		
//		int projectCount = projectList.size();
//		System.out.println("프로젝트 갯수 : " + projectCount);
//		
//		model.addAttribute("projectList", projectList);
//		model.addAttribute("projectCount", projectCount);
//		System.out.println("서블릿 경로 : " + request.getServletPath());
//		model.addAttribute("servletPath", request.getServletPath());
//		
//		System.out.println("업커밍");
//		
//		return "list/upcoming";
//	}
//	
////	@GetMapping("upcoming")
////	public String upcoming(Model model, HttpServletRequest request) {
////		return getListType(model, "upcoming", request);
////	}
//	
////	미친듯한 하드코딩 시작
//	
//	@GetMapping("all")
//	public String all(Model model, HttpServletRequest request) {
//		return getListType(model, "all", request);
//	}
//	
//	@GetMapping("youth")
//	public String youth(Model model, HttpServletRequest request) {
//		return getListType(model, "youth", request);
//	}
//	
//	@GetMapping("animal")
//	public String animal(Model model, HttpServletRequest request) {
//		return getListType(model, "animal", request);
//	}
//	
//	@GetMapping("nature")
//	public String nature(Model model, HttpServletRequest request) {
//		return getListType(model, "nature", request);
//	}
//	
//	@GetMapping("disabled")
//	public String disabled(Model model, HttpServletRequest request) {
//		return getListType(model, "disabled", request);
//	}
//	
//	@GetMapping("woman")
//	public String woman(Model model, HttpServletRequest request) {
//		return getListType(model, "woman", request);
//	}
//	
//	@GetMapping("eldery")
//	public String eldery(Model model, HttpServletRequest request) {
//		return getListType(model, "eldery", request);
//	}
//	
//	@GetMapping("etc")
//	public String etc(Model model, HttpServletRequest request) {
//		return getListType(model, "etc", request);
//	}
//	
//	
//// ========================
//	
//	@GetMapping("projectDetail")
//	public String projectDetail(Model model, @RequestParam int project_code,
//			// 1217 파라미터 추가
//			HttpSession session,
//			Map<String, String> map
//			) {
//		System.out.println("projectDetailController - projectDetail()");
//	
//		// 정책 <br> 넣기
//		Map<String, Object> project = service.selectProject(project_code);
//		System.out.println("정책: " + project.get("policy"));
//		
//		if(project.get("policy") != null) {
//			String policy = (String) project.get("policy");
//			policy = policy.replaceAll("\r\n", "<br>");
//			project.put("policy", policy);
//		}
//		
//		model.addAttribute("project", project);
//		model.addAttribute("startedDay", project.get("startedDay"));
//		
//		List<Map<String, Object>> rewardList = service.getRewardList(project_code);
//		
//		if(rewardList != null) {
//			for (Map<String, Object> reward : rewardList) {
//				String currentValue = (String) reward.get("reward_item_name");
//				System.out.println("원래 아이템:" + currentValue);
//				String[] rewards = currentValue.split("\\|");
//				System.out.println("지금 배열: " + Arrays.toString(rewards));
//				reward.put("reward_item_name", rewards);
////				model.addAttribute("reward", reward);
//			}
//		}
//		
//		model.addAttribute("rewardList", rewardList);
//		model.addAttribute("project_code", project_code);
//		
////		List<Map<String, Object>> itemList = service.getItemList(project_code);
////		model.addAttribute("itemList", itemList);
//		
//		// ====== 팔로우
////		String sId = (String)session.getAttribute("sId");
////		
////		map.put("sId", sId);
////		map.put("id", sId);
////		
////		map = userService.selectUserMainInfo(map);
////		model.addAttribute("user", map);
//		
//		return "list/projectDetail";	
//	}
//	
//	// ============ 검색 기능 ==================================
//	
//	@PostMapping("searchList")
//	public String searchList(
//			@RequestParam(defaultValue = "") String searchKeyword, 
//			Model model) {
//		
//		Map<String, String> map = new HashMap<String, String>();
//		
//		map.put("searchKeyword", searchKeyword);
//		
//		List<Map<String, Object>> projectList = service.getSearchList(map);
//		
//		int projectOpenCount = projectList.size();
//		
//		model.addAttribute("projectList", projectList);
//		
//		// 종료된 펀딩 추가
//		
//		List<Map<String, Object>> projectClosedList = service.getSearchClosedList(map);
//		int projectClosedCount = projectClosedList.size();
//		
//		int projectCount = projectOpenCount + projectClosedCount;
//		
//		model.addAttribute("projectClosedList", projectClosedList);
//		
//		model.addAttribute("projectCount", projectCount);
//		// ================
//		
//		
//		return "list/searchList";
//	}
//	
//	
//	
//	// 팔로우
//	@GetMapping("detailFollow")
//	public String follow(String follow_id, HttpSession session, Model model, Map<String, String> map, @RequestParam int project_code) {
////		public String follow(String follow_id, HttpSession session, Model model, Map<String, String> map) {
//		System.out.println("UserController - follow()");
//		
//		String sId = (String)session.getAttribute("sId");
//		if (sId == null) {
//			model.addAttribute("msg", "로그인 후 이용 가능합니다.");
//			model.addAttribute("targetURL", "login");
//			return "forward";
//		}
//		
//		map.put("sId", sId);
//		map.put("follow_id", follow_id);
//		
//		int insertCount = userService.insertFollow(map);
//		
//		if (insertCount == 0) {
//			model.addAttribute("msg", "팔로우 실패!");
//			return "fail_back";
//		}
//		
//		return "projectDetail";
//	}
//	
//	
//	@GetMapping("detailDeleteFollow")
//	public String deleteFollow(String follow_id, HttpSession session, Model model, Map<String, String> map) {
//		System.out.println("UserController - deleteFollow()");
//		
//		String sId = (String)session.getAttribute("sId");
//		if (sId == null) {
//			model.addAttribute("msg", "로그인 후 이용 가능합니다.");
//			return "fail_back";
//		}
//		
//		map.put("sId", sId);
//		map.put("follow_id", follow_id);
//		
//		int deleteCount = userService.deleteFollow(map);
//		
//		if (deleteCount == 0) {
//			model.addAttribute("msg", "팔로우 해제 실패!");
//			return "fail_back";
//		}
//		
//		return "";
//	}
//	
//	
//	
//	// ============ 아래는 엄성윤 테스트 =======================
//	
//	@GetMapping("dayTest")
//	public String dayTest() {
//		
//		return "test/dayTest";
//	}
//	
//
//}