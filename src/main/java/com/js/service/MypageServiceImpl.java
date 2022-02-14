package com.js.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
	public MypageVO getList(String id) {
		
		return mapper.getList(id);
	}
	@Override
	public MypageVO getmileList(String id) {
		
		return mapper.getmileList(id);
	}
	@Override
	public QnaVO getqnaList(String id) {
		
		return mapper.getqnaList(id);
	}
}
