package com.itwillbs.soneson.vo;

import lombok.Data;

@Data
public class ProjectVO {
	private int project_code;
	private String title;
	private String subtitle;
	private String category;
	private String creator;
	private String img1;
	private String startDate;
	private String endDate;
	
	//------------
	private String pro_code;
	private String pro_categorie;
	private String pro_summary;
	private String pro_title;
	private String user_id;
}
