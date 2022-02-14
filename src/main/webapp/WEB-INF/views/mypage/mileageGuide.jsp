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
                         <li><a href="#">자주찾는질문</a></li><!-- /고객센터/자주찾는질문.do -->
                         <li><a href="/mypage/review.do">My 상품평</a></li>
                         <li><a href="/mypage/mypage.do">개인정보</a></li>
                     </ul>
                  </div>
               </div>
               <div class="col-md-8">
               <div class="content">
    			<span class="tit">사용안내</span>
    			<div class="panel panel-default">
				  <div class="panel-body">
					 <div>
					 <img src ="../resources/images/mileage.jpg" alt="mileage">
					 <%=name %>님의 사용 가능한 마일리지는  0 입니다.
					 </div>
				  </div>
				</div>
    			
    				<div role="tabpanel" class="category-tab">
                 <!-- Tab panes -->
                 <div class="tab-content">
                   <div role="tabpanel" class="tab-pane active" id="package">
                      <div class="">
                      <div class="thumbnail2">
                      <div role="tabpanel" class="category-tab">
                 <div class="tab-content">
                 <!--  -->
                 <div role="tabpanel" class="tab-pane active" id="res">
                      <img src ="../resources/images/mileageGuide.jpg" alt="mileageGuide" style="width: 996px;">
                 </div>
                </div>
               </div>
              </div>
             </div>
            </div><!-- 패키지 엔드 -->
                 
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
		           <div class="calandar">
		           		<div class="calandarform pull-right">
		           		<span>예약기간 선택하여 조회 </span> <input type="text" style="border-radius:10px;"/> ~ <input type="text"  style="border-radius:10px;"/>
		           		<br><button type="button" class="btn-d">조회</button>
		           		</div>
		           </div>
                 <div class="tab-content">
                 <!--  -->
                 <div role="tabpanel" class="tab-pane active" id="res3">
                      <div class="">
                      <div class="thumbnail2">
                      <div role="tabpanel" class="category-tab">
                      <span>총 0 건</span><span style="display:inline-block; margin-left:730px;">예약일 최신순</span> <span class="pull-right">출발일 최신순</span>
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
                      <span>총 0 건</span><span style="display:inline-block; margin-left:730px;">예약일 최신순</span> <span class="pull-right">취소일 최신순</span>
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
                </div>
               </div>
              </div>
             </div>
            </div>
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