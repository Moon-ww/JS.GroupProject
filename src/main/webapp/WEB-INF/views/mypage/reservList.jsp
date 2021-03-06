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
    			<span class="tit">예약내역</span>
    				<div role="tabpanel" class="category-tab">

                 <!-- Nav tabs -->
                 <ul class="nav nav-tabs n1" role="tablist" id="mytab">
                   <li style="margin-top:40px; width: 33.33%; text-align: center;" role="presentation" class="active" id="rrr"><a href="#package" aria-controls="package" role="tab" data-toggle="tab">패키지</a></li>
                   <li style="margin-top:40px; width: 33.33%; text-align: center;" role="presentation"><a href="#hotel" aria-controls="hotel" role="tab" data-toggle="tab">호텔/펜션</a></li>
                   <li style="margin-top:40px; width: 33.33%; text-align: center;" role="presentation"><a href="#air" aria-controls="air" role="tab" data-toggle="tab">항공</a></li>
                 </ul>
               
                 <!-- Tab panes -->
                 <div class="tab-content">
                   <div role="tabpanel" class="tab-pane active" id="package">
                      <div class="">
                      <div class="thumbnail2">
                      <div role="tabpanel" class="category-tab">

                 <!-- Nav tabs -->
                 <ul class="nav nav-tabs n2" role="tablist">
		          <li style="margin-top:40px;" role="presentation" class="active nothover"><a href="#res" aria-controls="res" role="tab" data-toggle="tab">예약내역</a></li>
		          <li style="margin-top:40px;" role="presentation" class="nothover"><a href="#cancel" aria-controls="cancel" role="tab" data-toggle="tab">취소내역</a></li>
		           <li style="margin-top:40px;" role="presentation"class="nothover"><a href="#last" aria-controls="last" role="tab" data-toggle="tab">지난내역</a></li>
		           </ul>
		           <div class="calandar" style="height: 60px;">
		           </div>
                 <div class="tab-content">
                 <!--  -->
                 <div role="tabpanel" class="tab-pane active" id="res">
                      <div class="">
                      <div class="thumbnail2">
                      <div role="tabpanel" class="category-tab">
                      <span>총 0 건</span>
		    			<table class="table pack_table" style="margin-top: 10px;">
		    				<tr>
		    					<th>예약일/예약코드</th>
		    					<th>상품명</th>
		    					<th>결제금액</th>
		    					<th>인원</th>
		    					<th>출발일</th>
		    					<th>취소</th>
		    				</tr>
		    				   <c:choose>
								<c:when test="${empty list }">
		    				<tr>
		    					<td style="line-height:50px;" colspan="6">예약 내역이 없습니다.</td>
		    				</tr>
		    					</c:when>
								<c:otherwise>
								<c:forEach items="${list }" var="list">
								<tr>
								<fmt:parseDate var="indate" value="${list.indate }" pattern="yy-MM-dd"/>
								<td><fmt:formatDate value="${indate }" pattern="yy-MM-dd"/>/${list.oseq }</td>
								<td>${list.pname }</td>
								<td>${list.total }</td>
								<td>${list.qnt }</td>
								<fmt:parseDate var="startdate" value="${list.startdate }" pattern="yy-MM-dd"/>
								<td><fmt:formatDate value="${startdate }" pattern="yy-MM-dd"/></td>
								<td><a href="/mypage/ordercancel.do?oseq=${list.oseq }" class="btn btn-default">취소</a></td>
								</tr>
								</c:forEach>
							  </c:otherwise>
							</c:choose>
		    			</table>
                      </div>
                    </div>
                  </div>
                 </div>
                 <!--  -->
                 <div role="tabpanel" class="tab-pane" id="cancel">
                      <div class="">
                      <div class="thumbnail2">
                      <div role="tabpanel" class="category-tab">
                      <span>총 0 건</span>
		    			<table class="table pack_table" style="margin-top: 10px;">
		    				<tr>
		    					<th>예약일/예약코드</th>
		    					<th>상품명</th>
		    					<th>결제금액</th>
		    					<th>인원</th>
		    					<th>출발일</th>
		    					<th>취소상태</th>
		    				</tr>
		    				   <c:choose>
								<c:when test="${empty list2 }">
		    				<tr>
		    					<td style="line-height:50px;" colspan="6">예약 내역이 없습니다.</td>
		    				</tr>
		    					</c:when>
								<c:otherwise>
								<c:forEach items="${list2 }" var="list2">
								<tr>
								<fmt:parseDate var="indate" value="${list2.indate }" pattern="yy-MM-dd"/>
								<td><fmt:formatDate value="${indate }" pattern="yy-MM-dd"/>/${list2.oseq }</td>
								<td>${list2.pname }</td>
								<td>${list2.total }</td>
								<td>${list2.qnt }</td>
								<fmt:parseDate var="startdate" value="${list2.startdate }" pattern="yy-MM-dd"/>
								<td><fmt:formatDate value="${startdate }" pattern="yy-MM-dd"/></td>
								<c:if test="${list2.status == 2 }">
								<td><a href="javascript:void(0)" class="btn btn-info">취소대기</a></td>
								</c:if>
								<c:if test="${list2.status == 3 }">
								<td><a href="javascript:void(0)" class="btn btn-primary">취소완료</a></td>
								</c:if>
								</tr>
								</c:forEach>
							  </c:otherwise>
							</c:choose>
		    			</table>
                      </div>
                    </div>
                  </div>
                 </div>
                 <!--  -->
                 <div role="tabpanel" class="tab-pane" id="last">
                      <div class="">
                      <div class="thumbnail2">
                      <div role="tabpanel" class="category-tab">
                      <span>총 0 건</span>
		    			<table class="table pack_table" style="margin-top: 10px;">
		    				<tr>
		    					<th>예약일/예약코드</th>
		    					<th>상품명</th>
		    					<th>결제금액</th>
		    					<th>출발일/귀국일</th>
		    					<th>상태</th>
		    				<c:choose>
								<c:when test="${empty list3 }">
		    				<tr>
		    					<td style="line-height:50px;" colspan="6">예약 내역이 없습니다.</td>
		    				</tr>
		    					</c:when>
								<c:otherwise>
								<c:forEach items="${list3 }" var="list3">
								<tr>
								<fmt:parseDate var="indate" value="${list3.indate }" pattern="yy-MM-dd"/>
								<td><fmt:formatDate value="${indate }" pattern="yy-MM-dd"/>/${list3.oseq }</td>
								<td>${list3.pname }</td>
								<td>${list3.total }</td>
								<fmt:parseDate var="startdate" value="${list3.startdate }" pattern="yy-MM-dd"/>
								<fmt:parseDate var="startdate" value="${list3.enddate }" pattern="yy-MM-dd"/>
								<td><fmt:formatDate value="${startdate }" pattern="yy-MM-dd"/>
								 / <fmt:formatDate value="${endtdate }" pattern="yy-MM-dd"/> </td>
								<td><a href="javascript:void(0)" class="btn btn-primary">여행완료</a></td>
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
                 <ul class="nav nav-tabs n2" role="tablist">
		          <li style="margin-top:40px;" role="presentation" class="active"><a href="#res2" aria-controls="res2" role="tab" data-toggle="tab">예약내역</a></li>
		          <li style="margin-top:40px;" role="presentation"><a href="#cancel2" aria-controls="cancel2" role="tab" data-toggle="tab">취소내역</a></li>
		           <li style="margin-top:40px;" role="presentation"><a href="#last2" aria-controls="last2" role="tab" data-toggle="tab">지난내역</a></li>
		           </ul>
		           <div class="calandar" style="height: 60px;">
		           </div>
                 <div class="tab-content">
                 <!--  -->
                 <div role="tabpanel" class="tab-pane active" id="res2">
                      <div class="">
                      <div class="thumbnail2">
                      <div role="tabpanel" class="category-tab">
                      <span>총 0 건</span>
		    			<table class="table pack_table" style="margin-top: 10px;">
		    				<tr>
		    					<th>예약일/예약코드</th>
		    					<th>상품명</th>
		    					<th>결제금액</th>
		    					<th>인원</th>
		    					<th>체크인/체크아웃</th>
		    					<th>예약상태</th>
		    				</tr>
		    				<tr>
		    					<td style="line-height:50px;" colspan="6">예약 내역이 없습니다.</td>
		    				</tr>
		    			</table>
                      </div>
                    </div>
                  </div>
                 </div>
                 <!--  -->
                 <div role="tabpanel" class="tab-pane" id="cancel2">
                      <div class="">
                      <div class="thumbnail2">
                      <div role="tabpanel" class="category-tab">
                      <span>총 0 건</span>
		    			<table class="table pack_table" style="margin-top: 10px;">
		    				<tr>
		    					<th>예약일/예약코드</th>
		    					<th>상품명</th>
		    					<th>인원</th>
		    					<th>체크인/체크아웃</th>
		    					<th>취소일</th>
		    					<th>취소상태</th>
		    				</tr>
		    				<tr>
		    					<td style="line-height:50px;" colspan="6">취소 내역이 없습니다.</td>
		    				</tr>
		    			</table>
                      </div>
                    </div>
                  </div>
                 </div>
                 <!--  -->
                 <div role="tabpanel" class="tab-pane" id="last2">
                      <div class="">
                      <div class="thumbnail2">
                      <div role="tabpanel" class="category-tab">
                      <span>총 0 건</span>
		    			<table class="table pack_table" style="margin-top: 10px;">
		    				<tr>
		    					<th>예약일/예약코드</th>
		    					<th>상품명</th>
		    					<th>결제금액</th>
		    					<th>인원</th>
		    					<th>체크인/체크아웃</th>
		    					<th>예약상태</th>
		    				</tr>
		    				<tr>
		    					<td style="line-height:50px;" colspan="6">예약 내역이 없습니다.</td>
		    				</tr>
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
            <div role="tabpanel" class="tab-pane" id="air">
                      <div class="">
                      <div class="thumbnail2">
                      <div role="tabpanel" class="category-tab">

                 <!-- Nav tabs -->
                 <ul class="nav nav-tabs n2" role="tablist">
		          <li style="margin-top:40px;" role="presentation" class="active"><a href="#res3" aria-controls="res3" role="tab" data-toggle="tab">예약내역</a></li>
		          <li style="margin-top:40px;" role="presentation"><a href="#cancel3" aria-controls="cancel3" role="tab" data-toggle="tab">취소내역</a></li>
		           <li style="margin-top:40px;" role="presentation"><a href="#last3" aria-controls="last3" role="tab" data-toggle="tab">지난내역</a></li>
		           </ul>
		           <div class="calandar" style="height: 60px;">
		           </div>
                 <div class="tab-content">
                 <!--  -->
                 <div role="tabpanel" class="tab-pane active" id="res3">
                      <div class="">
                      <div class="thumbnail2">
                      <div role="tabpanel" class="category-tab">
                      <span>총 0 건</span>
		    			<table class="table pack_table" style="margin-top: 10px;">
		    				<tr>
		    					<th>예약일/예약코드</th>
		    					<th>상품명</th>
		    					<th>결제금액</th>
		    					<th>인원</th>
		    					<th>출발일</th>
		    				</tr>
		    				<tr>
		    					<td style="line-height:50px;" colspan="5">예약 내역이 없습니다.</td>
		    				</tr>
		    			</table>
                      </div>
                    </div>
                  </div>
                 </div>
                 <!--  -->
                 <div role="tabpanel" class="tab-pane" id="cancel3">
                      <div class="">
                      <div class="thumbnail2">
                      <div role="tabpanel" class="category-tab">
                      <span>총 0 건</span>
		    			<table class="table pack_table" style="margin-top: 10px;">
		    				<tr>
		    					<th>예약일/예약코드</th>
		    					<th>상품명</th>
		    					<th>결제금액</th>
		    					<th>인원</th>
		    					<th>출발일</th>
		    				</tr>
		    				<tr>
		    					<td style="line-height:50px;" colspan="5">취소 내역이 없습니다.</td>
		    				</tr>
		    			</table>
                      </div>
                    </div>
                  </div>
                 </div>
                 <!--  -->
                 <div role="tabpanel" class="tab-pane" id="last3">
                      <div class="">
                      <div class="thumbnail2">
                      <div role="tabpanel" class="category-tab">
                      <span>총 0 건</span>
		    			<table class="table pack_table" style="margin-top: 10px;">
		    				<tr>
		    					<th>예약일/예약코드</th>
		    					<th>상품명</th>
		    					<th>결제금액</th>
		    					<th>인원</th>
		    					<th>출발일</th>
		    				</tr>
		    				<tr>
		    					<td style="line-height:50px;" colspan="5">예약 내역이 없습니다.</td>
		    				</tr>
		    			</table>
                      </div>
                    </div>
                  </div>
                 </div>
                </div>
               </div>
              </div>
             </div>
            </div><!-- 항공 엔드 -->
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