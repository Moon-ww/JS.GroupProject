package com.js.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.js.domain.QnaVO;
import com.js.mapper.QnaMapper;

import lombok.AllArgsConstructor;
import lombok.Setter;
@Service
@AllArgsConstructor
public class QnaServiceImpl implements QnaService {

	@Setter(onMethod_ = @Autowired)
	private QnaMapper mapper;
	
	@Override
	public List<QnaVO> getList() {
		return mapper.getList();
	} 
	@Override
	public QnaVO qnaview(int qbno) {

		return mapper.qnaview(qbno);
		
	}
	@Override
	public void answerwrite(QnaVO qna) {
		
		mapper.answerwrite(qna);
	}
	@Override
	public void status(int qbno) {
		
		mapper.status(qbno);
	}
	@Override
	public void viewcount(int qbno) {

		mapper.viewcount(qbno);
	}
}
