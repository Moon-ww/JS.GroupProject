package com.js.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.js.domain.NoticeVO;
import com.js.mapper.NoticeMapper;

import lombok.AllArgsConstructor;
import lombok.Setter;
@Service
@AllArgsConstructor
public class NoticeServiceImpl implements NoticeService {

	@Setter(onMethod_ = @Autowired)
	private NoticeMapper mapper;
	
	@Override
	public void insert(NoticeVO notice) {
		
		mapper.insert(notice);
	}
	@Override
	public List<NoticeVO> getList() {
		
		return mapper.getList();
	}
	@Override
	public NoticeVO modifyview(int nseq) {
		
		return mapper.modifyview(nseq);
	}
	@Override
	public void modify(NoticeVO notice) {
		
		mapper.modify(notice);
	}
	@Override
	public void delete(int nseq) {
		
		mapper.delete(nseq);
	}
}
