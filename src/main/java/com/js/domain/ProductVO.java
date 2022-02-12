package com.js.domain;

import lombok.Data;

@Data
public class ProductVO {

	private int pseq;
	private String name;
	private String kind;
	private String content;
	private String img;
	private String hash;
	private String place;
	private String thema;
	private String spot;
	private String pick;
	//detail
	private String pcode;
	private int dpseq;
	private String dname;
	private String dkind;
	private String dcontent;
	private int price1;
	private int price2;
	private int price3;
	private String dhash;
	private int count;
	private String startdate;
	private String enddate;
	private String guide;
	private String airline;
	private String rentent;
	private String rentcar;
	private String hotel;
	private String hgrade;
	private long period;
	
	
	/*
	 * private String id; private String rcontent; private String review;
	 */
	
	
	
}
