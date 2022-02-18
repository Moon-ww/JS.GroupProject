package com.js.mapper;

import java.util.List;

import com.js.domain.LikesVO;
import com.js.domain.MemberVO;
import com.js.domain.MypageVO;
import com.js.domain.QnaVO;

public interface MypageMapper {

	public List<MypageVO> getList(String id);
	public List<MypageVO> getList2(String id);
	public List<MypageVO> getList3(String id);
	public List<LikesVO> getdibsList(LikesVO likes);
	public MypageVO getmileList(String id);
	public QnaVO getqnaList(String id);
	public void ordercancel(MypageVO mypage);
	public void dibscancel(LikesVO likes);
	public LikesVO getdibs(LikesVO likes);
	public int register(LikesVO vo);

	public MemberVO oneList(String id);
	public String onePw(String id);
	public void update(MemberVO mvo);
	public void delete(String id);
	public MemberVO getOneh(String id);
}
