package com.js.controller;

import java.io.IOException;
import java.security.Principal;
import java.util.Properties;
import java.util.Random;

import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.js.domain.HotelVO;
import com.js.domain.MemberVO;
import com.js.domain.OrderVO;
import com.js.service.HotelService;
import com.js.service.MemberService;
import com.js.service.ProductService;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/member/*")
@AllArgsConstructor
@Log4j
public class MemberController {
	
	@Setter(onMethod_ =@Autowired)
	private MemberService service;
	private ProductService service2;
	private HotelService service3;
	
	@Setter(onMethod_ =@Autowired)
	private PasswordEncoder pwencoder;
	
	@GetMapping("/join.do")
	public void memberjoinview() {
		
	}
	@GetMapping("/terms.do")
	public void terms() {
		
	}

	@GetMapping("/memberIDcheck.do")
	public @ResponseBody int memberidcheck(@RequestParam("id") String id) {
		int result = service.idcheck(id);
		log.info("result : "+result);
		return result;
	}
	@PostMapping("/memberinsert.do")
	public String memberinsert(MemberVO member) {
		String inputpass = pwencoder.encode(member.getPw());
		member.setPw(inputpass);
		
		service.insert(member);
		return "redirect:/";
	}
	@GetMapping("/login")
	public void customlogin() {
	}

    /* 이메일 인증 */
	@GetMapping("/member/emailsend.do")
	public void EmailAction(String email, HttpServletRequest request,HttpServletResponse response) throws IOException {
			
			String host = "smtp.naver.com";
	        String user = "antkehfk2@naver.com"; 
	        String password = "answodnd1@";
	        
	       
	        String to_email = email;
	        
	        
	        Properties props = new Properties();
	        props.put("mail.smtp.host", host);
	        props.put("mail.smtp.port", 465);
	        props.put("mail.smtp.auth", "true");
	        props.put("mail.smtp.ssl.enable", "true");
	        props.put("mail.smtp.ssl.protocols", "TLSv1.2");
	        
	        
	        StringBuffer temp =new StringBuffer();
	        Random rnd = new Random();
	        for(int i=0;i<10;i++)
	        {
	            int rIndex = rnd.nextInt(3); // 0 1 2
	            switch (rIndex) {
	            case 0:
	                // a-z
	                temp.append((char) ((int) (rnd.nextInt(26)) + 97));
	                break;
	            case 1:
	                // A-Z
	                temp.append((char) ((int) (rnd.nextInt(26)) + 65));
	                break;
	            case 2:
	                // 0-9
	                temp.append((rnd.nextInt(10)));
	                break;
	            }
	        }
	        String AuthenticationKey = temp.toString();
	        System.out.println(AuthenticationKey);
	        System.out.println(to_email);
	        
	        Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
	            protected javax.mail.PasswordAuthentication getPasswordAuthentication() {
	                return new javax.mail.PasswordAuthentication(user,password);
	            }
	        });
	        
	        
	        try {
	            MimeMessage msg = new MimeMessage(session);
	            msg.setFrom(new InternetAddress(user, "JS Tour"));
	            msg.addRecipient(Message.RecipientType.TO, new InternetAddress(to_email));
	            
	           
	            msg.setSubject("JS Tour 인증메일입니다.");
	            
	            msg.setText("인증번호 : "+temp);
	            
	            Transport.send(msg);
	            System.out.println("wellcome");
	            
	        }catch (Exception e) {
	            e.printStackTrace();// TODO: handle exception
	        }
	        HttpSession saveKey = request.getSession();
	        saveKey.setAttribute("AuthenticationKey", AuthenticationKey);

	        JSONObject obj = new JSONObject();
	        obj.put("msg", "이메일 발송");
	        
	        response.setCharacterEncoding("utf-8");
	        response.setContentType("application/x-json, charset=utf-8");
	        response.getWriter().print(obj);
		}
	/* 인증번호 */
	@GetMapping("/member/cncompare.do")
	public void CncompareAction(String cn, HttpServletRequest request,HttpServletResponse response) throws IOException {
		String AuthenKey = (String) request.getSession().getAttribute("AuthenticationKey");
	      
	      JSONObject obj = new JSONObject();
	      
	      if(cn.equals(AuthenKey)) {
	         obj.put("msg", "인증되었습니다.");
	         obj.put("check", "ok");
	         
	      }else {
	         obj.put("msg", "인증번호가 틀렸습니다.");
	         obj.put("check", "not ok");
	      }
	      
	      response.setCharacterEncoding("utf-8");
	      response.setContentType("application/x-json,charset=utf-8");
	      response.getWriter().print(obj);
	}
	@GetMapping("/reservationviewp.do")
	public void reservationview(Model model, String pcode, String id, int qnt, int total) {
		model.addAttribute("qnt",qnt);
		model.addAttribute("total",total);
		model.addAttribute("mlist", service.getOne(id));
		model.addAttribute("list2", service2.productDetailView(pcode));
	}
	@GetMapping("/reservationviewh.do")
	public void reservationviewh(Model model, @RequestParam("id") String id, @RequestParam("hseq") int hseq) {
		model.addAttribute("mlist", service.getOneh(id));
		HotelVO vo = service3.getDetailViewHotel(hseq);
		model.addAttribute("hoteldetail", vo);
	}
	@PostMapping("/orderinsert.do")
	public String orderinsert(Model model, OrderVO order, String id) {
		order.setMileage( Math.round(( order.getTotal() /  order.getQnt() ) * 0.01));
		service.Order(order);
		service.Mileageinsert(order);
		return "redirect:/member/orders.do";
	}
	
	@GetMapping("/orders.do") 
	 public String orders() {
	 return "redirect:/member/ordercomplete.do";
	 }
	
	@GetMapping("/ordercomplete.do")
	public void orsercomp(Model model, OrderVO order, Principal principal) {
		String id = principal.getName();
		model.addAttribute("list", service.getOrderinfo(id)); 
	}
}


