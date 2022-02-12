package com.js.mapper;

import java.util.List;

import com.js.domain.NoticeVO;

public interface NoticeMapper {

	public void insert(NoticeVO notice);//공지입력
	public List<NoticeVO> getList();//공지리스트
	public NoticeVO modifyview(int nseq);//공지수정화면
	public void modify(NoticeVO notice);//공지수정
	public void delete(int nseq);//공지삭제
	
}
