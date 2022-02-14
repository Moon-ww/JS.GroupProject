package com.js.mapper;

import com.js.domain.MypageVO;
import com.js.domain.QnaVO;

public interface MypageMapper {

	public MypageVO getList(String id);
	public MypageVO getmileList(String id);
	public QnaVO getqnaList(String id);
}
