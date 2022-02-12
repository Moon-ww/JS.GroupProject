package com.js.mapper;

import java.util.List;

import com.js.domain.QnaVO;

public interface QnaMapper {

	public List<QnaVO> getList();//질문 리스트
	public QnaVO qnaview(int qbno);//질문 보기
	public void answerwrite(QnaVO qna);//답변하기
	public void status(int qbno);//답변달면 스테이터스변경
	public void viewcount(int qbno);//질문 조회수
}
