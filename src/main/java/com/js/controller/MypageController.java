package com.js.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.js.service.MypageService;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/mypage/*")
@AllArgsConstructor
@Log4j
public class MypageController {
	
	@Setter(onMethod_ =@Autowired)
	private MypageService service;
	
	@GetMapping("/reservList.do")
	public void reservList() {
		
	}
	
	@GetMapping("/dibs.do")
	public void dibsList() {
		
	}
	
	@GetMapping("/mileage.do")
	public void mileage() {
		
	}
	
	@GetMapping("/mileageGuide.do")
	public void mileageGuide() {
		
	}
	
	@GetMapping("/qnaList.do")
	public void qnaList() {
		
	}
	
	@GetMapping("/review.do")
	public void reviewList() {
		
	}
	
	@GetMapping("/mypage.do")
	public void mypage() {
		
	}
	
}
