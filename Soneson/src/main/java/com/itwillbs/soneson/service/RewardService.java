package com.itwillbs.soneson.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwillbs.soneson.mapper.RewardMapper;

@Service
public class RewardService {
	@Autowired
	private RewardMapper mapper;
	
	//아이템insert
	public int insertItem(Map<String, Object> map) {
		return mapper.insertItem(map);
	}
	//아이템List
	public List<Map<String, String>> selectItem(Map<String, Object> map) {
		return mapper.selectItem(map);
	}
	public Map<String, String> selectNewItem(Map<String, Object> map) {
		return mapper.selectNewItem(map);
	}
	
	//리워드List
	public List<Map<String, String>> selectReward(Map<String, Object> map) {
		return mapper.selectReward(map);
	}
	public int deleteItem(Map<String, String> map) {
		return mapper.deleteItem(map);
	}
	public int insertReward(Map<String, String> map) {
		return mapper.insertReward(map);
	}
	public int deleteReward(int reward_code) {
		return mapper.deleteReward(reward_code);
	}
	

}
