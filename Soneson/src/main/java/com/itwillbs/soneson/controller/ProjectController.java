package com.itwillbs.soneson.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.apache.commons.lang3.RandomStringUtils;
import org.json.JSONArray;
import org.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.itwillbs.soneson.service.RewardService;
import com.itwillbs.soneson.service.BankApiClient;
import com.itwillbs.soneson.service.ProjectService;
import com.itwillbs.soneson.vo.CreatorAccountVO;
import com.itwillbs.soneson.vo.ProjectVO;
import com.itwillbs.soneson.vo.ResponseTokenVO;
import com.itwillbs.soneson.vo.ResponseUserInfoVO;

@Controller
public class ProjectController {
	@Autowired
	private ProjectService service;
	@Autowired
	private RewardService itemService;
	@Autowired
	private BankApiClient bankApiClient;
	
	
	
	
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
	
	
	//이미 작성 중인 프로젝트가 있을 경우
	@PostMapping("projectUpdateForm")
	public String projectUpdateForm(@RequestParam Map<String, Object> map, HttpSession session, ProjectVO pro, Model model) {
		System.out.println(">>>>>>>>>projectUpdateForm<<<<<<<<<<<<");
		String sId = (String)session.getAttribute("sId");
		
		if(sId == null) {
			model.addAttribute("msg", "로그인 후 이용 가능 합니다.");
			model.addAttribute("targetURL", "login");
			return "forward";
		}
		
		System.out.println(map);
		pro = service.selectProject(map);
		List<Map<String, String>> itemList = itemService.selectItem(map);
		List<Map<String, String>> rewardList = itemService.selectReward(map);
//		Map<String, String> fintechInfo = new HashMap<String, String>();
		Map<String, String> fintechInfo = service.selectToken(sId);
		System.out.println("fintechInfo>>>>>>" + fintechInfo);
		System.out.println(">>>>>>>>>>>>>>>>>>>>리워드<<<<<<<<<<<<" + rewardList);
		
		System.out.println(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>pro"+ pro);
		//객체자체가 null인데 get으로 가져오려고 해서 404뜸
		if(!(fintechInfo == null) && fintechInfo.get("access_token") != null) {
			System.out.println("토큰있음!!!!!!!!!!!!!!!!!!");
			ResponseUserInfoVO userInfo = bankApiClient.requestUserInfo(fintechInfo);
			model.addAttribute("userInfo", userInfo);
			System.out.println(">>>>>><<<<<<" + userInfo);
		} 
		System.out.println("fintechInfo>>>>>>" + fintechInfo);
		model.addAttribute("fintechInfo", fintechInfo);
		model.addAttribute("pro", pro);
		model.addAttribute("itemList", itemList);
		model.addAttribute("rewardList", rewardList);
		
		return "project/default";
	}
	
	
	//작성페이지이동	
	@PostMapping("projectInsertForm")
	public String projectInsertForm(@RequestParam Map<String, String> map, HttpSession session, Model model) {
		
		String sId = (String)session.getAttribute("sId");
		
		if(sId == null) {
			model.addAttribute("msg", "로그인 후 이용 가능 합니다.");
			model.addAttribute("targetURL", "login");
			return "forward";
		}
		
		map.put("user_id", sId);
		int insertCount = service.insertStartProj(map);
		
		if(insertCount <= 0) {
			model.addAttribute("msg", "잠시 후 다시 시도해 주세요.");
			model.addAttribute("targetURL", "projectStartForm");
			return "forward";
		} 
		
		System.out.println(map); //{isNewInsert=Y, pro_categorie=동물, pro_title=건강한 지구, user_id=admin}
		return "redirect:/updateProjectForm";
		
	}
	
	//INSERT리다이렉트
	@GetMapping("updateProjectForm")
	public String updateProjectForm(HttpSession session, Model model, ProjectVO pro, Map<String, String> map) {
		System.out.println("updateProjectForm");
		String sId = (String)session.getAttribute("sId");
		map.put("user_id", sId);
		pro = service.selectNewProject(map);
		
		
		model.addAttribute("pro", pro);
		
		return "project/default";
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
		//업로드된 파일 가져오기
		MultipartFile p_thumb = pro.getPro_thumb_multi();
		MultipartFile p_content = pro.getPro_content_multi();
		MultipartFile p_budget = pro.getPro_budget_multi();
		MultipartFile p_sch = pro.getPro_sch_multi();
		MultipartFile p_team = pro.getPro_team_multi();
		MultipartFile p_reward = pro.getPro_reward_multi();
		MultipartFile p_profile = pro.getPro_profile_multi();
		
		String uuid = UUID.randomUUID().toString();
		pro.setPro_thumbsnail("");
		pro.setPro_content("");
		pro.setPro_budget("");
		pro.setPro_sch("");
		pro.setPro_team("");
		pro.setPro_reward("");
		pro.setPro_profile("");
		
		boolean isUploadProcess = false;
		
		String fileName_thumbsnail = "";
		String fileName_content = "";
		String fileName_budget = "";
		String fileName_sch = "";
		String fileName_team = "";
		String fileName_reward = "";
		String fileName_profile = "";
		
		if(pro.getPro_thumb_multi() != null && !p_thumb.getOriginalFilename().equals("")) {
			fileName_thumbsnail = uuid.substring(0,8) + "_" + p_thumb.getOriginalFilename();
			pro.setPro_thumbsnail(subDir + "/" + fileName_thumbsnail);
			isUploadProcess = true;
		}
		if(pro.getPro_content_multi() != null && !p_content.getOriginalFilename().equals("")) {
			fileName_content = uuid.substring(0,8) + "_" + p_content.getOriginalFilename();
			pro.setPro_content(subDir + "/" + fileName_content);
			isUploadProcess = true;
		}
		if(pro.getPro_budget_multi() != null && !p_budget.getOriginalFilename().equals("")) {
			fileName_budget = uuid.substring(0,8) + "_" + p_budget.getOriginalFilename();
			pro.setPro_budget(subDir + "/" + fileName_budget);
			isUploadProcess = true;
		}
		if(pro.getPro_sch_multi() != null && !p_sch.getOriginalFilename().equals("")) {
			fileName_sch = uuid.substring(0,8) + "_" + p_sch.getOriginalFilename();
			pro.setPro_sch(subDir + "/" + fileName_sch);
			isUploadProcess = true;
		}
		if(pro.getPro_team_multi() != null && !p_team.getOriginalFilename().equals("")) {
			fileName_team = uuid.substring(0,8) + "_" + p_team.getOriginalFilename();
			pro.setPro_team(subDir + "/" + fileName_team);
			isUploadProcess = true;
		}
		if(pro.getPro_reward_multi() != null && !p_reward.getOriginalFilename().equals("")) {
			fileName_reward = uuid.substring(0,8) + "_" + p_reward.getOriginalFilename();
			pro.setPro_reward(subDir + "/" + fileName_reward);
			isUploadProcess = true;
		}
		if(pro.getPro_profile_multi() != null && !p_profile.getOriginalFilename().equals("")) {
			fileName_profile = uuid.substring(0,8) + "_" + p_profile.getOriginalFilename();
			pro.setPro_profile(subDir + "/" + fileName_profile);
			isUploadProcess = true;
		}
		
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
					if(!fileName_content.equals("")) {
						p_content.transferTo(new File(saveDir,fileName_content));
					} 
					if(!fileName_budget.equals("")) {
						p_budget.transferTo(new File(saveDir,fileName_budget));
					} 
					if(!fileName_sch.equals("")) {
						p_sch.transferTo(new File(saveDir,fileName_sch));
					} 
					if(!fileName_team.equals("")) {
						p_team.transferTo(new File(saveDir,fileName_team));
					} 
					if(!fileName_reward.equals("")) {
						p_reward.transferTo(new File(saveDir,fileName_reward));
					} 
					if(!fileName_profile.equals("")) {
						p_profile.transferTo(new File(saveDir,fileName_profile));
					} 
					
					
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
					
					path = Paths.get(realPath + "/" + prevPro.getPro_content());
					Files.deleteIfExists(path);
					
					path = Paths.get(realPath + "/" + prevPro.getPro_budget());
					Files.deleteIfExists(path);
					
				} catch (IOException e) {
					e.printStackTrace();
				}
				
				
			}
			return "true";
		} else { // DB 작업 처리 실패
			return "false";
		}
