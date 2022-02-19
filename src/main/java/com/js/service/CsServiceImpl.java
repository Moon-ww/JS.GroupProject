package com.js.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.js.domain.FaqVO;
import com.js.domain.NoticeVO;
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
	public List<NoticeVO> getNoticeList(){
		return mapper.getNoticeList();
	}
	@Override
	public List<NoticeVO> getNoticeList2(){
		return mapper.getNoticeList2();
	}
	@Override
	public List<NoticeVO> getNoticeList3(){
		return mapper.getNoticeList3();
	}
	@Override
	public List<NoticeVO> getNoticeList4(){
		return mapper.getNoticeList4();
	}
	@Override	
	public List<FaqVO> getFaqList() {	
		
		return mapper.getFaqList();
	}	
	@Override	
	public void insertFaq(FaqVO fvo) {	
		mapper.insertFaq(fvo);
	}	
	@Override	
	public FaqVO faqModify(int bno) {	
		return mapper.faqModify(bno);
	}	
	@Override	
	public void faqModifypro(FaqVO fvo) {	
		mapper.faqModifypro(fvo);
	}	
	@Override	
	public void faqDelete(int bno) {	
		mapper.faqDelete(bno);
	}	

}
