package com.js.domain;

import lombok.Data;

@Data
public class QnaVO {

	int qbno;
	String writer;
	String title;
	String qcontent;
	String regdate;
	int viewcount;
	int status;
	String oseq;
	String kind;
	
	int qno;
	int abno;
	String acontent;
	
}
