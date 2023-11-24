package com.itwillbs.soneson.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
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
	@PostMapping("projectAgreeForm")
	public String projectAgreeForm() {
		return "project/startAgree";
	}
	
	//작성페이지이동	
	@PostMapping("projectInsertForm")
	public String projectInsertForm(@RequestParam Map<String, Object> map, HttpSession session, Model model) {
		
		String sId = (String)session.getAttribute("sId");
		
		if(sId == null) {
			model.addAttribute("msg", "로그인 후 이용 가능 합니다.");
			model.addAttribute("targetURL", "login");
			return "forward";
		}
		map.put("user_id", sId);
		// ======pro_summary not null 걸려있어서 오류뜸 수정해야함 그때까지 보류=======
//		int insertCount = service.insertStartProj(map);
//		if(insertCount < 0) {
//			model.addAttribute("msg", "잠시 후 다시 시도해 주세요.");
//			model.addAttribute("targetURL", "projectStartForm");
//			return "forward";
//		}
		
		
		return "project/default";
	}
	
	
	//리워드구성
	@GetMapping("projectReward")
	public String projectReward() {
		return "project/reward";
	}

	
}
