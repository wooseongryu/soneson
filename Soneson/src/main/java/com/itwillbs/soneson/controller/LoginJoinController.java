package com.itwillbs.soneson.controller;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang3.RandomStringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.itwillbs.soneson.service.SendMailService;
import com.itwillbs.soneson.service.UserService;
import com.itwillbs.soneson.vo.AuthInfoVO;
import com.itwillbs.soneson.vo.UserVO;


@Controller
public class LoginJoinController {
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private SendMailService mailService;
	
	// 회원가입 폼으로 이동
	@GetMapping("join")
	public String join() {
		System.out.println("LoginJoinController - join()");
		
		return "soneson/loginJoin/join";	
	}
	
	// 데이터가 null값 일때 사용하는 메서드 
	@InitBinder
	public void initBinder(WebDataBinder binder) {
		binder.registerCustomEditor(String.class, new StringTrimmerEditor(true));
	}
	
	// 회원가입 처리
	@PostMapping("joinPro")
	public String joinPro(UserVO user, Model model) {
		
		// 1. BcryptPasswordEncoder 클래스 인스턴스 생성
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		
		// 2. BcryptPasswordEncoder 객체의 encode() 메서드를 호출하여 
		//    원문(평문) 패스워드에 대한 해싱(= 암호화) 수행 후 결과값 저장
		String securePasswd = passwordEncoder.encode(user.getUser_passwd());
		
		// 3. 암호화 된 패스워드를 MemberVO 객체에 저장
		user.setUser_passwd(securePasswd);
		
		// ---------------------------------------------------------------------
		// UserService - registMember() 메서드 호출하여 회원가입 작업 요청
		System.out.println(user);
		
		int insertCount = userService.insertUser(user);
		
		if (insertCount < 1) {
			model.addAttribute("msg", "회원가입 실패!");
			return "fail_back";
		}
		
//		int updateCount = service.updateKakaoId(user);
//		if (updateCount < 1) {
//			model.addAttribute("msg", "카카오 연동 실패");
//			return "fail_back";
//		}
		
		String authCode = mailService.sendAuthMail(user.getUser_id(), user.getUser_email());
		
		model.addAttribute("msg", "회원가입 성공!");
		userService.registAuthInfo(user.getUser_id(), authCode);
		
		return "soneson/loginJoin/success";
	}	
	
	
	// 가입 성공
	@GetMapping("/UserJoinSuccess")
	public String JoinSuccess() {
		System.out.println("LoginJoinController - JoinSuccess()");
		return "soneson/loginJoin/success";
	}

	// 이메일 인증 작업 요청
	@GetMapping("/UserEmailAuth")
	public String emailAuth(AuthInfoVO authInfo, Model model) {
//		System.out.println("이메일에 포함된 인증정보 : " + authInfo);
		
		// UserService - emailAuth() 메서드를 호출하여 인증 요청
		// => 파라미터 : AuthInfoVO 객체   리턴타입 : boolean(isAuthSuccess)
		boolean isAuthSuccess = userService.emailAuth(authInfo);
		
		// 인증 수행 결과 판별
		// 성공 시 인증 성공 메세지, 로그인폼 URL 을 포함하여 "forward.jsp" 페이지로 포워딩
		// 실패 시 인증 실패 메세지를 포함하여 "fail_back.jsp" 페이지로 포워딩
		if(isAuthSuccess) { // 성공
			model.addAttribute("msg", "인증 성공! 로그인 페이지로 이동합니다!"); // 출력할 메세지
			model.addAttribute("targetURL", "login"); // 이동시킬 페이지
			return "soneson/loginJoin/forward";
		} else { // 실패
			model.addAttribute("msg", "인증 실패!");
			return "soneson/loginJoin/fail_back";
		}
	}	
	
	// 아이디 중복체크
	@ResponseBody
	@GetMapping("UserCheckDupId")
	public String checkDupId(UserVO user) {
		
		UserVO returnUser = userService.getUser(user);
		System.out.println(user);
		
		if(returnUser != null) { // 아이디 중복
			return "true"; // 리턴타입 String 일 때 응답 데이터로 String 타입 "true" 문자열 리턴
		} else { // 아이디 사용 가능
			return "false"; // 리턴타입 String 일 때 응답 데이터로 String 타입 "false" 문자열 리턴
		}
		
	}

