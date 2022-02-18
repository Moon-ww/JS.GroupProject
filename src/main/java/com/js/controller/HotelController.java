package com.js.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

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
	
	@GetMapping("/hotellist.do")
	public void HotelList(Model model) {
		model.addAttribute("list", service.getDetailList());
		model.addAttribute("list2", service.getDetailList2());
		model.addAttribute("list3", service.getDetailList3());
		model.addAttribute("list4", service.getDetailList4());
	}
	
	@GetMapping("/hotelview.do")
	public void HotelView(Model model, int hseq,LikesVO likes) {
		model.addAttribute("list", service.getDetailView(hseq));
		model.addAttribute("list2", service.getDetailView2(hseq));
		model.addAttribute("list3", service2.getdibs(likes));
		
	}
	@GetMapping("/hotelSearchview.do")
	public void HotelSearchView(Model model, String place) {
		model.addAttribute("list", service.getSearchView());
		
	}
	 
}


