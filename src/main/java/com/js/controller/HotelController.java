package com.js.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.js.service.HotelService;

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
	
	@GetMapping("/hotellist.do")
	public void HotelList(Model model) {
		model.addAttribute("list", service.getDetailList());
		model.addAttribute("list2", service.getDetailList2());
		model.addAttribute("list3", service.getDetailList3());
	}
	
	@GetMapping("/hotelview.do")
	public void HotelView(Model model, int hseq) {
		model.addAttribute("list", service.getDetailView(hseq));
		model.addAttribute("list2", service.getDetailView2(hseq));
		
	}
	 
}


