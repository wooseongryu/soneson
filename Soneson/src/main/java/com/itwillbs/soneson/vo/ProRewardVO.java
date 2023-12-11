package com.itwillbs.soneson.vo;

import lombok.Data;
/*
reward_code	-- pk
item_code	-- fk
pro_code	-- fk
reward_explain	-- 구성설명
reward_isCount	-- 수량제한(Y, N)
reward_count	-- 수량개수
reward_isDeliv	-- 배송여부
reward_amount	-- 후원금액	
 */

@Data
public class ProRewardVO {
	private int reward_code;
	private int item_code;
	private int pro_code;
	private String reward_explain;
	private String reward_isCount;
	private int reward_count;
	private String reward_isDeliv;
	private String reward_amount;
	
}
