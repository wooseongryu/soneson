package com.itwillbs.soneson.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwillbs.soneson.mapper.MainMapper;

@Service
public class MainService {
	
	@Autowired
	private MainMapper mapper;
	
	public List<Map<String, Object>> getTabList() {
		System.out.println("getTabList");
		return mapper.getTabList();
	}

}
