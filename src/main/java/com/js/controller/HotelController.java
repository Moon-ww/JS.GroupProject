package com.js.controller;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.js.domain.HotelVO;
import com.js.domain.LikesVO;
import com.js.service.HotelService;
import com.js.service.MypageService;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/hotel/*")
@AllArgsConstructor
@Log4j
public class HotelController {
	
	@Setter(onMethod_ =@Autowired)
	private HotelService service;
	private MypageService service2;
	
	//호텔리스트
	@GetMapping("/hotellist.do")
	public void HotelList(Model model) {
		model.addAttribute("list", service.getDetailList());
		model.addAttribute("list2", service.getDetailList2());
		model.addAttribute("list3", service.getDetailList3());
		model.addAttribute("list4", service.getDetailList4());
	}
	//호텔 뷰
	@GetMapping("/hotelview.do")
	public void HotelView(Model model, int hseq, LikesVO likes, Principal principal) {
		model.addAttribute("list", service.getDetailView(hseq));
		model.addAttribute("list2", service.getDetailView2(hseq));
		if(principal != null) {
			String id = principal.getName();
			likes.setId(id);	
			model.addAttribute("list3", service2.getdibs2(likes));
		}
	}
	//호텔 찜하기
	@GetMapping("/insert.do")
	public String dibsinsert(LikesVO likes, Principal principal) {
		String id = principal.getName();
		likes.setId(id);	
		service2.register(likes);
		return "redirect:/hotel/hotelview.do?hseq="+likes.getHseq();
	}
	//호텔 찜해제
	@GetMapping("/cancel.do")
	public String dibscancel(LikesVO likes, Principal principal) {
		String id = principal.getName();
		likes.setId(id);	
		service2.dibscancel(likes);
		return "redirect:/hotel/hotelview.do?hseq="+likes.getHseq();
	}
	//호텔 검색
	@GetMapping("/hotelSearchview.do")
	public void HotelSearchView(Model model, HotelVO hotel, String spot) {
		model.addAttribute("list", service.getTotalSearch_h(hotel));
		model.addAttribute("count4",service.getSearchCount(hotel));//호텔카운트
		model.addAttribute("spot",spot); 
	}
	 
}


