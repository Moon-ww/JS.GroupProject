package com.js.controller;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.js.domain.LikesVO;
import com.js.domain.MypageVO;
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
		model.addAttribute("list2", service.getList2(id));
		model.addAttribute("list3", service.getList3(id));
		
	}
	@GetMapping("/ordercancel.do")
	public String ordercance(Model model, MypageVO mypage) {
		service.ordercancel(mypage);
		return "redirect:/mypage/reservList.do";
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
	
	//뷰페이지에서 찜삭제하기
	@GetMapping("/dibsDelete2.do")
	public String dibsDelete2(Principal principal, Model model, LikesVO likes) {
		
		
			String id = principal.getName();
			likes.setId(id);
			service.dibscancel(likes);
		
		return "redirect:/product/productDetailview.do";
	}
		/*
		 * //찜 전체삭제
		 * 
		 * @GetMapping("/dibsAllDelete.do") public String dibsAllDelete(Principal
		 * principal) { String id = null; if(principal != null) { id =
		 * principal.getName(); } likeservice.ALLremove(id); return
		 * "redirect:/mypage/dibs.do"; }
		 */
}
