package com.js.service;

import java.util.List;

import com.js.domain.LikesVO;
import com.js.domain.MypageVO;
import com.js.domain.QnaVO;

public interface MypageService {

	public List<MypageVO> getList(String id);
	public List<MypageVO> getList2(String id);
	public List<MypageVO> getList3(String id);
	public MypageVO getmileList(String id);
	public QnaVO getqnaList(String id);
	public void ordercancel(MypageVO mypage);
	public void dibscancel(LikesVO likes);
	public LikesVO getdibs(LikesVO likes);
	public int register(LikesVO likes);

	
}
