package com.js.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.js.domain.LikesVO;
import com.js.domain.MemberVO;
import com.js.domain.MypageVO;
import com.js.domain.QnaVO;
import com.js.mapper.MypageMapper;

import lombok.AllArgsConstructor;
import lombok.Setter;

@Service
@AllArgsConstructor
public class MypageServiceImpl implements MypageService {
	
	@Setter(onMethod_ = @Autowired)
	private MypageMapper mapper;
	
	@Override
	public List<MypageVO> getList(String id) {
		
		return mapper.getList(id);
	}
	@Override
	public List<MypageVO> getList2(String id) {
		
		return mapper.getList2(id);
	}
	@Override
	public List<MypageVO> getList3(String id) {
		
		return mapper.getList3(id);
	}
	@Override
	public void ordercancel(MypageVO mypage) {
		
	}
	@Override
	public MypageVO getmileList(String id) {
		
		return mapper.getmileList(id);
	}
	@Override
	public QnaVO getqnaList(String id) {
		
		return mapper.getqnaList(id);
	}
	@Override
	public void dibscancel(LikesVO likes) {
		
		mapper.dibscancel(likes);
		
	}
	@Override
	public LikesVO getdibs(LikesVO likes) {

	return	mapper.getdibs(likes);
	}
	@Override
	public LikesVO getdibs2(LikesVO likes) {

	return	mapper.getdibs2(likes);
	}
	@Override	
	public int register(LikesVO likes) {	
		return mapper.register(likes);
	}	
	@Override
	public List<LikesVO> getdibsList(LikesVO likes) {
		
		return	mapper.getdibsList(likes);
	}
	@Override
	public List<LikesVO> getdibsList2(LikesVO likes) {
		
		return	mapper.getdibsList2(likes);
	}
	@Override
	public MemberVO oneList(String id) {
		return mapper.oneList(id);
	}
	
	@Override
	public String onePw(String id) {
		return mapper.onePw(id);
	}
	
	@Override
	public void update(MemberVO mvo) {
		mapper.update(mvo);
	}
	
	@Override
	public void delete(String id) {
		mapper.delete(id);
	}
	
}
