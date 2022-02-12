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
                         <li class="nothover"><a href="/cs/qna.do">1:1 게시판 문의</a></li>
                         <li class="nothover"><a href="/cs/notice.do">공지사항</a></li>
                     </ul>
                  </div>
               </div>
               <div class="col-md-8">
               		<div class="content">
    					<p class="tit2" style="padding-bottom: 7px;">1:1 게시판 문의</p>
    						<p style="margin: 10px 0 20px 0;">문의하시기 전 확인해 주세요.<br>
								고객님의 소중한 의견을 빠르고 정확하게 해결하기 위해 최선을 다하겠습니다.<br>
								예약한 상품에 대한 문의는 예약 대리점을 통해 문의해 주세요.<br>
								예약한 상품의 취소는 예약 대리점을 통해 문의해 주세요. (취소 시 위약금 발생)<br>
								문의에 대한 답변은 [마이메뉴>마이페이지>1:1 게시판 문의내역] 에서 확인할 수 있습니다.</p>
						<form class="form-horizontal" name="frm" method="post"
						 enctype="" style="border-top: 1px solid #111;margin:0;" 
						 action="/adm/admin_notice_write.do">
							<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }">
							
							  <div class="form-group qnaform" style="margin:0;">
							    <label for="kind" class="ml-4 mr-4 w100" style="float:left;">문의유형</label>
							    <div class=""style="float: left;margin-left: 20px;">
							    	<select name="kind" id="" style="width:100px;height:34px; text-align:center;">
							    		<option value="일반">일반</option>
							    		<option value="서비스">서비스</option>
							    		<option value="당첨자발표">당첨자발표</option>
							    	</select>
							    </div>
							  </div> 
							  <div class="form-group qnaform" style="margin:0;">
							    <label for="title" class="ml-4 mr-4 w100" style="float:left;">작성자</label>
							    <div class="col-sm-10">
							      
							    </div>
							  </div>
							  <div class="form-group qnaform" style="margin:0;">
							    <label for="title" class="ml-4 mr-4 w100" style="float:left;">예약코드</label>
							    <div class="col-sm-10">
							      <input type="text" name="title" class="form-control2" style="width:100%" id="title">
							    </div>
							  </div>
							  <div class="form-group qnaform" style="margin:0;">
							    <label for="title" class="ml-4 mr-4 w100" style="float:left;">제목</label>
							    <div class="col-sm-10">
							      <input type="text" name="title" class="form-control2" style="width:100%" id="title">
							    </div>
							  </div>
							  <div class="form-group qnaform" style="margin:0;">
							    <label for="content" class="ml-4 mr-4 w100" style="float:left;">문의내용</label>
							    <div class="col-sm-10">
							      <textarea name="content" class="form-control2" style="width:100%;height: 140px;" id=""></textarea>
							    </div>
							  </div>
							  <div class="form-group qnaform" style="margin:0;">
							    <div class="text-center">
							      <button type="submit" class="btn btn-default" onclick="">등록</button>
							      <button type="button" class="btn btn-default" onclick="javascript:history.go(-1)">취소</button>
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

    	<%@include file="../footer.jsp" %>