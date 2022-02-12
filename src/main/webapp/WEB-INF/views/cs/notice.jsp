<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	
	<%@include file="../header.jsp" %>
	<div class="container-fluid">
	<div class="row">
		<div class="col-md-1">
		</div>
		<div class="col-md-2">
            <div class="sidebar" style="text-align:left;">
            <div class="sidetitle"><span>고객센터</span></div>
                     <ul>
                        <li class="nothover" style="margin-top:50px;"><a href="/cs/faq.do">자주하는질문</a></li>
                        <sec:authorize access="isAnonymous()">
                        <li class="nothover"><a href="/member/login">1:1 게시판 문의</a></li>
                        </sec:authorize>
                        <sec:authorize access="isAuthenticated()">
                         <li class="nothover"><a href="/cs/qna.do">1:1 게시판 문의</a></li>
                         </sec:authorize>
                         <li class="nothover"><a href="/cs/notice.do">공지사항</a></li>
                     </ul>
                  </div>
               </div>
               <div class="col-md-8">
               <div class="content">
    			<span class="tit">공지사항</span>
    				<div role="tabpanel" class="category-tab">

                 <!-- Nav tabs -->
                 <ul class="nav nav-tabs n1" role="tablist" id="mytab">
                   <li style="margin-top:40px; width: 25%; text-align: center;" role="presentation" class="active">
                   <a href="#all" aria-controls="all" role="tab" data-toggle="tab">전체</a></li>
                   <li style="margin-top:40px; width: 25%; text-align: center;" role="presentation">
                   <a href="#common" aria-controls="common" role="tab" data-toggle="tab">일반</a></li>
                   <li style="margin-top:40px; width: 25%; text-align: center;" role="presentation">
                   <a href="#service" aria-controls="service" role="tab" data-toggle="tab">서비스</a></li>
                   <li style="margin-top:40px; width: 25%; text-align: center;" role="presentation">
                   <a href="#raffle" aria-controls="raffle" role="tab" data-toggle="tab">당첨자발표</a></li>
                 </ul>
               
                 <!-- Tab panes -->
                 <div class="tab-content">
                   <div role="tabpanel" class="tab-pane active" id="all">
                      <div class="">
                      <div class="thumbnail2">
			    			<table class="table pack_table" style="margin-top: 10px;">
			    				<tr>
			    					<th>번호</th>
			    					<th>구분</th>
			    					<th>제목</th>
			    					<th>등록일</th>
			    				</tr>
			    				<tr>
			    					<td style="line-height:50px;" colspan="4">데이터가 없습니다.</td>
			    				</tr>
			    			</table>
	                      </div>
	                    </div>
	                  </div>
	                  <div role="tabpanel" class="tab-pane" id="common">
                      <div class="">
                      <div class="thumbnail2">
			    			<table class="table pack_table" style="margin-top: 10px;">
			    				<tr>
			    					<th>번호</th>
			    					<th>구분</th>
			    					<th>제목</th>
			    					<th>등록일</th>
			    				</tr>
			    				<tr>
			    					<td style="line-height:50px;" colspan="4">데이터가 없습니다1.</td>
			    				</tr>
			    			</table>
	                      </div>
	                    </div>
	                  </div>
	                  <div role="tabpanel" class="tab-pane" id="service">
                      <div class="">
                      <div class="thumbnail2">
			    			<table class="table pack_table" style="margin-top: 10px;">
			    				<tr>
			    					<th>번호</th>
			    					<th>구분</th>
			    					<th>제목</th>
			    					<th>등록일</th>
			    				</tr>
			    				<tr>
			    					<td style="line-height:50px;" colspan="4">데이터가 없습니다2.</td>
			    				</tr>
			    			</table>
	                      </div>
	                    </div>
	                  </div>
	                  <div role="tabpanel" class="tab-pane" id="raffle">
                      <div class="">
                      <div class="thumbnail2">
			    			<table class="table pack_table" style="margin-top: 10px;">
			    				<tr>
			    					<th>번호</th>
			    					<th>구분</th>
			    					<th>제목</th>
			    					<th>등록일</th>
			    				</tr>
			    				<tr>
			    					<td style="line-height:50px;" colspan="4">데이터가 없습니다3.</td>
			    				</tr>
			    			</table>
	                      </div>
	                    </div>
	                  </div>
	                 </div><!--  -->
	                </div>
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

    	<%@include file="../footer.jsp" %>