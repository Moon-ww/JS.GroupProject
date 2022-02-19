package com.js.mapper;

import java.util.List;

import com.js.domain.HotelVO;
import com.js.domain.ProductVO;

public interface HotelMapper {

	public void insert(HotelVO hotel);//호텔입력
	public List<HotelVO> getList();//호텔리스트
	public HotelVO modifyview(int hseq);//호텔수정화면
	public void modify(HotelVO hotel);//호텔수정
	public void delete(int hseq);//호텔삭제
	
	public void roominsert(HotelVO hotel);//객실입력
	public List<HotelVO> getroomList(int hseq);//객실리스트
	public HotelVO roommodifyview(String title);//객실수정화면
	public void roommodify(HotelVO hotel);//객실수정
	public void roomdelete(String title);//객실삭제
	
	public List<HotelVO> getDetailList();//호텔리스트 객실 join
	public List<HotelVO> getDetailList2();//호텔리스트 객실 join
	public List<HotelVO> getDetailList3();//호텔리스트 객실 join
	public List<HotelVO> getDetailList4();//호텔리스트 객실 join
	
	public List<HotelVO> getDetailView(int hseq);//호텔 view Detail join
	public HotelVO getDetailView2(int hseq);//호텔 view 최저가 Detail join
	public HotelVO getDetailViewHotel(int hseq);//호텔 view Detail join
	
	public List<HotelVO> getSearchView(HotelVO hotel);//호텔 검색
	
	public List<HotelVO> getTotalSearch(String spot);//전체 검색
}
