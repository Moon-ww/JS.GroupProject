package com.js.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.js.domain.MemberVO;
import com.js.domain.QnaVO;
import com.js.mapper.CsMapper;

import lombok.AllArgsConstructor;
import lombok.Setter;

@Service
@AllArgsConstructor
public class CsServiceImpl implements CsService {
	
	@Setter(onMethod_ = @Autowired)
	private CsMapper mapper;
	
	@Override
	public void insert(QnaVO qna) {
		mapper.insert(qna);
	}
	@Override
	public List<MemberVO> getList() {
		return mapper.getList();
	}

}
