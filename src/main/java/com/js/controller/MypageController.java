package com.js.controller;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.js.domain.LikesVO;
import com.js.domain.MemberVO;
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
	public void dibsList(Model model, Principal principal, LikesVO likes) {
		String id = principal.getName();
		likes.setId(id);
		model.addAttribute("list", service.getdibsList(likes));
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
	public void mypage(Principal principal, Model model) {
		String id = principal.getName();
		MemberVO mvo = service.oneList(id);
		model.addAttribute("mvo", mvo);
	}
	
	@GetMapping("/privacy.do")
	public void privacy(Principal principal, Model model) {
		String id = principal.getName();
		MemberVO mvo = service.oneList(id);
		model.addAttribute("mvo", mvo);
	}

//	@GetMapping("/privacy_check.do")
//	public String privacy_check(@RequestParam(value = "checkPw") String checkPw, Principal principal, Model model) {
//		String incodePw = pwencoder.encode(checkPw);
//		log.info(incodePw);
//
//		String id = principal.getName();
//		String onePw = service.onePw(id);
//		
//		if(incodePw == onePw) {
//			return "privacy_corr.do";
//		}
//		
//		return "privacy.do";
//	}
	
	/*
	 * @GetMapping("/privacy_check.do") public String privacy_check(Authentication
	 * authentication, UserDetails userDetails, MessageSource messages) {
	 * 
	 * String presentedPassword = authentication.getCredentials().toString();
	 * 
	 * if (!pwencoder.matches(presentedPassword, userDetails.getPassword())) {
	 * log.debug("Authentication failed: password does not match stored value");
	 * 
	 * throw new BadCredentialsException(messages.getMessage( null, null)); }
	 * 
	 * return null; }
	 */
	
	@GetMapping("/privacy_corr.do")
	public void privacy_corr(Principal principal, Model model) {
		String id = principal.getName();
		MemberVO mvo = service.oneList(id);
		model.addAttribute("mvo", mvo);
	}
	
	@PostMapping("/privacy_change.do")
	public String privacy_change(@ModelAttribute MemberVO mvo) {
		service.update(mvo);
		
		return "redirect:/mypage/privacy_corr.do";
		
	}
	
	@GetMapping("/secsession.do")
	public void secsession(Principal principal, Model model) {
		String id = principal.getName();
		MemberVO mvo = service.oneList(id);
		model.addAttribute("mvo", mvo);
	}
	
	@GetMapping("/memDelete.do")
	public String memDelete(Principal principal) {
		
		String id = principal.getName();
		service.delete(id);
		
		return "redirect:/";
	}
	
	@GetMapping("/changePw.do")
	public void changePw(Principal principal, Model model) {
		String id = principal.getName();
		MemberVO mvo = service.oneList(id);
		model.addAttribute("mvo", mvo);
	}
	
}
