package com.js.controller;

import java.lang.ProcessBuilder.Redirect;
import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	public void reservList(Model model, Principal principal) {
		String id = principal.getName();
		model.addAttribute("list", service.getList(id));
		
	}
	
	@GetMapping("/dibs.do")
	public void dibsList() {
		
	}
	
	@GetMapping("/mileage.do")
	public void mileage(Model model, Principal principal) {
		String id = principal.getName();
		model.addAttribute("list", service.getmileList(id));
	}
	
	@GetMapping("/mileageGuide.do")
	public void mileageGuide(Model model, Principal principal) {
		String id = principal.getName();
		model.addAttribute("list", service.getmileList(id));
	}
	
	@GetMapping("/qnaList.do")
	public void qnaList(Model model, Principal principal) {
		String id = principal.getName();
		model.addAttribute("list", service.getqnaList(id));
	}
	
	@GetMapping("/review.do")
	public void reviewList() {
		
	}
	
	@GetMapping("/mypage.do")
	public void mypage() {
		
	}
	
}
