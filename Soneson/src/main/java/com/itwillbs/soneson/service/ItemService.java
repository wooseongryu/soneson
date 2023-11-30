package com.itwillbs.soneson.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwillbs.soneson.mapper.ItemMapper;

@Service
public class ItemService {
	@Autowired
	private ItemMapper mapper;
	

}
