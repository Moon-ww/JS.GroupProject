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
    					<p class="tit2" style="padding-bottom: 7px;">자주하는질문</p>
    					<c:forEach items="${list }" var="list">
    						<div class="accord cs_center">
								<p class="accordion" style="">${list.que }</p>							
								<div class="panel" style="display: none; margin: 20px 0 20px 0;padding-bottom: 10px;">
									<p>${list.ans }</p>
								</div>
							</div>
							</c:forEach>
               			</div>
               			<sec:authorize access="isAnonymous()">
               				<a href="/member/login" class="btn btn-default" style="padding: 10.4px 22.4px;margin-top: 10px;float: right;">문의하기</a>
               			</sec:authorize>
               			<sec:authorize access="isAuthenticated()">
               			<a href="/cs/qna.do" class="btn btn-default" style="padding: 10.4px 22.4px;margin-top: 10px;float: right;">문의하기</a>
               			</sec:authorize>
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