package com.js.service;

import java.util.List;

import com.js.domain.MemberVO;
import com.js.domain.NoticeVO;
import com.js.domain.QnaVO;

public interface CsService {

	public void insert(QnaVO qna);
	public List<NoticeVO> getNoticeList();
}
