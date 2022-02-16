package com.js.controller;

import java.security.Principal;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.js.domain.LikesVO;
import com.js.domain.ProductVO;
import com.js.service.MypageService;
import com.js.service.ProductService;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/product/*")
@AllArgsConstructor
@Log4j
public class ProductController {
	
	@Setter(onMethod_ =@Autowired)
	private ProductService service;
	private MypageService service2;
	
	@GetMapping("/productlist.do")
	public void ProductList(Model model) {
		model.addAttribute("list", service.getDetailList());
		model.addAttribute("list2", service.getDetailList2());
		model.addAttribute("list3", service.getDetailList3());
	}
	@GetMapping("/productview.do")
	public void ProductView(Model model, int pseq) {
		model.addAttribute("list", service.getDetailView(pseq));
		model.addAttribute("list2", service.getDetailView2(pseq));
		
	}
	@GetMapping("/product/productDetailview.do")			
	public void productDetailView(String pcode, Model model, LikesVO likes, Principal principal) {		
		String id = principal.getName();
		likes.setId(id);	
		model.addAttribute("list", service.productDetailView(pcode));	
		model.addAttribute("list2", service2.getdibs(likes));
		System.out.println(likes);
	}		
	@GetMapping("/insert.do")
	public String dibsinsert(LikesVO likes, Principal principal) {
		String id = principal.getName();
		likes.setId(id);	
		service2.register(likes);
		return "redirect:/product/productDetailview.do?pcode="+likes.getPcode();
	}
	@GetMapping("/cancel.do")
	public String dibscancel(LikesVO likes, Principal principal) {
		String id = principal.getName();
		likes.setId(id);	
		service2.dibscancel(likes);
		return "redirect:/product/productDetailview.do?pcode="+likes.getPcode();
	}
	@GetMapping("/productSearchview.do")
	public void ProductView(Model model, ProductVO product) {
		model.addAttribute("list", service.getSearchView(product));
		model.addAttribute("count",service.getSearchCount(product));
	}
	@GetMapping("/productSearchthema.do")
	public void ProductThema(Model model, ProductVO product) {
		model.addAttribute("list", service.getSearchThema(product));
		model.addAttribute("count",service.getSearchThemaCount(product));
	}
	
}


