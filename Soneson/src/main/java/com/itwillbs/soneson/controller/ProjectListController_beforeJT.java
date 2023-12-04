//package com.itwillbs.soneson.controller;
//
//import java.util.List;
//import java.util.Map;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.RequestParam;
//
//import com.itwillbs.soneson.service.ProjectListService;
//import com.itwillbs.soneson.vo.ProjectVO;
//
//@Controller
//public class ProjectListController_beforeJT {
//	
//	@Autowired
//	private ProjectListService service;
//	
//	
//	@GetMapping("popular")
//	public String popular(Model model) {
//		System.out.println("popularController - popular()");
//		
//		String listType = "popular";
//		
//		List<Map<String, Object>> projectList = service.getTapProjectList(listType);
//		
//		int projectCount = projectList.size();
//		System.out.println("프로젝트 갯수 : " + projectCount);
//		
//		model.addAttribute("projectList", projectList);
//		model.addAttribute("projectCount", projectCount);
//		
//		return "list/popular";
//	}
//	
//	@GetMapping("new")
//	public String fresh(Model model) {
//		System.out.println("freshController - new()");
//		
//		String listType = "new";
//		
//		List<Map<String, Object>> projectList = service.getTapProjectList(listType);
//		
//		int projectCount = projectList.size();
//		System.out.println("프로젝트 갯수 : " + projectCount);
//		
//		model.addAttribute("projectList", projectList);
//		model.addAttribute("projectCount", projectCount);
//		
//		return "list/popular";
//	}
//	
//	@GetMapping("closing")
//	public String closing(Model model) {
//		System.out.println("closingController - closing()");
//		
//		String listType = "closing";
//		
//		List<Map<String, Object>> projectList = service.getTapProjectList(listType);
//		
//		int projectCount = projectList.size();
//		System.out.println("프로젝트 갯수 : " + projectCount);
//		
//		model.addAttribute("projectList", projectList);
//		model.addAttribute("projectCount", projectCount);
//		
//		return "list/popular";
//	}
//	@GetMapping("upcoming")
//	public String upcoming(Model model) {
//		System.out.println("upcomingController - upcoming()");
//		
//		String listType = "upcoming";
//		
//		List<Map<String, Object>> projectList = service.getTapProjectList(listType);
//		
//		int projectCount = projectList.size();
//		System.out.println("프로젝트 갯수 : " + projectCount);
//		
//		model.addAttribute("projectList", projectList);
//		model.addAttribute("projectCount", projectCount);
//		
//		return "list/popular";
//	}
//	
//	
//	@GetMapping("projectDetail")
//	public String projectDetail(Model model, @RequestParam int project_code) {
//		System.out.println("projectDetailController - projectDetail()");
//		
//		Map<String, Object> project = service.selectProject(project_code);
//		model.addAttribute("project", project);
//		
//		return "list/projectDetail";	
//	}
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
