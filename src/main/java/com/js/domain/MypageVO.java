package com.js.domain;

import java.util.List;

import lombok.Data;
@Data
public class MypageVO {

	private String id;
	private String pw;
	private String name;
	private String zip_num;
	private String address1;
	private String address2;
	private String phone;
	private String email;
	//private String indate;
	private String birth;
	private String prop;
	
	private List<MemberauthVO> authlist;
	
	//mypage res
	private int oseq;
	private  String indate;
	private  String pcode;
	private  String pname;
	private int qnt;
	private int total;
	private  String status;
	private  String startdate;
	private  String enddate;
	private long mileage;
	
	
}
