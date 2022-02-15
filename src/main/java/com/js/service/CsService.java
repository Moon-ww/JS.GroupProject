package com.js.service;

import java.util.List;

import com.js.domain.FaqVO;
import com.js.domain.NoticeVO;
import com.js.domain.QnaVO;

public interface CsService {

	public void insert(QnaVO qna);
	public List<NoticeVO> getNoticeList();
	public List<NoticeVO> getNoticeList2();
	public List<NoticeVO> getNoticeList3();
	public List<NoticeVO> getNoticeList4();
	
	public List<FaqVO> getFaqList();
}
