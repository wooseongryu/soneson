package com.itwillbs.soneson.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwillbs.soneson.mapper.FundingMapper;
@Service
public class FundingService {
	@Autowired
	private FundingMapper mapper;
}
