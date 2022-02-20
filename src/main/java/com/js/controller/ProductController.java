package com.js.controller;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.js.domain.HotelVO;
import com.js.domain.LikesVO;
import com.js.domain.ProductVO;
import com.js.service.HotelService;
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
	private HotelService service3;
	
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
	public void productDetailView(String pcode, Model model, Principal principal, LikesVO likes) {		
		if(principal != null) {
			String id = principal.getName();
			likes.setId(id);
			model.addAttribute("list2", service2.getdibs(likes));
		}
		model.addAttribute("list", service.productDetailView(pcode));	
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
	public void ProductView(Model model, ProductVO product, 
			@RequestParam("spot") String spot,@RequestParam("startdate") String startdate) {
		model.addAttribute("list", service.getSearchView(product));
		model.addAttribute("count",service.getSearchCount(product));
		model.addAttribute("spot",spot); 
		model.addAttribute("startdate",startdate); 
	}
	@GetMapping("/productSearchthema.do")
	public void ProductThema(Model model, ProductVO product) {
		model.addAttribute("list", service.getSearchThema(product));
		model.addAttribute("count",service.getSearchThemaCount(product));
	}
	@GetMapping("/totalSearch.do")
	public void totalSearchView(Model model, 
			@RequestParam("spot") String spot, ProductVO product,HotelVO hotel) {
		model.addAttribute("list1", service.getTotalSearch(spot));//상품전체
		model.addAttribute("list2", service3.getTotalSearch(spot));//호텔전체
		model.addAttribute("count1",service.getSearchCountTotal(product));//상품카운트전체
	    model.addAttribute("count2",service3.getSearchCountTotal(hotel));//호텔카운트전체
		model.addAttribute("spot",spot);
	}
	
	  @GetMapping("/totalSearch_p.do") 
	  public void totalsearchp(Model model,ProductVO product,String spot,HotelVO hotel) {
	  model.addAttribute("list1", service.getTotalSearch(spot));//상품전체
	  model.addAttribute("list2", service3.getTotalSearch(spot));//호텔전체
	  model.addAttribute("count1",service.getSearchCountTotal(product));//상품카운트전체
      model.addAttribute("count2",service3.getSearchCountTotal(hotel));//호텔카운트전체
	  model.addAttribute("list3",service.getTotalSearch_p(product)); //상품조건
	  model.addAttribute("count3",service.getSearchCount(product));//상품카운트
	  model.addAttribute("spot",spot); 
	 
	  }
	  @GetMapping("/totalSearch_h.do") 
	  public void totalsearchh(Model model,ProductVO product, HotelVO hotel, String spot) {
	  model.addAttribute("list1", service.getTotalSearch(spot));//상품전체
	  model.addAttribute("list2", service3.getTotalSearch(spot));//호텔전체
	  model.addAttribute("count1",service.getSearchCountTotal(product));//상품카운트전체
      model.addAttribute("count2",service3.getSearchCountTotal(hotel));//호텔카운트전체
	  model.addAttribute("list4",service3.getTotalSearch_h(hotel)); //호텔조건
      model.addAttribute("count4",service3.getSearchCount(hotel));//호텔카운트
	  model.addAttribute("spot",spot); 
	 
	  }
}

