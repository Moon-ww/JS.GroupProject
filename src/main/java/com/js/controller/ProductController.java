package com.js.controller;

import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

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
	public void ProductView(Model model, ProductVO product) {
		model.addAttribute("list", service.getSearchView(product));
		model.addAttribute("count",service.getSearchCount(product));
	}
	@GetMapping("/productSearchthema.do")
	public void ProductThema(Model model, ProductVO product) {
		model.addAttribute("list", service.getSearchThema(product));
		model.addAttribute("count",service.getSearchThemaCount(product));
	}
	@GetMapping("/totalSearch.do")
	public void totalSearchView(Model model, @RequestParam("spot") String spot) {
		//product.setSpot(spot);
		//System.out.println(spot);
		model.addAttribute("spot",spot);
		model.addAttribute("list2", service.getTotalSearch(spot));
		//model.addAttribute("count",service.getTotalSearchCount(spot));
		model.addAttribute("list", service3.getTotalSearch(spot));
		//System.out.println(model);
	}
	
	  @ResponseBody
	  @GetMapping("/totalSearch_p_price.do") 
	  public List<ProductVO>totalsearchpprice(
	  @RequestParam("price2") int price2,
	  @RequestParam("price") int price,
	  @RequestParam("spot") String spot) {
	  System.out.println("가격 : "+price2+"~"+price+" & 여행지 : "+spot);
	  return service.getTotalSearchp_p_price(price2, price, spot); }
	 
	
	/*
	 * @GetMapping("/totalSearch_p_price.do") public void totalsearchpprice(Model
	 * model, @RequestParam("price2") int price2,
	 * 
	 * @RequestParam("price") int price,
	 * 
	 * @RequestParam("spot") String spot) {
	 * System.out.println("가격 : "+price2+"~"+price+" & 여행지 : "+spot);
	 * model.addAttribute("list2",service.getTotalSearchp_p_price(price2, price,
	 * spot)); model.addAttribute("list", service3.getTotalSearch(spot));
	 * model.addAttribute("spot",spot); }
	 */
}


