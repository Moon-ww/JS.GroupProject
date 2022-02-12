function NumberFormat(won){
	comma = won.value;
	comma = comma.replace(/\D/g,''); //d:숫자를 찾음, D:숫자가 아닌 문자를 찾음
	len = comma.length - 3;
	while(len > 0) {
		comma = comma.substr(0,len) + ','+comma.substr(len);
		len -= 3;
	}
	won.value = comma;
	return won;
}

$(function(){
	var s;
	var c;
	var q;
	
	$("#colors").change(function(){
		c=this.value;
		
	})
	$("#sizes").change(function(){
		s=this.value;
		
		$("#selproduct").append("<li>색상 : "+c+"&nbsp;&nbsp;/&nbsp;&nbsp;사이즈 : "+s+"&nbsp;&nbsp;/&nbsp;&nbsp;수량 : <input style='display: inline; width: 74px; height: 32px;' class='form-control' id='quantity' name='quantity' type='text'></li>");
		$("#selproduct").append("<input type='hidden' name='selsizes' value="+s+">");
		$("#selproduct").append("<input type='hidden' name='selcolors' value="+c+">");
	})
	$("#quantity").change(function(){
		
	
		$("#selproduct").append("<input type='hidden' name='quantity' value="+q+">");
		})
})


function go_input_save(){
	
	var theForm = document.frm;
	
	if(!theForm.pid.value){
		alert("상품ID 입력");
		theForm.pid.focus();
	}else if(!theForm.pname.value){
		alert("상품명 입력")
		theForm.pname.focus();
	}else if(!theForm.colors.value){
		alert("색상 선택")
		theForm.colors.focus();
	}else if(!theForm.sizes.value){
		alert("사이즈 선택")
	}else if(!theForm.acost.value){
		alert("원가 입력")
		theForm.acost.focus();
	}else if(!theForm.scost.value){
		alert("판매가 입력")
		theForm.scost.focus();
	}else if(!theForm.ipdate.value){
		alert("입고날짜 선택")
		theForm.ipdate.focus();
	}else{
		theForm.encoding = "multipart/form-data";
		theForm.acost.value = removeComma(theForm.acost);
		theForm.scost.value = removeComma(theForm.scost);
		theForm.margin.value = removeComma(theForm.margin);
		alert("상품등록 완료")		
		theForm.action = "admin_input_insert.do";
		theForm.submit();
	}
}

function go_output_save(){
	
	var theForm = document.frm;
	
	if(!theForm.pid.value){
		alert("상품ID 입력");
		theForm.pid.focus();
	}else if(!theForm.pcode.value){
		alert("상품코드 입력")
		theForm.pcode.focus();
	}else if(!theForm.pname.value){
		alert("상품명 입력")
		theForm.pname.focus();
	}else if(!theForm.colors.value){
		alert("색상 선택")
		theForm.colors.focus();
	}else if(!theForm.sizes.value){
		alert("사이즈 선택")
	}else if(!theForm.acost.value){
		alert("원가 입력")
		theForm.acost.focus();
	}else if(!theForm.scost.value){
		alert("판매가 입력")
		theForm.scost.focus();
	}else if(!theForm.ipdate.value){
		alert("입고날짜 선택")
		theForm.ipdate.focus();
	}else if(!theForm.pcnt.value){
		alert("수량 입력")
		theForm.pcnt.focus();
	}else{
		theForm.encoding = "multipart/form-data";
		theForm.acost.value = removeComma(theForm.acost);
		theForm.scost.value = removeComma(theForm.scost);
		theForm.margin.value = removeComma(theForm.margin);
		alert("상품등록 완료")		
		theForm.action = "admin_output_insert.do";
		theForm.submit();
	}
}

function removeComma(input){ //,을 빼고 값을 다시 넣어준다
		return input.value.replace(/,/gi,"");
		// g : 발생할 모든 패턴에 대한 전역 검색
		// i : 대소문자 구분 안함
	}
	
function go_mov(){
		var theForm = document.frm; 
		theForm.action = "admin_product_list.do";
		theForm.submit();
	}
	
function go_input_mov(){
		var theForm = document.frm; 
		theForm.action = "input.do";
		theForm.submit();
	}
	
function go_output_mov(){
		var theForm = document.frm; 
		theForm.action = "output.do";
		theForm.submit();
	}
	
function go_write(){
		location.href="admin_product_write_form.do";
	}
	

	
//k

function go_ab(){
	var theForm = document.frm;
	var a = theForm.price2.value.replace(/,/g,"");
	var b = theForm.price1.value.replace(/,/g,"");
	var ab = parseInt(a) - parseInt(b);
	theForm.price3.value = ab;
}



function go_search(){
	document.frm.action="admin_order_list.do";
	document.frm.submit();
}

