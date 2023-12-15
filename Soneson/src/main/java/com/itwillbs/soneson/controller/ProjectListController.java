package com.itwillbs.soneson.controller;

import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;

import com.itwillbs.soneson.service.ProjectListService;
import com.itwillbs.soneson.vo.ProjectVO;

@Controller
public class ProjectListController {

	@Autowired
	private ProjectListService service;
	
//	@GetMapping("/{listType}")
//	public String getListType(Model model, String listType) {
	public String getListType(Model model, @PathVariable String listType) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("listType", listType); // 인기, 신규, 마감임박...
		
//		List<Map<String, Object>> projectList = service.getTabProjectList(listType);
		List<Map<String, Object>> projectList = service.getTabProjectList(map);
		
		int projectCount = projectList.size();
		System.out.println("프로젝트 갯수 : " + projectCount);
		
		model.addAttribute("projectList", projectList);
		model.addAttribute("projectCount", projectCount);
//		model.addAttribute("listType", listType);
		
		return "list/popular";
	}
	
//	@GetMapping("/list/{listType}")
//	@GetMapping("{listType}")
	@GetMapping("/list/{listType}")
	public String list(Model model, @PathVariable String listType) {
		System.out.println("리스트 타입: " + listType);
	    return getListType(model, listType);
	}
	
//	@GetMapping("popular")
//	public String popular(Model model) {
//		return getListType(model, "popular");
//	}
//	
//	@GetMapping("new")
//	public String fresh(Model model) {
//		return getListType(model, "new");
//	}
//	
//	@GetMapping("closing")
//	public String closing(Model model) {
//		return getListType(model, "closing");
//	}
//	
//	@GetMapping("upcoming")
//	public String upcoming(Model model) {
//		return getListType(model, "upcoming");
//	}
	
	@GetMapping("projectDetail")
	public String projectDetail(Model model, @RequestParam int project_code) {
		System.out.println("projectDetailController - projectDetail()");
	
		// 정책 <br> 넣기
		Map<String, Object> project = service.selectProject(project_code);
		System.out.println("정책: " + project.get("policy"));
		
		if(project.get("policy") != null) {
			String policy = (String) project.get("policy");
			policy = policy.replaceAll("\r\n", "<br>");
			project.put("policy", policy);
		}
		
		model.addAttribute("project", project);
		
		List<Map<String, Object>> rewardList = service.getRewardList(project_code);
		
		if(rewardList != null) {
			for (Map<String, Object> reward : rewardList) {
				String currentValue = (String) reward.get("reward_item_name");
				System.out.println("원래 아이템:" + currentValue);
				String[] rewards = currentValue.split("\\|");
				System.out.println("지금 배열: " + Arrays.toString(rewards));
				reward.put("reward_item_name", rewards);
//				model.addAttribute("reward", reward);
			}
		}
		
		model.addAttribute("rewardList", rewardList);
		model.addAttribute("project_code", project_code);
		
//		List<Map<String, Object>> itemList = service.getItemList(project_code);
//		model.addAttribute("itemList", itemList);
		
		return "list/projectDetail";	
	}
	
	// ============ 아래는 엄성윤 테스트 =======================
	
	@GetMapping("dayTest")
	public String dayTest() {
		
		return "test/dayTest";
	}
	

}
