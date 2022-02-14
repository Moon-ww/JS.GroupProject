package com.js.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.js.domain.QnaVO;
import com.js.service.CsService;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/cs/*")
@AllArgsConstructor
@Log4j
public class CsController {
	
	@Setter(onMethod_ =@Autowired)
	private CsService service;
	
	@GetMapping("/faq.do")
	public void FaqList() {
		
	}
	
	@GetMapping("/qna.do")
	public void QnaList() {
		
	}
	@PostMapping("/qnawrite.do")
	public String QnaWrite(QnaVO qna) {
		service.insert(qna);
		return "redirect:/";
	}
	
	@GetMapping("/notice.do")
	public void NoticeList() {
		
	}
	
	
}
