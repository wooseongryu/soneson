package com.itwillbs.soneson.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwillbs.soneson.mapper.AdminMapper;


@Service
public class AdminService {

	@Autowired
	private AdminMapper mapper;	
	
}
