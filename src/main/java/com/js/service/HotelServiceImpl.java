package com.js.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.js.domain.HotelVO;
import com.js.domain.ProductVO;
import com.js.mapper.HotelMapper;

import lombok.AllArgsConstructor;
import lombok.Setter;
@Service
@AllArgsConstructor
public class HotelServiceImpl implements HotelService {

	@Setter(onMethod_ = @Autowired)
	private HotelMapper mapper;
	
	@Override
	public void insert(HotelVO hotel) {
		
		mapper.insert(hotel);
	}
	@Override
	public List<HotelVO> getList() {
		
		return mapper.getList();
	}
	@Override
	public HotelVO modifyview(int hseq) {
		
		return mapper.modifyview(hseq);
	}
	@Override
	public void modify(HotelVO hotel) {
		
		mapper.modify(hotel);
	}
	@Override
	public void delete(int hseq) {
		
		mapper.delete(hseq);
	}
	@Override
	public void roominsert(HotelVO hotel) {
		
		mapper.roominsert(hotel);
	}
	@Override
	public List<HotelVO> getroomList(int hseq) {
		
		return mapper.getroomList(hseq);
	}
	@Override
	public HotelVO roommodifyview(String title) {
		
		return mapper.roommodifyview(title);
	}
	@Override
	public void roommodify(HotelVO hotel) {
		
		mapper.roommodify(hotel);
	}
	@Override
	public void roomdelete(String title) {
		
		mapper.roomdelete(title);
	}
	@Override
	public List<HotelVO> getDetailList() {

		return mapper.getDetailList();
	}
	@Override
	public List<HotelVO> getDetailList2() {

		return mapper.getDetailList2();
	}
	@Override
	public List<HotelVO> getDetailList3() {

		return mapper.getDetailList3();
	}
	@Override
	public List<HotelVO> getDetailList4() {

		return mapper.getDetailList4();
	}
	@Override
	public List<HotelVO> getDetailView(int hseq) {
		
		return mapper.getDetailView(hseq);
	}
	@Override
	public HotelVO getDetailView2(int hseq) {
		
		return mapper.getDetailView2(hseq);
	}
	@Override
	public List<HotelVO> getSearchView(HotelVO hotel) {
		
		return mapper.getSearchView(hotel);
	}
	@Override
	public HotelVO getDetailViewHotel(int hseq) {
		
		return mapper.getDetailViewHotel(hseq);
	}
	@Override
	public List<HotelVO> getTotalSearch(String spot) {

		return mapper.getTotalSearch(spot);
	}
}
