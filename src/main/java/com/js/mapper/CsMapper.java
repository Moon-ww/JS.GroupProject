package com.js.mapper;

import java.util.List;

import com.js.domain.NoticeVO;
import com.js.domain.QnaVO;

public interface CsMapper {

	public void insert(QnaVO qna);
	public List<NoticeVO> getNoticeList();
}
