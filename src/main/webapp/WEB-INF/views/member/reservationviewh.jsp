<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@include file="../header.jsp"%>
<div class="container">
	<div class="row">
		<div>
			<h3 style="padding-bottom: 19px; padding-top: 39px; border-bottom: 1px solid;">예약하기</h3>
			<div class="col-md-9">
				<div class="content">

						<style>
							.aaa {width:100%;}
							.aaa th, .aaa td {padding:26px 16px; border-bottom:1px solid #ccc; }
							.aaa input {width:100%; padding:22px 8px; border-radius:2px;}
							.aaa {border-top:2px solid #333;}
							.aaa th {background:#eee; border-right:1px slod #ccc; width: 150px;}
							.aaaTitle {font-size: 20px; margin: 0px 0px 19px 12px;}
							.bbb {width:100%;}
							.bbb th, .bbb td {padding:20px 16px;}
							.bbb input {width:100%; padding:0px 8px;}
							.bbb th {background:#eee; width: 150px;}
							.bbb th, .bbb td {font-size: 12px; background:#eee;}
						</style>
						
						<div class="aaaTitle">${hoteldetail.name}</div>
						<table class="aaa">
							<tr>
								<th>도시</th>
								<td>${hoteldetail.location}</td>
							</tr>
							<tr>
								<th>체크인/체크아웃</th>
								<td>2022.03.28 ~ 2022.03.30 ・ 2박</td>
							</tr>
							<tr>
								<th>객실 정보</th>
								<td>${hoteldetail.title}</td>
							</tr>
						</table>
						
						<div class="aaaTitle" style="margin-top: 73px;">투숙자 정보</div>
						<form class="form-horizontal" name="frm" method="post" enctype="" action="">
						<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }">
						<table class="aaa">
							<tr>
								<th>성명</th>
								<td><input type="text" name="name" class="form-control2" value="${mlist.name }" id="name"></td>
								<th>생년월일</th>
								<td><input type="text" name="birth" class="form-control2" value="${mlist.birth}" id="birth"></td>
							</tr>
							<tr>
								<th>휴대폰 번호</th>
								<td><input type="text" name="phone" class="form-control2" value="${mlist.phone}" id="phone"></td>
								<th>이메일</th>
								<td><input type="text" name="email" class="form-control2" value="${mlist.email}" id="email"></td>
							</tr>
						</table>
						</form>
							
							<div class="" style="margin-bottom: 30px;">

								<img alt="" src="/resources/images/resnoti.png" style="width: 100%; margin: 47px 0px;">
								
							</div>
						</div>
					
				</div>
			</div>
			<!-- col-md-10 end -->
			<div class="col-md-3" style="margin-top: 19px;">
							
				<table class="bbb">
				
				<div class="aaaTitle">결제 정보</div>
				
							<tr style="border-top: 1px solid #ccc;">
								<th>최종 결제 금액</th>
								<td style="font-size: 11px;">성인 2 ・ 아동 0</td>
							</tr>
							<tr>
								<th colspan="2" style="text-align: right;"><span style="font-size: 25px; color: #2196f3;"><fmt:formatNumber value="${hoteldetail.price}" /></span>원<br><span>JS투어 마일리지 349M적립</span></th>
							</tr>
							<tr style="border-top: 1px solid #ccc; border-bottom: 1px solid #ccc;">
								<th>총 상품 금액 </th>
								<td><fmt:formatNumber value="${hoteldetail.price}" />원</td>
							</tr>
						</table>
						
						<div class="col-sm-12" style="margin-top: 44px; text-align: center;">
									<a href="javascript:history.go(-1)" class="btn btn-default">취소</a> <a href="javascript:void(0)" id="check_module" class="btn btn-default xxx">예약하기</a> <input type="hidden" name="id" id="" value="${mlist.id }"> <input type="hidden" name="pcode" id="" value="${list2.pcode }">
								</div>
				
			</div>
		</div>
	</div>
</div>
<!--  -->

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
	$.urlParam = function(name) {
		var results = new RegExp('[\?&]' + name + '=([^&#]*)')
				.exec(window.location.href);
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
	$(".xxx").click(function() {
		document.frm.action = "/member/orderinsert.do";
		document.frm.submit();
		//location.href = "/member/ordercomplete.do"
	})
</script>
<%@include file="../footer.jsp"%>