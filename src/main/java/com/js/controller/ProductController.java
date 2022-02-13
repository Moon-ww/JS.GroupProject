package com.js.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.js.domain.ProductVO;
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
	public void productDetailView(@RequestParam("pcode") String pcode, Model model) {		
		ProductVO pvo = service.productDetailView(pcode);	
		String date1 = pvo.getEnddate();	
		String date2 = pvo.getStartdate();	
		long calDateDays = 0;	
		try {	
			SimpleDateFormat format = new SimpleDateFormat("yyyy-mm-dd");
			Date FirstDate = format.parse(date1);
	        Date SecondDate = format.parse(date2);		
	        		
	        Calendar calendar = Calendar.getInstance();		
	        calendar.setTime(FirstDate);		
	        calendar.setTime(SecondDate);		
	        System.out.println("첫번째날:"+FirstDate);		
	        System.out.println("두번째날:"+SecondDate);		
	        long calDate = FirstDate.getTime() - SecondDate.getTime(); 		
	        calDateDays = calDate / ( 24*60*60*1000); 		
	        calDateDays = Math.abs(calDateDays);		
			
	        pvo.setPeriod(calDateDays);		
			
		}catch(ParseException e) {	
			
		}	
			
		model.addAttribute("list", pvo);	
	}		

}


