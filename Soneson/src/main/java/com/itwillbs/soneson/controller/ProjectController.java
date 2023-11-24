package com.itwillbs.soneson.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.itwillbs.soneson.service.ProjectService;
import com.itwillbs.soneson.vo.ProjectVO;

@Controller
public class ProjectController {
	@Autowired
	private ProjectService service;
	
	
	
	//프로젝트 등록버튼
	@GetMapping("projectStartForm")
	public String projectStartForm(HttpSession session, Model model, ProjectVO pro) {
		String sId = (String)session.getAttribute("sId");
		
		if(sId == null) {
			model.addAttribute("msg", "로그인 후 이용 가능 합니다.");
			model.addAttribute("targetURL", "login");
			return "forward";
		}
		pro = service.selectIdProj(sId);
		System.out.println(pro);
		model.addAttribute("pro", pro);
		
		return "project/start";
	}
	
	//동의페이지이동
	@GetMapping("projectAgreeForm")
	public String projectAgreeForm() {
		return "project/startAgree";
	}
	
	//작성페이지이동	
	@GetMapping("projectInsertForm")
	public String projectInsertForm(@RequestParam Map<String, Object> map, HttpSession session, Model model) {
		
		String sId = (String)session.getAttribute("sId");
		
		if(sId == null) {
			model.addAttribute("msg", "로그인 후 이용 가능 합니다.");
			model.addAttribute("targetURL", "login");
			return "forward";
		}
		map.put("user_id", sId);
		
		System.out.println(map.get("pro_categorie"));
		System.out.println(map.get("pro_summary"));
		System.out.println(map.get("user_id"));
//		int insertCount = service.insertStartProj(map);
		
		
		return "project/default";
	}
	
	//펀딩계획
	@GetMapping("projectFunding")
	public String projectFunding() {
		return "project/funding";
	}
	
	//리워드구성
	@GetMapping("projectReward")
	public String projectReward() {
		return "project/reward";
	}
	
	//프로젝트계획
	@GetMapping("projectStory")
	public String projectStory() {
		return "project/story";
	}
	
	//창작자정보
	@GetMapping("projectCreateor")
	public String projectCreateor() {
		return "project/creator";
	}
	
}
