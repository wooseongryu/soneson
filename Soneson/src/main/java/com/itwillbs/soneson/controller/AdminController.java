package com.itwillbs.soneson.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.itwillbs.soneson.service.AdminService;


@Controller
public class AdminController {

	@Autowired
	private AdminService adminService;
	
	
	
	
}
