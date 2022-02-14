<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	
	<%@include file="../header.jsp" %>
	<div class="container">
		<div class="row">
			<div class="col-md-10">
				<div class="content">
    				<p class="tit2" style="padding-bottom: 7px;">예약하기</p>
						<form class="form-horizontal" name="frm" method="post" enctype="" action="">
							<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }">
					  		<div class="form-group" style="margin-top: 30px;">
					  	<input type="hidden" name="pname" id="pname" value="${list2.name }">
					    <label for="title" class="ml-4 mr-4 w100 in" style="float:left;">여행기간</label>
					    <div class="col-sm-10">
					      <fmt:parseDate var="startdate" value="${list2.startdate }" pattern="yyyy-MM-dd"/>
					      <input type="text" name="startdate" class="form-control2" style="width:47%" 
					      id="startdate"value="<fmt:formatDate value="${startdate }" pattern="yyyy-MM-dd"/>"> ~ 
					      <fmt:parseDate var="enddate" value="${list2.enddate }" pattern="yyyy-MM-dd"/>
					      <input type="text" name="enddate" class="form-control2" style="width:47%" 
					      id="startdate"value="<fmt:formatDate value="${enddate }" pattern="yyyy-MM-dd"/>">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="content" class="ml-4 mr-4 w100 in" style="float:left;">이용호텔</label>
					    <div class="col-sm-10">
					      <input type="text" name="hotel" class="form-control2" style="width:96%" value="${list2.hotel }">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="content" class="ml-4 mr-4 in" style="float:left;font-size: 15pt;">예약자 정보</label>
					    </div>
					    <div class="" style="margin-bottom: 30px;">
					    <div class="">
					    <label for="content" class="w100" style="float: left;"></label>
					    <label for="content" class="w100" style="float: left;">이름</label>
					    </div>
					    <div class="col-sm-4">
					    <input type="text" name="name" class="form-control2"value="${mlist.name }" id="name" style="margin-bottom: 30px;float: left;">
					    </div>
					    <div class="">
					    <label for="content" class="" style="float: left;"></label>
					    <label for="content" class="w100" style="float: left;">생년월일</label>
					    </div>
					    <div class="col-sm-4">
					    <input type="text" name="birth" class="form-control2"value="${mlist.birth }" id="birth" style="margin-bottom: 30px;float: left;">
					    </div>
					    <div class="" style="margin-bottom: 30px;">
					    <div class="">
					    <label for="content" class="w100" style="float: left;"></label>
					    <label for="content" class="w100" style="float: left;">이메일</label>
					    </div>
					    <div class="col-sm-4">
					    <input type="text" name="email" class="form-control2"value="${mlist.email }" id="email" style="margin-bottom: 30px;float: left;">
					    </div>
					    <div class="">
					    <label for="content" class="" style="float: left;"></label>
					    <label for="content" class="w100" style="float: left;">휴대폰번호</label>
					    </div>
					    <div class="col-sm-4">
					    <input type="text" name="phone" class="form-control2"value="${mlist.phone }" id="phone" style="margin-bottom: 30px;float: left;">
					    </div>
					    <div class="form-group">
					    <label for="content" class="ml-4 mr-4 in" style="float:left;font-size: 15pt;">인원 정보</label>
					    </div>
					    <div class="col-sm-12" style="margin-bottom: 25px;">
					    	<ul>
					    		<li style="font-size: 13pt; padding-bottom: 30px; margin-bottom: 30px; border-bottom: 1px solid #ccc;"><span style="margin-right: 5px;">성인</span><span id="qnt2"></span><span style="margin-left: 5px;">명</span>
									<input type="hidden" name="qnt" id="qnt" value="" readonly>
								</li>	
								<li style="font-size: 13pt; margin-top: 30px;"><span style="margin-right: 5px;font-weight: 600;">결제 금액</span><span class="total2" id="total2"></span><span style="margin-left: 5px;">원</span>
									<input type="hidden" name="total" id="total" value="" readonly>
								</li>	
							</ul>
				 		</div>
				 		<img alt="" src="/resources/images/resnoti.png" style="width: 100%;">
				 		<div class="col-sm-12" style="margin-top: 20px;text-align: center;">
				 		<a href="javascript:history.go(-1)" class = "btn btn-default">취소</a>	
				 		<a href="javascript:void(0)" id="check_module" class = "btn btn-default xxx">예약하기</a>
				 		<input type="hidden" name="id" id=""value="${mlist.id }">
				 		<input type="hidden" name="pcode" id=""value="${list2.pcode }">
					   </div>
					   </div>
					  </div>
					</form>
       			</div>
      		</div>
     	</div>
    </div><!--  -->
	                 
