package com.js.service;

import java.util.List;

import com.js.domain.LikesVO;
import com.js.domain.MemberVO;
import com.js.domain.MypageVO;
import com.js.domain.QnaVO;

public interface MypageService {

	public List<MypageVO> getList(String id);
	public List<MypageVO> getList2(String id);
	public List<MypageVO> getList3(String id);
	public List<LikesVO> getdibsList(LikesVO likes);
	public List<LikesVO> getdibsList2(LikesVO likes);
	public MypageVO getmileList(String id);
	public QnaVO getqnaList(String id);
	public void ordercancel(MypageVO mypage);
	public void dibscancel(LikesVO likes);
	public LikesVO getdibs(LikesVO likes);
	public LikesVO getdibs2(LikesVO likes);
	public int register(LikesVO likes);
	public void dibsdelete(LikesVO likes);
	public void dibsdeleteall(LikesVO likes);
	public MemberVO oneList(String id);
	public String onePw(String id);
	public void update(MemberVO mvo);
	public void delete(String id);
}
