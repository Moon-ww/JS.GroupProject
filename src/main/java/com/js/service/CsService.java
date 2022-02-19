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
	
	public List<FaqVO> getFaqList(); //faq리스트
	public void insertFaq(FaqVO fvo); //faq등록
	public FaqVO faqModify(int bno); //faq 수정화면
	public void faqModifypro(FaqVO fvo); //faq 수정
	public void faqDelete(int bno); //faq 삭제

}
