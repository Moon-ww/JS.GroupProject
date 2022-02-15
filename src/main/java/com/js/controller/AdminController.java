package com.js.controller;


import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.js.domain.HotelVO;
import com.js.domain.NoticeVO;
import com.js.domain.ProductVO;
import com.js.domain.QnaVO;
import com.js.service.HotelService;
import com.js.service.MemberService;
import com.js.service.NoticeService;
import com.js.service.OrderService;
import com.js.service.ProductService;
import com.js.service.QnaService;
import com.js.service.SalesService;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Setter;
import lombok.extern.log4j.Log4j;
@Data
@Controller
@Log4j
@RequestMapping("/adm/*")
@AllArgsConstructor
public class AdminController {

	@Setter(onMethod_ = @Autowired)
	private ProductService service;
	private HotelService service2;
	private MemberService service3;
	private QnaService service4;
	private NoticeService service5;
	private OrderService service6;
	private SalesService service7;
	
	//로그인
	@GetMapping("/adminlogin")
	public void adminloginform() {
		
	}
	//로그아웃
	@GetMapping("/adminlogout")
	public String adminlogout() {
		
		return "redirect:/";
	}
	
	//관리자페이지 메인 (판매현황)
	@GetMapping("/adminmain")
		public void adminmain() {
			/* model.addAttribute("list", service.getList()); */
	}
	//폴더 생성
		private String getFolder() {
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			Date date = new Date();
			String str = sdf.format(date);
			return str.replace("-", File.separator);
		}
	//상품리스트
	@GetMapping("/product/productlist")
	public void productList(Model model) {
		model.addAttribute("list", service.getList());
	}
	//상품등록화면
	@GetMapping("/product/productwrite")
	public void productwriteform() {
		
	}
	//상품등록
	@PostMapping("/admin_product_write.do")
	public String productwrite(ProductVO product, @RequestParam("uploadFile") MultipartFile upload) {
		String uploadFolder = "c:\\upload";
		
		log.info("file name :"+upload.getOriginalFilename());
		log.info("file size : "+upload.getSize());
		
		
		String uploadFileName = upload.getOriginalFilename();
		
		//Internet explorer
		uploadFileName = uploadFileName.substring(uploadFileName.lastIndexOf("\\")+1);
		
		//duplicate x
		UUID uuid = UUID.randomUUID();
		uploadFileName = uuid.toString() + "_" + uploadFileName;
		
		File uploadPath = new File(uploadFolder, getFolder());
		if(uploadPath.exists() == false) {
			uploadPath.mkdirs();
		}
		File saveFile = new File(uploadPath, uploadFileName);
		String saveurl = saveFile.toString().substring(10);
		
		try {
			upload.transferTo(saveFile);
			product.setImg(saveurl);
			service.insert(product);
		}catch(Exception e) {
			e.printStackTrace();
		}
		return "redirect:/adm/product/productlist.do";
	}
	//상품수정화면
	@GetMapping("/product/productmodify")
	public void productmodifyform(int pseq, Model model) {
		model.addAttribute("list", service.modifyview(pseq));
	}
	//상품수정
	@PostMapping("/admin_product_modify.do")
	public String productmodify(ProductVO product,@RequestParam("uploadFile2") MultipartFile upload2) {
		
		if(upload2.isEmpty()) {
			service.modify(product);
	}else {
		String uploadFolder = "c:\\upload";
		
		log.info("file name :"+upload2.getOriginalFilename());
		log.info("file size : "+upload2.getSize());
		
		
		String uploadFileName = upload2.getOriginalFilename();
		
		//Internet explorer
		uploadFileName = uploadFileName.substring(uploadFileName.lastIndexOf("\\")+1);
		
		//duplicate x
		UUID uuid = UUID.randomUUID();
		uploadFileName = uuid.toString() + "_" + uploadFileName;
		
		File uploadPath = new File(uploadFolder, getFolder());
		if(uploadPath.exists() == false) {
			uploadPath.mkdirs();
		}
		File saveFile = new File(uploadPath, uploadFileName);
		String saveurl = saveFile.toString().substring(10);
		
		try {
			upload2.transferTo(saveFile);
			product.setImg(saveurl);
			service.modify(product);
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
		return "redirect:/adm/product/productlist.do";
	}
	//상품삭제
	@GetMapping("/admin_product_delete.do")
	public String AdminProductDelete(int pseq) {
		service.delete(pseq);
		return "redirect:/adm/product/productlist.do";
	}
	//옵션리스트
	@GetMapping("/product/poptionlist.do")
	public void AdminPoptionList(int pseq, Model model) {
	model.addAttribute("list", service.getpoptionList(pseq));
	}
	//옵션등록 화면
	@GetMapping("/product/poptionwrite")
	public void poptionwriteform() {
		
	}
	//옵션등록
	@PostMapping("/admin_poption_write.do")
	public String poptionwrite(ProductVO product) {
		
		service.poptioninsert(product);
		
		return "redirect:/adm/admin";
	}
	//옵션수정화면
	@GetMapping("/product/poptionmodify")
	public void poptionmodifyform(String pcode, Model model) {
		model.addAttribute("list", service.poptionmodifyview(pcode));
	}
	//옵션수정
	@PostMapping("/admin_poption_modify.do")
	public String poptionmodify(ProductVO product) {
		service.poptionmodify(product);
		return "redirect:/adm/admin_poption_list.do?pseq="+product.getPseq();
	}
	//옵션삭제
	@GetMapping("/admin_poption_delete.do")
	public String AdminpoptionDelete(String pcode) {
		service.poptiondelete(pcode);
		return "redirect:/adm/product/poptionlist.do";
	}
	
	//호텔리스트
	@GetMapping("/hotel/hotellist")
		public void AdminHotelList(Model model) {
		model.addAttribute("list", service2.getList());
	}
	//호텔등록화면
	@GetMapping("/hotel/hotelwrite")
	public void hotelwriteform() {
		
	}
	//호텔등록
	@PostMapping("/admin_hotel_write.do")
	public String hotelwrite(HotelVO hotel, @RequestParam("uploadFile") MultipartFile upload) {
		String uploadFolder = "c:\\upload";
		
		log.info("file name :"+upload.getOriginalFilename());
		log.info("file size : "+upload.getSize());
		
		
		String uploadFileName = upload.getOriginalFilename();
		
		//Internet explorer
		uploadFileName = uploadFileName.substring(uploadFileName.lastIndexOf("\\")+1);
		
		//duplicate x
		UUID uuid = UUID.randomUUID();
		uploadFileName = uuid.toString() + "_" + uploadFileName;
		
		File uploadPath = new File(uploadFolder, getFolder());
		if(uploadPath.exists() == false) {
			uploadPath.mkdirs();
		}
		File saveFile = new File(uploadPath, uploadFileName);
		String saveurl = saveFile.toString().substring(10);
		
		try {
			upload.transferTo(saveFile);
			hotel.setImage(saveurl);
			service2.insert(hotel);
		}catch(Exception e) {
			e.printStackTrace();
		}
		return "redirect:/adm/hotel/hotellist";
	}
	//호텔수정화면
	@GetMapping("/hotel/hotelmodify")
	public void hotelmodifyform(int hseq, Model model) {
		model.addAttribute("list", service2.modifyview(hseq));
	}
	//호텔수정
	@PostMapping("/admin_hotel_modify.do")
	public String hotelmodify(HotelVO hotel,@RequestParam("uploadFile2") MultipartFile upload2) {
		
		if(upload2.isEmpty()) {
			service2.modify(hotel);
	}else {
		String uploadFolder = "c:\\upload";
		
		log.info("file name :"+upload2.getOriginalFilename());
		log.info("file size : "+upload2.getSize());
		
		
		String uploadFileName = upload2.getOriginalFilename();
		
		//Internet explorer
		uploadFileName = uploadFileName.substring(uploadFileName.lastIndexOf("\\")+1);
		
		//duplicate x
		UUID uuid = UUID.randomUUID();
		uploadFileName = uuid.toString() + "_" + uploadFileName;
		
		File uploadPath = new File(uploadFolder, getFolder());
		if(uploadPath.exists() == false) {
			uploadPath.mkdirs();
		}
		File saveFile = new File(uploadPath, uploadFileName);
		String saveurl = saveFile.toString().substring(10);
		
		try {
			upload2.transferTo(saveFile);
			hotel.setImage(saveurl);
			service2.modify(hotel);
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
		return "redirect:/adm/hotel/hotellist";
	}
	//호텔삭제
	@GetMapping("/admin_hotel_delete.do")
	public String AdminHotelDelete(int hseq) {
		service2.delete(hseq);
		return "redirect:/adm/hotel/hotellist.do";
	}
	//객실리스트
	@GetMapping("/hotel/roomlist.do")
	public void AdminRoomList(int hseq, Model model) {
		//System.out.println("번호 : "+hseq);
	model.addAttribute("list", service2.getroomList(hseq));
	}
	//객실등록화면
	@GetMapping("/hotel/roomwrite")
	public void roomwriteform() {
		
	}
	//객실등록
	@PostMapping("/admin_room_write.do")
	public String roomwrite(HotelVO hotel, @RequestParam("uploadFile") MultipartFile upload) {
		String uploadFolder = "c:\\upload";
		
		log.info("file name :"+upload.getOriginalFilename());
		log.info("file size : "+upload.getSize());
		
		
		String uploadFileName = upload.getOriginalFilename();
		
		//Internet explorer
		uploadFileName = uploadFileName.substring(uploadFileName.lastIndexOf("\\")+1);
		
		//duplicate x
		UUID uuid = UUID.randomUUID();
		uploadFileName = uuid.toString() + "_" + uploadFileName;
		
		File uploadPath = new File(uploadFolder, getFolder());
		if(uploadPath.exists() == false) {
			uploadPath.mkdirs();
		}
		File saveFile = new File(uploadPath, uploadFileName);
		String saveurl = saveFile.toString().substring(10);
		
		try {
			upload.transferTo(saveFile);
			hotel.setImage(saveurl);
			service2.roominsert(hotel);
		}catch(Exception e) {
			e.printStackTrace();
		}
		return "redirect:/adm/hotel/hotellist.do";
	}
	//객실수정화면
	@GetMapping("/hotel/roommodify")
	public void roommodifyform(String title, Model model) {
		model.addAttribute("list", service2.roommodifyview(title));
	}
	//객실수정
	@PostMapping("/admin_room_modify.do")
	public String roommodify(HotelVO hotel) {
		service2.roommodify(hotel);
		return "redirect:/adm/admin_room_list.do?hseq="+hotel.getHseq();
	}
	//객실삭제
	@GetMapping("/admin_room_delete.do")
	public String AdminroomDelete(String title) {
		service2.roomdelete(title);
		return "redirect:/adm/hotel/roomlist.do";
	}
	
	//회원리스트
	@GetMapping("/memberlist")
		public void MemberList(Model model) {
		model.addAttribute("list", service3.getList());
	}
	//회원삭제
		@GetMapping("/memberdelete.do")
		public String MemberDelete(String id) {
			service3.delete(id);
			return "redirect:/adm/memberlist.do";
		}
	//질문리스트
	@GetMapping("/qna/adminqnalist")
	public void AdminQnaList(Model model) {
	model.addAttribute("list", service4.getList());
	}
	//질문화면
	@GetMapping("/qna/adminqnaview")
	public void AdminQnaView(int qbno, Model model) {
		service4.viewcount(qbno);
	model.addAttribute("list", service4.qnaview(qbno));
	}
	//답변화면
	@GetMapping("/qna/adminanswerwrite")
	public void AdminAnswerForm(int qbno, Model model) {
	model.addAttribute("list", service4.qnaview(qbno));
	}
	//답변달기
	@PostMapping("/answerwrite.do")
	public String AdminAnswer(QnaVO qna) {
		System.out.println(qna);
	service4.answerwrite(qna);
	service4.status(qna.getQbno());
	return "redirect:/adm/qna/adminqnalist";
	}
	//공지사항 입력화면
	@GetMapping("/notice/noticewrite.do")
	public void AdminNoticeWriteForm() {
		
	}
	//공지사항입력
	@PostMapping("/admin_notice_write.do")
	public String AdminNoticeWrite(NoticeVO notice) {
		service5.insert(notice);
		return "redirect:/adm/notice/adminnotice";
	}
	//공지사항리스트
	@GetMapping("/notice/adminnotice")
	public void AdminNotice(NoticeVO notice, Model model) {
		model.addAttribute("list", service5.getList());
	}
	//공지사항 수정화면
	@GetMapping("/notice/noticemodify.do")
	public void AdminNoticeModifyForm(int nseq, Model model) {
		model.addAttribute("list", service5.modifyview(nseq));
	}
	//공지사항수정
	@PostMapping("/admin_notice_modify.do")
	public String AdminNoticeModify(NoticeVO notice) {
		service5.modify(notice);
		return "redirect:/adm/notice/adminnotice";
	}
	//공지사항삭제
		@GetMapping("/admin_notice_delete.do")
		public String AdminNoticeDelete(int nseq) {
			service5.delete(nseq);
			return "redirect:/adm/notice/adminnotice";
		}
	//매출
	@GetMapping("/sales/sales_status")
	public void AdminSalesList(Model model) {
		/* model.addAttribute("list", service7.getList()); */
	}
	//순이익
	@GetMapping("/sales/sales_status2")
	public void AdminSalesList2(Model model) {
		/* model.addAttribute("list", service7.getList()); */
	}
	//상품별 판매량
	@GetMapping("/sales/sales_status3")
	public void AdminSalesList3(Model model) {
		/* model.addAttribute("list", service7.getList()); */
	}
	
	//예약관리 화면
	@GetMapping("/sales/orderlist")
	public void AdminOrderlist(Model model) {
		model.addAttribute("list", service6.getList());
	}
	//예약관리 화면
	@RequestMapping(value = "/adminordersave.do" , method = RequestMethod.POST)
	public String AdminOrdersave(HttpServletRequest request, Model model) {
		
		String[] StatusArr = request.getParameterValues("status");
		
		for (String status : StatusArr) {
			System.out.println(status);
			service6.ordersave(status);
		}
		
		return "redirect:/adm/sales/orderlist";
	}
}
