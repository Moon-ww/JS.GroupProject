package com.js.service;

import com.js.domain.MypageVO;
import com.js.domain.QnaVO;

public interface MypageService {

	public MypageVO getList(String id);
	public MypageVO getmileList(String id);
	public QnaVO getqnaList(String id);
	
}
