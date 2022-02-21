package com.js.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.js.domain.MemberVO;
import com.js.domain.OrderVO;
import com.js.domain.TravelerVO;
import com.js.mapper.MemberMapper;

import lombok.AllArgsConstructor;
import lombok.Setter;

@Service
@AllArgsConstructor
public class MemberServiceImpl implements MemberService {
	
	@Setter(onMethod_ = @Autowired)
	private MemberMapper mapper;
	
	@Override
	public int idcheck(String id) {
		return mapper.idcheck(id);
	}
	@Override
	public void insert(MemberVO member) {
		mapper.insert(member);
		mapper.insert_auth(member);
	}
	@Override
	public List<MemberVO> getList() {
		return mapper.getList();
	}
	@Override
	public void delete(String id) {
		mapper.delete(id);
	}
	@Override
	public MemberVO getOne(String id) {
		
		return mapper.getOne(id);
	}
	@Override
	public void Order(OrderVO order) {
		
		mapper.Order(order);
	}
	@Override
	public OrderVO getOrderinfo(String id) {

		return mapper.getOrderinfo(id);
	}
	@Override
	public void Mileageinsert(OrderVO order) {
		
		mapper.Mileageinsert(order);
	}
	@Override
	public void Mileagedelete(OrderVO order) {
		
		mapper.Mileagedelete(order);
	}
	@Override
	public OrderVO getid(String status) {
		
		return mapper.getid(status);
	}
	@Override
	public MemberVO getOneh(String id) {

		return mapper.getOneh(id);
	}
	@Override			
	public void ordersDetailInsert(TravelerVO tvo) {		
		
		mapper.ordersDetailInsert(tvo);	
	}		
	@Override
	public void orderOseqUpdate(String id) {
		
		mapper.orderOseqUpdate(id);
	}

}
