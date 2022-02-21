package com.js.domain;	
	
import java.util.List;	
	
import lombok.Data;	
	
@Data	
	
public class TravelerVO {	
	
	private String name1;
	private String birth1;
	private String phone1;
	private String email1;
	
	private List<TravelerVO> travelervo;
}	
