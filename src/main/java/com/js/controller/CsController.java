package com.js.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	public void FaqList(Model model) {
	model.addAttribute("list", service.getFaqList());
	System.out.println(model);
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
	public void NoticeList(Model model) {
		model.addAttribute("list",service.getNoticeList());
		//System.out.println(model);
		model.addAttribute("list2",service.getNoticeList2());
		model.addAttribute("list3",service.getNoticeList3());
		model.addAttribute("list4",service.getNoticeList4());
	}
	
	
}
