package com.itwillbs.soneson.vo;

import lombok.Data;

/*
item_code	-- pk
pro_code	-- fk
item_name	-- 아이템이름
item_condition	-- 아이템옵션분류(주관식. 객관식..)
item_option	-- 아이템옵션항목

 */
@Data
public class ProItemVO {
	private int item_code;
	private int pro_code;
	private String item_name;
	private String item_condition;
	private String item_option;
	
}