<script>
 	$(function() {
	 	var actionForm = $("#actionForm");
		
		$(".pagination > a").on("click", function(e) {
			e.preventDefault();
			actionForm.find("input[name='pageNum']").val($(this).attr("href"));
			actionForm.submit();
		})
	});
</script>
<script>													
	var acc = document.getElementsByClassName("accordion");												
	var i;												
													
	for (i = 0; i < acc.length; i++) {												
		acc[i].addEventListener("click", function() {											
			/* Toggle between adding and removing the "active" class,										
			to highlight the button that controls the panel */										
			this.classList.toggle("active");										
													
			/* Toggle between hiding and showing the active panel */										
			var panel = this.nextElementSibling;										
			if (panel.style.display === "block") {										
				panel.style.display = "none";									
			} else {										
				panel.style.display = "block";									
			}										
		});											
	}												
</script>
<script type="text/javascript">
 	$.urlParam = function(name){
 	    var results = new RegExp('[\?&]' + name + '=([^&#]*)').exec(window.location.href);
 	    return results[1] || 0;
 	}
 		var qnt = $.urlParam('qnt'); 
 		var total = $.urlParam('total'); 
 		var id = $.urlParam('id'); 
 		console.log(qnt);
 		
		$("#qnt").val(qnt);
		$("#qnt2").text(qnt)
		$("#total").val(total);
		$("#total2").text(total);
		$("#id").val(id);
	 </script>
	 
	 <!-- <script>
				$("#check_module").click(function () {
				var pname = $("#pname").val();
				var total = $("#total").val();
				var name = $("#name").val();
				/* var address = $("#address").val();
				var zip = $("#zip_num").val(); */
				var email = $("#email").val();
				var phone = $("#phone").val();
				var IMP = window.IMP; // 생략가능
				IMP.init('imp65405219');
				IMP.request_pay({
				pg: 'inicis', // version 1.1.0부터 지원.
				pay_method: 'card',
				merchant_uid: 'merchant_' + new Date().getTime(),
				name: pname,
				amount: total,
				buyer_email: email ,
				buyer_name: name,
				buyer_tel: phone,
				/* buyer_addr: address,
				buyer_postcode: zip, */
				m_redirect_url: 'http://localhost:7777/'
				}, function (rsp) {
				console.log(rsp);
				if (rsp.success) {
				var msg = '결제가 완료되었습니다.';
				msg += '고유ID : ' + rsp.imp_uid;
				msg += '상점 거래ID : ' + rsp.merchant_uid;
				msg += '결제 금액 : ' + rsp.paid_amount;
				msg += '카드 승인번호 : ' + rsp.apply_num;
				document.frm.action="/member/orderinsert.do";
				document.frm.submit();
				} else {
				var msg = '결제에 실패하였습니다.';
				msg += '에러내용 : ' + rsp.error_msg;
				alert(msg);
				}
				
				});
				});
				</script> -->
<script type="text/javascript">
$(".xxx").click(function () {
	document.frm.action="/member/orderinsert.do";
	document.frm.submit();
	//location.href = "/member/ordercomplete.do"
})
</script>
    	<%@include file="../footer.jsp" %>