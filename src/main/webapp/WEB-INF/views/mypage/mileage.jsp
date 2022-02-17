<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	
	<%@include file="../header.jsp" %>
	<div class="container-fluid">
	<div class="row">
		<div class="col-md-1">
		</div>
		<div class="col-md-2">
            <div class="sidebar" style="text-align:left;">
            <div class="sidetitle"><span>마이페이지</span></div>
                     <ul>
                        <li style="margin-top:50px;"><a href="/mypage/reservList.do">예약내역</a></li>
                        <li><a href="/mypage/dibs.do">찜</a></li>
                         <div class="accord">
							<div class="">									
								<a href="javascript:void(0)" class="accordion">마일리지</a>							
								<div class="panel" style="display: none; margin: 20px 0 20px 0;padding-bottom: 10px;">
									<p><a href="/mypage/mileage.do" style="margin-bottom: 30px">내역조회</a></p>
									<a href="/mypage/mileageGuide.do">사용안내</a>
								</div>								
							</div>		
							</div>
                         <li><a href="/mypage/qnaList.do">1:1 게시판 문의내역</a></li>
                         <li><a href="../cs/faq.do">자주찾는질문</a></li><!-- /고객센터/자주찾는질문.do -->
                         <li><a href="/mypage/review.do">My 상품평</a></li>
                         <li><a href="/mypage/mypage.do">개인정보</a></li>
                     </ul>
                  </div>
               </div>
               <div class="col-md-8">
               <div class="content">
    			<span class="tit">내역조회</span>
				    <div  class="col-md-12" style="padding: 10px; margin-bottom: 30px; border: 2px solid #00abff;">
					     <div class="col-md-2">
					     <img src="/resources/images/mileage.jpg" style="width: 120px;">
					     </div>
					     <div class="col-md-10" style="margin-top: 30px;">
					     <span style="font-size: 15pt;">${list.name } 님의 사용 가능한 마일리지는 </span>
					     <span style="font-size: 20pt;color: #00abff;">${list.mileage - list.mileage_used }</span> 입니다.<br>
					     <span>누적 마일리지 ${list.mileage }</span>
					     </div>
				     </div>
    			
                 <div class="tab-content">
		    			<table class="table pack_table" style="margin-top: 10px;">
		    				<tr>
		    					<th>일자</th>
		    					<th>적립 및 사용처</th>
		    					<th>거래구분</th>
		    					<th>마일리지</th>
		    					<th>예약번호</th>
		    					<th>상품코드</th>
		    					<th>비고</th>
		    				</tr>
		    				<tr>
		    					<td style="line-height:50px;" colspan="7">사용 내역이 없습니다.</td>
		    				</tr>
		    			</table>
                      </div>
                     </div>
                   </div> 
                  </div>
                </div>
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
    	<%@include file="../footer.jsp" %>