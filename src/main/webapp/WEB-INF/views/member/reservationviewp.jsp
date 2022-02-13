<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	
	<%@include file="../header.jsp" %>
	<div class="container">
		<div class="row">
			<div class="col-md-10">
				<div class="content">
    					<p class="tit2" style="padding-bottom: 7px;">예약하기</p>
						<form class="form-horizontal" name="frm" method="post" enctype="" action="/adm/admin_notice_write.do">
					<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }">
					  <div class="form-group" style="margin-top: 30px;">
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
					    <input type="text" name="title" class="form-control2"value="${mlist.name }" style="margin-bottom: 30px;float: left;">
					    </div>
					    <div class="">
					    <label for="content" class="" style="float: left;"></label>
					    <label for="content" class="w100" style="float: left;">생년월일</label>
					    </div>
					    <div class="col-sm-4">
					    <input type="text" name="title" class="form-control2"value="${mlist.birth }" style="margin-bottom: 30px;float: left;">
					    </div>
					    <div class="" style="margin-bottom: 30px;">
					    <div class="">
					    <label for="content" class="w100" style="float: left;"></label>
					    <label for="content" class="w100" style="float: left;">이메일</label>
					    </div>
					    <div class="col-sm-4">
					    <input type="text" name="title" class="form-control2"value="${mlist.email }" style="margin-bottom: 30px;float: left;">
					    </div>
					    <div class="">
					    <label for="content" class="" style="float: left;"></label>
					    <label for="content" class="w100" style="float: left;">휴대폰번호</label>
					    </div>
					    <div class="col-sm-4">
					    <input type="text" name="title" class="form-control2"value="${mlist.phone }" style="margin-bottom: 30px;float: left;">
					    </div>
					    <div class="form-group">
					    <label for="content" class="ml-4 mr-4 in" style="float:left;font-size: 15pt;">인원 정보</label>
					    </div>
					    <div class="col-sm-12" style="margin-bottom: 100px;">
					    	<ul>
					    		<li style="font-size: 13pt;"><span style="margin-right: 5px;">성인</span><span id="qnt2"></span><span style="margin-left: 5px;">명</span>
									<input type="hidden" name="qnt" id="qnt" value="" readonly>
								</li>	
								<li style="font-size: 13pt; margin-top: 30px;"><span style="margin-right: 5px;font-weight: 600;">총 금액</span><span class="total2" id="total2"></span><span style="margin-left: 5px;">원</span>
									<input type="hidden" name="total" id="total" value="" readonly>
								</li>	
							</ul>		
				 		</div>
				 		<div class="col-sm-12" style="margin-top: 20px;text-align: center;">
				 		<a href="javascript:history.go(-1)" class = "btn btn-default">취소</a>	
				 		<a href="/member/reservationviewp.do?pcode=${list.pcode }" class = "btn btn-default">예약하기</a>	
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
 		console.log(qnt);
 		
		$("#qnt").val(qnt);
		$("#qnt2").text(qnt);
		$("#total").val(total);
		$("#total2").text(total)

	 </script>
    	<%@include file="../footer.jsp" %>