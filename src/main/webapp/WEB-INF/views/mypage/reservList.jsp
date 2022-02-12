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
                         <!-- <li><a href="javascript:void(0)">마일리지</a>
                         	<div class="dropdown">
							  <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-expanded="true" style="border: 0; padding-left: 15px;">
							    마일리지
							    <span class="caret"></span>
							  </button>
							  <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
							    <li role="presentation"><a role="menuitem" tabindex="-1" href="/mypage/mileage.do">내역조회</a></li>
							    <li role="presentation"><a role="menuitem" tabindex="-1" href="/mypage/mileageGuide.do">사용안내</a></li>
							  </ul>
							</div> 
                         </li>-->
                         <div class="accord">
							<div class="">									
								<a href="javascript:void(0)" class="accordion">마일리지</a>							
								<div class="panel" style="display: none; margin: 10px 0 0 0;padding-bottom: 10px;">
									<a href="/mypage/mileage.do">내역조회</a>
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
		          <li style="margin-top:40px;" role="presentation" class="active"><a href="#res" aria-controls="res" role="tab" data-toggle="tab">예약내역</a></li>
		          <li style="margin-top:40px;" role="presentation"><a href="#cancel" aria-controls="cancel" role="tab" data-toggle="tab">취소내역</a></li>
		           <li style="margin-top:40px;" role="presentation"><a href="#last" aria-controls="last" role="tab" data-toggle="tab">지난내역</a></li>
		           </ul>
		           <div class="calandar">
		           		<div class="calandarform pull-right">
		           		<span>예약기간 선택하여 조회 </span> <input type="text" style="border-radius:10px;"/> ~ <input type="text"  style="border-radius:10px;"/>
		           		<br><button type="button" class="btn-d">조회</button>
		           		</div>
		           </div>
                 <div class="tab-content">
                 <!--  -->
                 <div role="tabpanel" class="tab-pane active" id="res">
                      <div class="">
                      <div class="thumbnail2">
                      <div role="tabpanel" class="category-tab">
                      <span>총 0 건</span><span style="display:inline-block; margin-left:730px;">예약일 최신순</span> <span class="pull-right">출발일 최신순</span>
		    			<table class="table pack_table" style="margin-top: 10px;">
		    				<tr>
		    					<th>예약일/예약코드</th>
		    					<th>상품명</th>
		    					<th>결제금액</th>
		    					<th>출발일/귀국일</th>
		    					<th>여행/예약상태</th>
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
                 <div role="tabpanel" class="tab-pane" id="cancel">
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
		    					<th>출발일/귀국일</th>
		    					<th>취소/환불신청일</th>
		    					<th>취소상태</th>
		    				</tr>
		    				<tr>
		    					<td style="line-height:50px;" colspan="7">취소 내역이 없습니다.</td>
		    				</tr>
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
                      <span>총 0 건</span><span style="display:inline-block; margin-left:730px;">예약일 최신순</span> <span class="pull-right">출발일 최신순</span>
		    			<table class="table pack_table" style="margin-top: 10px;">
		    				<tr>
		    					<th>예약일/예약코드</th>
		    					<th>상품명</th>
		    					<th>결제금액</th>
		    					<th>출발일/귀국일</th>
		    					<th>여행/예약상태</th>
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
		           <div class="calandar">
		           		<div class="calandarform pull-right">
		           		<span>예약기간 선택하여 조회 </span> <input type="text" style="border-radius:10px;"/> ~ <input type="text"  style="border-radius:10px;"/>
		           		<br><button type="button" class="btn-d">조회</button>
		           		</div>
		           </div>
                 <div class="tab-content">
                 <!--  -->
                 <div role="tabpanel" class="tab-pane active" id="res2">
                      <div class="">
                      <div class="thumbnail2">
                      <div role="tabpanel" class="category-tab">
                      <span>총 0 건</span><span style="display:inline-block; margin-left:730px;">예약일 최신순</span> <span class="pull-right">체크인 최신순</span>
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
                      <span>총 0 건</span><span style="display:inline-block; margin-left:730px;">예약일 최신순</span> <span class="pull-right">취소일 최신순</span>
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
                      <span>총 0 건</span><span style="display:inline-block; margin-left:730px;">예약일 최신순</span> <span class="pull-right">체크인 최신순</span>
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
                 <!--  -->
                 <div role="tabpanel" class="tab-pane" id="last3">
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