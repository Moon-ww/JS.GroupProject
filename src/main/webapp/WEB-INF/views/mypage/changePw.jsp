<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@include file="../header.jsp"%>
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
				<span class="tit" style="display: inline-block; width: 100%; margin-bottom: 25px;">개인정보</span>
				<div role="tabpanel" class="tab-pane active" id="corr">
					<div class="">
						<div class="thumbnail2">
							<div role="tabpanel" class="category-tab">

								<!-- Nav tabs -->
								<div class="tab-content">
									<!--  -->
									<div id="tabCon01" class="panel selected">
										<div class="msg_wrap bg">
											<span>
												<i class="fa fa-lock fa-5x icon-silver"></i>
											</span>
											<strong class="tit"> <em>${mvo.name }</em> 님의 정보를 안전하게 보호하기 위해<br>비밀번호를 주기적으로 변경해 주세요.
											</strong>
										</div>
										<div class="tbl">
											<table class="type2" style="width: 100%;">
												<colgroup>
													<col style="width: 25%;">
													<col>
												</colgroup>
												<tbody>
													<tr>
														<th>현재 비밀번호</th>
														<td>
															<div class="form_holder">
																<input type="password" title="비밀번호" placeholder="현재 비밀번호를 입력해 주세요." class="inpt_text v-placeholder" name=checkPw style="width: 500px;">
															</div>
															<p class="error_message" style="display: none;"></p>
														</td>
													</tr>
													<tr>
														<th>신규 비밀번호</th>
														<td>
															<div class="form_holder">
																<input type="password" title="비밀번호" placeholder="새로운 비밀번호를 입력해 주세요." class="inpt_text v-placeholder" name=checkPw style="width: 500px;">
															</div>
															<p class="error_message" style="display: none;"></p>
														</td>
													</tr>
													<tr>
														<th>비밀번호 확인</th>
														<td>
															<div class="form_holder">
																<input type="password" title="비밀번호" placeholder="새로운 비밀번호를 한번더 입력해 주세요." class="inpt_text v-placeholder" name=checkPw style="width: 500px;">
															</div>
															<p class="error_message" style="display: none;"></p>
														</td>
													</tr>
												</tbody>
											</table>
										</div>

										<div class="btn_wrap" style="text-align: center;">
											<a href="/mypage/privacy_corr.do" class="btn big pink">확인</a>
										</div>
									</div>
									<div role="tabpanel" class="tab-pane active" id="res"></div>
								</div>
							</div>
						</div>
					</div>
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
<%@include file="../footer.jsp"%>