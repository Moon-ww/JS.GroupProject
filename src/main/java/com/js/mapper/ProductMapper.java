package com.js.mapper;

import java.util.List;

import com.js.domain.ProductVO;

public interface ProductMapper {

	public void insert(ProductVO product);//상품입력
	public List<ProductVO> getList();//상품리스트
	public ProductVO modifyview(int pseq);//상품수정화면
	public void modify(ProductVO product);//상품수정
	public void delete(int pseq);//상품삭제
	
	public void poptioninsert(ProductVO product);//옵션입력
	public List<ProductVO> getpoptionList(int pseq);//옵션리스트
	public ProductVO poptionmodifyview(String pcode);//옵션수정화면
	public void poptionmodify(ProductVO product);//옵션수정
	public void poptiondelete(String pcode);//옵션삭제
	
	public List<ProductVO> getDetailList();//상품리스트 Detail join
	public List<ProductVO> getDetailList2();//상품리스트 Detail join
	public List<ProductVO> getDetailList3();//상품리스트 Detail join
	
	public List<ProductVO> getDetailView(int pseq);//상품 view Detail join
	public ProductVO getDetailView2(int pseq);//상품 view 최저가 Detail join
	
	public ProductVO productDetailView(String pcode);//뷰디테일
	
	public List<ProductVO> getSearchView(ProductVO product);//상품 검색
	public int getSearchCount(ProductVO product);
	public List<ProductVO> getSearchThema(ProductVO product);//상품 검색
	public int getSearchThemaCount(ProductVO product);
	public List<ProductVO> getTotalSearch(String spot);//전체 검색
	public List<ProductVO> getTotalSearchp_p_price(int price2,int price,String spot);//전체 검색ajax

}