	// 이메일 중복체크 
	@ResponseBody
	@GetMapping("UserCheckDupEmail")
	public String checkDupEmail(UserVO user) {
		
		UserVO returnUser = userService.getUser2(user);
		System.out.println(user);
		
		if(returnUser != null) { // 이메일 중복
			return "true"; // 리턴타입 String 일 때 응답 데이터로 String 타입 "true" 문자열 리턴
		} else { // 아이디 사용 가능
			return "false"; // 리턴타입 String 일 때 응답 데이터로 String 타입 "false" 문자열 리턴
		}
		
	}
	
	
	// 로그인 폼으로 이동
	@GetMapping("login")
	public String login() {
		System.out.println("LoginJoinController - login");
		return "soneson/loginJoin/login";
	}
	
	// 로그인 처리
	@PostMapping("loginPro")
	public String loginPro(
			UserVO user, 
			@RequestParam(required = false) boolean rememberId,
			HttpSession session, 
			Model model, 
			HttpServletResponse response) {
		
		// BCryptPasswordEncoder 객체를 활용한 패스워드 비교
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		
		UserVO dbUser = userService.getUser(user);
		
		if(dbUser == null || !passwordEncoder.matches(user.getUser_passwd(), dbUser.getUser_passwd())) { // 로그인 실패
			model.addAttribute("msg", "로그인 실패!");
			return "soneson/loginJoin/fail_back";
			
		} else { // 로그인 성공
			if(dbUser.getMail_auth_status().equals("N")) { // 이메일 미인증 회원
				model.addAttribute("msg", "이메일 인증 후 로그인이 가능합니다!");
				return "soneson/loginJoin/fail_back";
			} else { // 이메일 인증 회원
				if(dbUser.getUser_status().equals("탈퇴")) {
					model.addAttribute("msg", "탈퇴한 회원입니다!");
					return "soneson/loginJoin/fail_back";
				}
				// 세션 객체에 로그인 성공한 아이디를 "sId" 속성명으로 저장
				session.setAttribute("sId", user.getUser_id());
				session.setAttribute("isAdmin", dbUser.getUser_is_admin());
				
				Cookie cookie = new Cookie("cookieId", user.getUser_id());
				
				if(rememberId) {
					cookie.setMaxAge(60 * 60 * 24 * 30);
				} else {
					cookie.setMaxAge(0);
				}
				
				response.addCookie(cookie);
				
				System.out.println("성공적으로 로그인하였습니다 메인페이지로 이동합니다");
			}
		}
		
		return "redirect:/";
	}
	
	//"Logout" 요청에 대한 로그아웃 비즈니스 로직
	@GetMapping("Logout")
	public String logout(HttpSession session) {
		session.invalidate();
		
		// 메인페이지로 리다이렉트
		return "redirect:/";
	}

	// 아이디 찾기 폼으로 이동
	@GetMapping("idSearch")
	public String idSearch() {
		System.out.println("idSearch");
		
		return "soneson/loginJoin/idSearch";
	}

	
	// 아이디 찾기 처리
	@PostMapping("idSearchPro")
	public String idSearchPro(
						UserVO user,
						@RequestParam String user_name, 
						@RequestParam String user_email, 
						Model model) {
		
		
		user.setUser_name(user_name);
		user.setUser_email(user_email);
		UserVO idSearch = userService.userIdSearch(user);
		
		model.addAttribute("user", idSearch);
		
		
		
		return "soneson/loginJoin/idSearchResult";
	}
	
	// 비밀번호 찾기 폼으로 이동
	@GetMapping("passwdSearch")
	public String passwdSearch() {
						
		System.out.println("passwdSearch");
		
		return "soneson/loginJoin/passwdSearch";
	}
	
	// 비밀번호 찾기 처리
	@PostMapping("passwdSearchPro")
	public String passwdSearchPro(UserVO user, Model model) {
		System.out.println("LoginJoinController - passwdSearchPro()");
		
		int passwdSearchCount = userService.userPasswdSearch(user);
		
		if (passwdSearchCount < 1) {
			model.addAttribute("msg", "일치하는 정보가 없습니다.");
			return "soneson/loginJoin/fail_back";
		}
		
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		
		String newPasswd = RandomStringUtils.randomAlphabetic(10);
		
		String securePasswd = passwordEncoder.encode(newPasswd);
		user.setUser_passwd(securePasswd);
		
		int updateCount = userService.userPasswdChange(user);
		
		if (updateCount < 0) {
			model.addAttribute("msg", "비밀번호 변경 실패.");
			return "soneson/loginJoin/fail_back";
		}
		
		mailService.sendPasswd(user.getUser_id(), user.getUser_email(), newPasswd);
		
		model.addAttribute("msg", "임시 비밀번호가 발송 되었습니다.");
		model.addAttribute("targetURL", "login");
		return "soneson/loginJoin/forward";
	}	
	
	
	
	
	
	
}
