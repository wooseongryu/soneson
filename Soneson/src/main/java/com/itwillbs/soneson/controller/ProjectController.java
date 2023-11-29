package com.itwillbs.soneson.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

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
		System.out.println(sId + "==========");
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
	
	
	//이미 작성 중인 프로젝트가 있을 경우
	@PostMapping("projectUpdateForm")
	public String projectUpdateForm(@RequestParam Map<String, String> map, HttpSession session, ProjectVO pro, Model model) {
		String sId = (String)session.getAttribute("sId");
		
		if(sId == null) {
			model.addAttribute("msg", "로그인 후 이용 가능 합니다.");
			model.addAttribute("targetURL", "login");
			return "forward";
		}
		pro = service.selectProject(map);
		
//		if(!pro.getPro_thumbsnail().equals("")) { 
//			pro.setPro_thumbsnail(pro.getPro_thumbsnail().substring(20));
//		}
		
		
		
		
		model.addAttribute("pro", pro);
		
		return "project/default";
	}
	
	
	//작성페이지이동	
	@PostMapping("projectInsertForm")
	public String projectInsertForm(@RequestParam Map<String, Object> map, HttpSession session, Model model
									) {
		
		String sId = (String)session.getAttribute("sId");
		
		if(sId == null) {
			model.addAttribute("msg", "로그인 후 이용 가능 합니다.");
			model.addAttribute("targetURL", "login");
			return "forward";
		}
		map.put("user_id", sId);
		// ======pro_summary not null 걸려있어서 오류뜸 수정해야함 그때까지 보류=======
		int insertCount = service.insertStartProj(map);
		if(insertCount < 0) {
			model.addAttribute("msg", "잠시 후 다시 시도해 주세요.");
			model.addAttribute("targetURL", "projectStartForm");
			return "forward";
		}
		
		model.addAttribute("pro", map);
//		return "project/default";
		return "redirect:/projectUpdateForm";
	}
	
	@PostMapping("submitProject")
	public String testProject(String test, MultipartFile pro_thumbsnail) {
//		System.out.println("ProjectVO : " + pro);
//		System.out.println("map : " + map);
		System.out.println("test : " + test + ", pro_thumbsnail : " + pro_thumbsnail.getOriginalFilename());
		
		return "";
	}
	
	//작성 중 저장하기 버튼
	@ResponseBody
	@PostMapping("updateProject")
	public String updateProject(HttpSession session, Model model, ProjectVO pro) {
//	public String updateProject(HttpSession session, Model model, String pro_title, String pro_categorie, MultipartFile pro_thumbsnail) {
		System.out.println("controller 제발 넘어와주라");
		String sId = (String)session.getAttribute("sId");
		
		if(sId == null) {
			model.addAttribute("msg", "로그인 후 이용 가능 합니다.");
			model.addAttribute("targetURL", "login");
			return "forward";
		}	
		System.out.println("데이터 넘어왔니~~~~~~?" + pro);
//		System.out.println("데이터 넘어왔니~~~~~~?" + pro_title + ", " + pro_categorie + ", " +pro_thumbsnail.getOriginalFilename());
		
//		/*
		//파일 수정
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
		MultipartFile p_thumb = pro.getPro_thumb_multi();
//		MultipartFile p_content = pro.getPro_content_multi();
//		MultipartFile p_budget = pro.getPro_budget_multi();
//		MultipartFile p_sch = pro.getPro_sch_multi();
//		MultipartFile p_team = pro.getPro_team_multi();
//		MultipartFile p_reward = pro.getPro_reward_multi();
//		MultipartFile p_profile = pro.getPro_profile_multi();
		
		String uuid = UUID.randomUUID().toString();
		pro.setPro_thumbsnail("");
//		pro.setPro_content("");
//		pro.setPro_budget("");
//		pro.setPro_sch("");
//		pro.setPro_team("");
//		pro.setPro_reward("");
//		pro.setPro_profile("");
		
		boolean isUploadProcess = false;
		
		String fileName_thumbsnail = "";
//		String fileName_content = "";
//		String fileName_budget = "";
//		String fileName_sch = "";
//		String fileName_team = "";
//		String fileName_reward = "";
//		String fileName_profile = "";
		
		if(!p_thumb.getOriginalFilename().equals("")) {
			fileName_thumbsnail = uuid.substring(0,8) + "_" + p_thumb.getOriginalFilename();
			pro.setPro_thumbsnail(subDir + "/" + fileName_thumbsnail);
			isUploadProcess = true;
		}
//		if(!p_content.getOriginalFilename().equals("")) {
//			fileName_content = uuid.substring(0,8) + "_" + p_content.getOriginalFilename();
//			pro.setPro_content(subDir + "/" + fileName_content);
//			isUploadProcess = true;
//		}
//		if(!p_budget.getOriginalFilename().equals("")) {
//			fileName_budget = uuid.substring(0,8) + "_" + p_budget.getOriginalFilename();
//			pro.setPro_budget(subDir + "/" + fileName_budget);
//			isUploadProcess = true;
//		}
//		if(!p_sch.getOriginalFilename().equals("")) {
//			fileName_sch = uuid.substring(0,8) + "_" + p_sch.getOriginalFilename();
//			pro.setPro_sch(subDir + "/" + fileName_profile);
//			isUploadProcess = true;
//		}
//		if(!p_team.getOriginalFilename().equals("")) {
//			fileName_team = uuid.substring(0,8) + "_" + p_team.getOriginalFilename();
//			pro.setPro_team(subDir + "/" + fileName_team);
//			isUploadProcess = true;
//		}
//		if(!p_reward.getOriginalFilename().equals("")) {
//			fileName_reward = uuid.substring(0,8) + "_" + p_reward.getOriginalFilename();
//			pro.setPro_reward(subDir + "/" + fileName_reward);
//			isUploadProcess = true;
//		}
//		if(!p_profile.getOriginalFilename().equals("")) {
//			fileName_profile = uuid.substring(0,8) + "_" + p_profile.getOriginalFilename();
//			pro.setPro_profile(subDir + "/" + fileName_profile);
//			isUploadProcess = true;
//		}
		
		//수정 전 기존파일저장
		ProjectVO prevPro = service.selectFileName(pro.getPro_code());
//		String[] fileNames = {prevPro.getPro_thumbsnail(), prevPro.getPro_content(), prevPro.getPro_budget()
//							, prevPro.getPro_sch(), prevPro.getPro_team(), prevPro.getPro_reward(), prevPro.getPro_profile()};
		
		int updateCount = service.updateProject(pro);
		
		if(updateCount > 0) {
			// 업로드 처리 유무 판별(생략 후 파일 이동 처리만 수행해도 됨)
			if(isUploadProcess) {
				try {
					// 파일명이 존재하는 파일만 이동 처리 수행
					if(!fileName_thumbsnail.equals("")) {
						p_thumb.transferTo(new File(saveDir,fileName_thumbsnail));
					} 
//					if(!fileName_content.equals("")) {
//						p_content.transferTo(new File(saveDir,fileName_content));
//					} 
//					if(!fileName_budget.equals("")) {
//						p_budget.transferTo(new File(saveDir,fileName_budget));
//					} 
//					if(!fileName_sch.equals("")) {
//						p_sch.transferTo(new File(saveDir,fileName_sch));
//					} 
//					if(!fileName_team.equals("")) {
//						p_team.transferTo(new File(saveDir,fileName_team));
//					} 
//					if(!fileName_reward.equals("")) {
//						p_reward.transferTo(new File(saveDir,fileName_reward));
//					} 
//					if(!fileName_profile.equals("")) {
//						p_profile.transferTo(new File(saveDir,fileName_profile));
//					} 
					
					
					// 중복 코드 제거를 위한 배열 + 반복문 활용 > 기존파일 삭제
//					for(String fileName : fileNames) {
//						if(!fileName.equals("")) {
//							Path path = Paths.get(saveDir + "/" + fileName);
//							Files.deleteIfExists(path);
//						}
//					}
					
					
				} catch (IllegalStateException e) {
					e.printStackTrace();
				} catch (IOException e) {
					e.printStackTrace();
				}
				
				String uploadPath = "resources/upload";
				try {
					String realPath = session.getServletContext().getRealPath(uploadPath);
					Path path = Paths.get(realPath + "/" + prevPro.getPro_thumbsnail());
					Files.deleteIfExists(path);
				} catch (IOException e) {
					e.printStackTrace();
				}
				
				
			}
			return "됐나";
		} else { // DB 작업 처리 실패
			return "안됐나";
		}
//		*/
		
//		return "project/default";
	}
	
	
	
	//리워드구성
	@GetMapping("projectReward")
	public String projectReward() {
		return "project/reward";
	}

	
}
