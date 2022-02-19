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
						<span class="tit">1:1 게시판 문의내역</span>
		    			<table class="table pack_table" style="margin-top: 10px;">
		    				<tr>
		    					<th>유형</th>
		    					<th>제목</th>
		    					<th>작성일</th>
		    					<th>답변상태</th>
		    				</tr>
		    				<c:choose>
								<c:when test="${list eq null}">
		    				<tr>
		    					<td style="line-height:50px;" colspan="5">1:1 문의 내역이 없습니다.</td>
		    				</tr>
		    				</c:when>
								<c:otherwise>
								<tr class="items">
									<td>${list.kind }</td>
									<td>${list.title }</td>
									<td><fmt:parseDate var="regdate" value="${list.regdate }" pattern="yy-MM-dd"/>
									<fmt:formatDate value="${regdate }" pattern="yy-MM-dd"/></td>
									<c:if test="${list.status ==0}">
									<td><span class="pbtn btn" style="background: #ccc;">답변대기</span></td>
									</c:if>
									<c:if test="${list.status ==1}">
									<td><span class="pbtn btn btn-primary">답변완료</span></td>
									</c:if>
								</tr>
								<tr class="eee" style="display: none;">
		                      		<td colspan="4" style="text-align: left;padding-left: 50px;">
		                      		<span style="font-size:30px; color:blue; margin-right:50px;">Q</span> ${list.qcontent }
		                      		 <c:if test="${list.acontent ne null}">
		                      		<br><br><br>
		                      		<span style="font-size:30px; color:red; margin-right:50px;">A</span> ${list.acontent }
		                      		</c:if>
		                      		</td>
		                      	</tr>
								  </c:otherwise>
							</c:choose>
		    			</table>
		    			<div>
		    				<a href="/cs/qna.do" class="btn btn-default pull-right">1:1게시판 문의</a>
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
<!-- <script type="text/javascript">  
        $(function(){  
            var article = (".table .show");  
            $(".table .items  td").click(function() {  
                var myArticle =$(this).parents().next("tr");  
                if($(myArticle).hasClass('hide')) {  
                    $(article).removeClass('show').addClass('hide');  
                    $(myArticle).removeClass('hide').addClass('show');  
                }  
                else {  
                    $(myArticle).addClass('hide').removeClass('show');  
                }  
            });  
        });  
    </script>   -->
<script type="text/javascript">

	$(".items").on("click",function() {
		if($(".eee").css("display") == "none"){
			$(".eee").show();
		}else{
			$(".eee").hide();
		}
	})
	
</script>
    	<%@include file="../footer.jsp" %>