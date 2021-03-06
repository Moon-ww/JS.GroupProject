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
                         <li><a href="../cs/faq.do">자주찾는질문</a></li>
                         <li><a href="/mypage/mypage.do">개인정보</a></li>
                     </ul>
                  </div>
               </div>
               <div class="col-md-8">
               <div class="content">
    			<span class="tit">찜</span>
    				<div role="tabpanel" class="category-tab">

                 <!-- Nav tabs -->
                 <ul class="nav nav-tabs n1" role="tablist" id="mytab">
                   <li style="margin-top:40px; width: 50%; text-align: center;" role="presentation" class="active" id="rrr"><a href="#package" aria-controls="package" role="tab" data-toggle="tab">패키지</a></li>
                   <li style="margin-top:40px; width: 50%; text-align: center;" role="presentation"><a href="#hotel" aria-controls="hotel" role="tab" data-toggle="tab">호텔/펜션</a></li>
                 </ul>
               
                 <!-- Tab panes -->
                 <div class="tab-content">
                   <div role="tabpanel" class="tab-pane active" id="package">
                      <div class="">
                      <div class="thumbnail2">
                      <div role="tabpanel" class="category-tab">

                 <!-- Nav tabs -->
                 <div style="padding: 20px 0;">
                	<a href="/mypage/dibsdeleteall.do" class="btn btn-default">전체 삭제</a>
                 </div>
                 <div class="tab-content">
                 <!--  -->
                 <div role="tabpanel" class="tab-pane active" id="res">
                      <div class="">
                      <div class="thumbnail2">
                      <div role="tabpanel" class="category-tab">
		    			<table class="table pack_table" style="margin-top: 10px;">
		    				<tr>
		    					<th>상품명</th>
		    					<th>여행날짜</th>
		    					<th>상품금액</th>
		    					<th></th>
		    				</tr>
		    				 <c:choose>
		    				<c:when test="${empty list }">
		    				<tr>
		    					<td style="line-height:50px;" colspan="5">찜에 담긴 상품이 없습니다.</td>
		    				</tr>
		    				</c:when>
		    				<c:otherwise>
		    				<c:forEach items="${list }" var="list">
		    				<tr>
		    					<td><a href="/product/productDetailview.do?pcode=${list.pcode }"> ${list.name }</a></td>
		    						<fmt:parseDate var="startdate" value="${list.startdate }" pattern="yy-MM-dd"/>
								<td><fmt:formatDate value="${startdate }" pattern="yy-MM-dd"/></td>
								<td><fmt:formatNumber value="${list.price2}"/>원</td>
								<td><a href="/mypage/dibsdelete.do?pcode=${list.pcode }" class="btn btn-default">찜해제</a></td>
		    				</tr>
		    				</c:forEach>
		    				</c:otherwise>
		    				</c:choose>
		    			</table>
                      </div>
                    </div>
                  </div>
                 </div>
                </div>
               </div>
              </div>
             </div>
            </div><!-- 패키지 엔드 -->
                 
                  <div role="tabpanel" class="tab-pane" id="hotel">
                      <div class="">
                      <div class="thumbnail2">
                      <div role="tabpanel" class="category-tab">

                 <!-- Nav tabs -->
                 <div style="padding: 20px 0;">
                	<button style="padding: 7px 15px; background: white; border: 1px solid #ccc;">전체 삭제</button>
                 </div>
                 <div class="tab-content">
                 <!--  -->
                 <div role="tabpanel" class="tab-pane active" id="res2">
                      <div class="">
                      <div class="thumbnail2">
                      <div role="tabpanel" class="category-tab">
		    			<table class="table pack_table" style="margin-top: 10px;">
		    				<tr>
		    					<th>상품명</th>
		    				</tr>
		    				<c:choose>
		    				<c:when test="${empty list2 }">
		    				<tr>
		    					<td style="line-height:50px;" colspan="5">찜에 담긴 상품이 없습니다.</td>
		    				</tr>
		    				</c:when>
		    				<c:otherwise>
		    				<c:forEach items="${list2 }" var="list">
		    				<tr>
		    					<td><a href="/hotel/hotelview.do?hseq=${list.hseq }"> ${list.name }</a></td>
		    				</tr>
		    				</c:forEach>
		    				</c:otherwise>
		    				</c:choose>
		    			</table>
                      </div>
                    </div>
                  </div>
                 </div>
                </div>
               </div>
              </div>
             </div>
            </div><!--호텔 엔드  -->
           </div><!--탭 엔드  -->
    		
    		
		</div>
               </div>
               <div class="col-md-1">
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