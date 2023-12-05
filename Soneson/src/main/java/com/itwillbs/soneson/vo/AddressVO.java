package com.itwillbs.soneson.vo;

import lombok.Data;

@Data
public class AddressVO {
	private int address_idx;
	private String user_id;
	private String address_reciver;
	private int address_code;
	private String address_main;
	private String address_sub;
	private String address_reciver_phone;
}
