<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@include file="../header.jsp"%>
<div class="container-fluid">
	<div class="row">
		<div class="col-md-1"></div>
		<div class="col-md-2">
			<div class="sidebar" style="text-align: left;">
				<div class="sidetitle">
					<span>마이페이지</span>
				</div>
				<ul>
					<li>
						<a href="/mypage/reservList.do">예약내역</a>
					</li>
					<li>
						<a href="/mypage/dibs.do">찜</a>
					</li>
					<div class="accord">
						<div class="">
							<a href="javascript:void(0)" class="accordion">마일리지</a>
							<div class="panel" style="display: none; margin: 10px 0 0 0; padding-bottom: 10px;">
								<a href="/mypage/mileage.do">내역조회</a>
								<a href="/mypage/mileageGuide.do">사용안내</a>
							</div>
						</div>
					</div>
					<li>
						<a href="/mypage/qnaList.do">1:1 게시판 문의내역</a>
					</li>
					<li>
						<a href="#">자주찾는질문</a>
					</li>
					<!-- /고객센터/자주찾는질문.do -->
					<li>
						<a href="/mypage/review.do">My 상품평</a>
					</li>
					<li>
						<a href="/mypage/mypage.do">개인정보</a>
					</li>
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
										<form method="get" action="privacy_corr.do">
											<div class="msg_wrap bg">
												<span>
													<i class="fa fa-lock fa-5x icon-silver"></i>
												</span>
												<strong class="tit"> <em>${mvo.name }</em> 님의 정보를 안전하게 보호하기 위하여<br>비밀번호를 다시 한번 확인합니다.
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
															<th>아이디</th>
															<td>
																<div class="form_holder">
																	<input type="text" title="아이디" readonly="readonly" class="inpt_text" style="width: 500px;" value="${mvo.id }">
																</div>
															</td>
														</tr>
														<tr>
															<th>비밀번호</th>
															<td>
																<div class="form_holder">
																	<input type="password" title="비밀번호" placeholder="비밀번호를 입력해 주세요." class="inpt_text v-placeholder" name="checkPw" style="width: 500px;">
																</div>
																<p class="error_message" style="display: none;"></p>
															</td>
														</tr>
													</tbody>
												</table>
											</div>
	
											<div class="btn_wrap" style="text-align: center;">
												<button type="submit" class="btn big pink">확인</button>
											</div>
										</form>
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