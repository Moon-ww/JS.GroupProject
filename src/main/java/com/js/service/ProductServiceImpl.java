package com.js.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.js.domain.ProductVO;
import com.js.mapper.ProductMapper;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;
@Service
@AllArgsConstructor
@Log4j
public class ProductServiceImpl implements ProductService {

	@Setter(onMethod_ = @Autowired)
	private ProductMapper mapper;
	
	@Override
	public void insert(ProductVO product) {
		
		mapper.insert(product);
	}
	@Override
	public List<ProductVO> getList() {
		
		return mapper.getList();
	}
	@Override
	public ProductVO modifyview(int pseq) {
		
		return mapper.modifyview(pseq);
	}
	@Override
	public void modify(ProductVO product) {
		
		mapper.modify(product);
	}
	@Override
	public void delete(int pseq) {
		
		mapper.delete(pseq);
	}
	@Override
	public void poptioninsert(ProductVO product) {
		
		mapper.poptioninsert(product);
	}
	@Override
	public List<ProductVO> getpoptionList(int pseq) {
		
		return mapper.getpoptionList(pseq);
	}
	@Override
	public ProductVO poptionmodifyview(String pcode) {
		
		return mapper.poptionmodifyview(pcode);
	}
	@Override
	public void poptionmodify(ProductVO product) {
		
		mapper.poptionmodify(product);
	}
	@Override
	public void poptiondelete(String pcode) {
		
		mapper.poptiondelete(pcode);
	}
	@Override
	public List<ProductVO> getDetailList() {
		
		return mapper.getDetailList();
	}
	@Override
	public List<ProductVO> getDetailList2() {
		
		return mapper.getDetailList2();
	}
	@Override
	public List<ProductVO> getDetailList3() {
		
		return mapper.getDetailList3();
	}
	@Override
	public List<ProductVO> getDetailView(int pseq) {
		
		return mapper.getDetailView(pseq);
	}
	@Override
	public ProductVO getDetailView2(int pseq) {
		
		return mapper.getDetailView2(pseq);
	}
	@Override		
	public ProductVO productDetailView(String pcode) {	
		return mapper.productDetailView(pcode);
	}	
	@Override
	public List<ProductVO> getSearchView(ProductVO product) {
	
		return mapper.getSearchView(product);
	}@Override
	public int getSearchCount(ProductVO product) {
		
		return mapper.getSearchCount(product);
	}
	@Override
	public List<ProductVO> getSearchThema(ProductVO product) {
	
		return mapper.getSearchThema(product);
	}
	@Override
	public int getSearchThemaCount(ProductVO product) {
		
		return mapper.getSearchThemaCount(product);
	}
	@Override
	public List<ProductVO> getTotalSearch(String spot) {
	
		return mapper.getTotalSearch(spot);
	}
	@Override
	public List<ProductVO> getTotalSearchp_p_price(int price2,int price,String spot) {
		
		return mapper.getTotalSearchp_p_price(price2,price,spot);
	}
}
