package com.itwillbs.soneson.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface RewardMapper {
	
	//아이템 넣기
	int insertItem(Map<String, Object> map);
	
	//아이템 리스트조회
	List<Map<String, String>> selectItem(Map<String, Object> map);
	
	//등록아이템 가져오기
	Map<String, String> selectNewItem(Map<String, Object> map);
	
	//아이템 삭제
	int deleteItem(Map<String, String> map);
	
	//리워드 리스트조회
	List<Map<String, String>> selectReward(Map<String, Object> map);
	
	//리워드 추가
	int insertReward(Map<String, String> map);

	//리워드삭제
	int deleteReward(int reward_code);
	
	


}
