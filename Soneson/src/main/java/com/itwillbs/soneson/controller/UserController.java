package com.itwillbs.soneson.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class UserController {
	// 유저프로필 메인 페이지
	@GetMapping("user")
	public String user() {
		System.out.println("UserController - user()");
		return "mypage/user/user_main";
	}
}