//		*/
		
//		return "project/default";
	}
	
	
	//아이템저장
	@ResponseBody
	@PostMapping("insertItem")
	public String insertItem(@RequestParam Map<String, Object>map) {
		System.out.println("아이템 저장하러 가는중~~~~~");
		System.out.println(map);
		
		int insertCount = itemService.insertItem(map);
		if(insertCount > 0) {
			Map<String, String> item = itemService.selectNewItem(map);
//		List<Map<String, String>> itemList = itemService.selectItem(map);
//			System.out.println(">>>>>>>>>>>>>>>아이템 가져오기~~~ :"+itemList);
//			JSONArray jsonArray = new JSONArray(itemList);
//			System.out.println("제이슨에 담겼나?" + jsonArray.toString());
//			return jsonArray.toString(); 
			
			item.replace("item_option",item.get("item_option").replace("/"," "));
			JSONObject jsonObject = new JSONObject(item);
			return jsonObject.toString();
		} else {
			
			return "저장 실패하였습니다.";
		}
		
	}
	
	//아이템삭제
	@ResponseBody
	@PostMapping("deleteItem")
	public String deleteItem(@RequestParam Map<String, String> map) {
		
		
		
		int deleteCount = itemService.deleteItem(map);
		if(deleteCount > 0) {
			return "true";
		} else {
			return "false";
		}
	}
	
	//리워드저장
	@ResponseBody
	@PostMapping("insertReward")
	public String insertReward(@RequestParam Map<String, String> map) {
		System.out.println(map);
		map.put("reward_code", null);
		int insertCount = itemService.insertReward(map);
//		int reward_code = Integer.parseInt(map.get("reward_code"));
		System.out.println(insertCount);
		System.out.println(map);
		
		
		if(insertCount > 0) {
			JSONObject jsonObject = new JSONObject(map);
			return jsonObject.toString();
		} else {
			return "false";
		}
		
	}
	
	//리워드삭제
	@ResponseBody
	@PostMapping("deleteReward")
	public String deleteReward(int reward_code) {
		System.out.println("삭제할 reward_code : "+reward_code);
		int deleteCount = itemService.deleteReward(reward_code);
		if(deleteCount > 0) {
			return "true";
		} else {
			return "false";
		}
		
//		return "";
	}
	
	
	//계좌정보 가져오기
	@ResponseBody
	@GetMapping("selectAccountInfo")
	public String selectAccountInfo(@RequestParam Map<String, String> map, Model model, HttpSession session) {
		
		System.out.println("계좌번호가져오기~~~~~~~~~~~~: " + map);
		map.put("access_token", (String)session.getAttribute("access_token")) ;
		map.put("user_seq_no", (String)session.getAttribute("user_seq_no")) ;
//		session.getAttribute("user_seq_no");
		
		System.out.println("계좌번호가져오기2222222222222222222222222~~~~~~~~~~~~: " + map);
		ResponseUserInfoVO userInfo = bankApiClient.requestUserInfo(map);
		System.out.println("아유>>>>>>>>>>>>>>>>>>>>>>>>" + userInfo);
		
		JSONObject jsonObject = new JSONObject(userInfo);
		return jsonObject.toString();
	}
	
	
	//프로젝트 최종등록
	@PostMapping("submitProject")
	public String submitProject(ProjectVO pro, Model model, HttpSession session) {
		String sId = (String)session.getAttribute("sId");
		
		if(sId == null) {
			model.addAttribute("msg", "로그인 후 이용 가능 합니다.");
			model.addAttribute("targetURL", "login");
			return "forward";
		}
		
		System.out.println("최종등록 하러 가보자고: " + pro);
		
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
		//업로드된 파일 가져오기
		MultipartFile p_thumb = pro.getPro_thumb_multi();
		MultipartFile p_content = pro.getPro_content_multi();
		MultipartFile p_budget = pro.getPro_budget_multi();
		MultipartFile p_sch = pro.getPro_sch_multi();
		MultipartFile p_team = pro.getPro_team_multi();
		MultipartFile p_reward = pro.getPro_reward_multi();
		MultipartFile p_profile = pro.getPro_profile_multi();
		
		String uuid = UUID.randomUUID().toString();
		pro.setPro_thumbsnail("");
		pro.setPro_content("");
		pro.setPro_budget("");
		pro.setPro_sch("");
		pro.setPro_team("");
		pro.setPro_reward("");
		pro.setPro_profile("");
		
		boolean isUploadProcess = false;
		
		String fileName_thumbsnail = "";
		String fileName_content = "";
		String fileName_budget = "";
		String fileName_sch = "";
		String fileName_team = "";
		String fileName_reward = "";
		String fileName_profile = "";
		
		if(pro.getPro_thumb_multi() != null && !p_thumb.getOriginalFilename().equals("")) {
			fileName_thumbsnail = uuid.substring(0,8) + "_" + p_thumb.getOriginalFilename();
			pro.setPro_thumbsnail(subDir + "/" + fileName_thumbsnail);
			isUploadProcess = true;
		}
		if(pro.getPro_content_multi() != null && !p_content.getOriginalFilename().equals("")) {
			fileName_content = uuid.substring(0,8) + "_" + p_content.getOriginalFilename();
			pro.setPro_content(subDir + "/" + fileName_content);
			isUploadProcess = true;
		}
		if(pro.getPro_budget_multi() != null && !p_budget.getOriginalFilename().equals("")) {
			fileName_budget = uuid.substring(0,8) + "_" + p_budget.getOriginalFilename();
			pro.setPro_budget(subDir + "/" + fileName_budget);
			isUploadProcess = true;
		}
		if(pro.getPro_sch_multi() != null && !p_sch.getOriginalFilename().equals("")) {
			fileName_sch = uuid.substring(0,8) + "_" + p_sch.getOriginalFilename();
			pro.setPro_sch(subDir + "/" + fileName_sch);
			isUploadProcess = true;
		}
		if(pro.getPro_team_multi() != null && !p_team.getOriginalFilename().equals("")) {
			fileName_team = uuid.substring(0,8) + "_" + p_team.getOriginalFilename();
			pro.setPro_team(subDir + "/" + fileName_team);
			isUploadProcess = true;
		}
		if(pro.getPro_reward_multi() != null && !p_reward.getOriginalFilename().equals("")) {
			fileName_reward = uuid.substring(0,8) + "_" + p_reward.getOriginalFilename();
			pro.setPro_reward(subDir + "/" + fileName_reward);
			isUploadProcess = true;
		}
		if(pro.getPro_profile_multi() != null && !p_profile.getOriginalFilename().equals("")) {
			fileName_profile = uuid.substring(0,8) + "_" + p_profile.getOriginalFilename();
			pro.setPro_profile(subDir + "/" + fileName_profile);
			isUploadProcess = true;
		}
		int updateCount = service.updateProject(pro);	//최종저장
		if(updateCount > 0) {
			
			//project테이블에 저장
			int insertCount = service.insertProject(pro.getPro_code());
			if(insertCount > 0) {
				//창작자 핀테크번호 저장하기
				int insertAccount = service.insertCreatorAccount(pro);
				
				//임시테이블에서 삭제하기
				int deleteCount = service.deleteProject(pro.getPro_code());
				
				
				model.addAttribute("msg", "프로젝트가 등록되었습니다. 심사여부는 약 7일 정도 소요됩니다.");
				model.addAttribute("targetURL", "userProjectsCreated");
				return "forward";
			} else {
				model.addAttribute("msg", "잠시 후 다시 시도해 주세요.");
				return "fail_back";
			}
			
		} else {
			model.addAttribute("msg", "잠시 후 다시 시도해 주세요.");
			return "fail_back";
		}
		
//		return "";
	}
	
	
}
