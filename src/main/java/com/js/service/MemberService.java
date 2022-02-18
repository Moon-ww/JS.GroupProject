package com.js.service;

import java.util.List;

import com.js.domain.MemberVO;
import com.js.domain.OrderVO;
import com.js.domain.ProductVO;

public interface MemberService {

	public int idcheck(String id);
	public void insert(MemberVO member);
	public List<MemberVO> getList();
	public void delete(String id);
	public MemberVO getOne(String id);
	public void Order(OrderVO order);
	public OrderVO getOrderinfo(String id);
	public void Mileageinsert(OrderVO order);
	public void Mileagedelete(OrderVO order);
	public OrderVO getid(String status);
	public MemberVO getOneh(String id);
}
