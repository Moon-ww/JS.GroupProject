package com.js.mapper;

import java.util.List;

import com.js.domain.MemberVO;
import com.js.domain.OrderVO;
import com.js.domain.ProductVO;

public interface MemberMapper {

	public int idcheck(String id);
	public void insert(MemberVO member);
	public int insert_auth(MemberVO member);
	public List<MemberVO> getList();
	public MemberVO getOne(String id);
	public void Order(OrderVO order);
	public OrderVO getOrderinfo(String id);
}
