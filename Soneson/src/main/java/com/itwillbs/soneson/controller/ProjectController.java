package com.itwillbs.soneson.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ProjectController {
	//프로젝트 등록버튼
	@GetMapping("projectStartForm")
	public String projectStartForm() {
		
		return "project/start";
	}
	
	//동의페이지이동
	@GetMapping("projectAgreeForm")
	public String projectAgreeForm() {
		return "project/startAgree";
	}
	
	//작성페이지이동	
	@GetMapping("projectInsertForm")
	public String projectInsertForm() {
		return "project/default";
	}
	
	//펀딩계획
	@GetMapping("projectFunding")
	public String projectFunding() {
		return "project/funding";
	}
	
}
