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
				<span class="tit" style="display: inline-block; width: 100%; margin-bottom: 0px;">개인정보수정</span>
				<div role="tabpanel" class="tab-pane active" id="corr">
					<div class="">
						<div class="thumbnail2">
							<div role="tabpanel" class="category-tab">
								<div class="panels">
									<div id="tabCon01" class="panel selected">
										<form method="post" action="privacy_change.do">
											<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }" id="token">
											<div class="tbl">
												<div class="text_wrap mid">
													<strong class="tit">기본 정보 입력</strong>
												</div>
												<table class="type2">
													<colgroup>
														<col style="width: 20%;">
														<col>
													</colgroup>
													<tbody>
														<tr>
															<th>이름</th>
															<td>${mvo.name }</td>
														</tr>
														<tr>
															<th>아이디</th>
															<td>
																<div class="txt_holder">
																	<input name="id" value=${mvo.id } readonly="readonly">
																	<!-- <span class="inpt_text">${mvo.id }</span> -->
																	<!-- <a href="#" class="btn">아이디 변경</a> -->
																</div>
																<!---->
																<p class="error_message" style="display: none;"></p>
																<!---->
																<p class="error_message" style="display: none;"></p>
															</td>
														</tr>
														<tr>
															<th>휴대폰번호</th>
															<td>
																<div class="txt_holder">
																	<input type="text" name="phone" value="${mvo.phone }">
																	<!-- <span class="inpt_text">010-****-8706</span>
																	<a href="#" class="btn">수정</a> -->
																</div>
																<!---->
																<p class="error_message" style="display: none;"></p>
																<!---->
																<p class="error_message" style="display: none;"></p>
															</td>
														</tr>
														<tr>
															<th>생년월일/성별</th>
															<td>${mvo.birth }</td>
														</tr>
														<tr>
															<th>이메일</th>
															<td>
																<div class="form_holder">
																	<input type="text" title="이메일" name="email" value ="${mvo.email }" class="inpt_text w300">
																	<!---->
																</div>
																<!---->
																<p class="error_message" style="display: none;"></p>
																<!---->
																<p class="error_message" style="display: none;"></p>
															</td>
														</tr>
													</tbody>
												</table>
											</div>
											<div class="tbl">
												<div class="text_wrap mid">
													<strong class="tit">비밀번호</strong>
												</div>
												<table class="type2">
													<colgroup>
														<col style="width: 20%;">
														<col>
													</colgroup>
													<tbody>
														<tr>
															<th>비밀번호</th>
															<td>
																<div class="form_holder">
																	<!---->
																	<a href="changePw.do" class="btn">비밀번호 변경</a>
																</div>
															</td>
														</tr>
													</tbody>
												</table>
											</div>
											<div class="tbl">
												<div class="text_wrap mid type">
													<strong class="tit">광고정보 수신 동의</strong>
													<span class="right_cont">
														<a href="#" class="btn">약관 자세히 보기</a>
													</span>
												</div>
												<table class="type2">
													<colgroup>
														<col style="width: 20%;">
														<col style="width: 30%;">
														<col style="width: 20%;">
														<col>
													</colgroup>
													<tbody>
														<tr>
															<th>문자메시지(SMS)</th>
															<td>
																<div class="form_wrap">
																	<span class="form_holder radio">
																		<input type="radio" name="radioName" id="radioCheckY" value="Y" class="inpt_radio">
																		<label for="radioName01" class="label_radio">예</label>
																	</span>
																	<span class="form_holder radio">
																		<input type="radio" name="radioName" id="radioCheckN" value="N" class="inpt_radio">
																		<label for="radioName02" class="label_radio">아니오</label>
																	</span>
																</div>
															</td>
															<th style="border-left: 1.5px solid #ddd;">이메일</th>
															<td>
																<div class="form_wrap">
																	<span class="form_holder radio">
																		<input type="radio" name="radioPost" id="radioCheckY" value="Y" class="inpt_radio">
																		<label for="radioPost01" class="label_radio">예</label>
																	</span>
																	<span class="form_holder radio">
																		<input type="radio" name="radioPost" id="radioPost02" value="N" class="inpt_radio">
																		<label for="radioPost02" class="label_radio">아니오</label>
																	</span>
																</div>
															</td>
														</tr>
														<tr>
															<th>우편</th>
															<td>
																<div class="form_wrap">
																	<span class="form_holder radio">
																		<input type="radio" name="radioID" id="radioCheckY" value="Y" class="inpt_radio">
																		<label for="radioID01" class="label_radio">예</label>
																	</span>
																	<span class="form_holder radio">
																		<input type="radio" name="radioID" id="radioID02" value="N" class="inpt_radio">
																		<label for="radioID02" class="label_radio">아니오</label>
																	</span>
																</div>
															</td>
															<th style="border-left: 1.5px solid #ddd;">전화</th>
															<td>
																<div class="form_wrap">
																	<span class="form_holder radio">
																		<input type="radio" name="radioTel" id="radioCheckY" value="Y" class="inpt_radio">
																		<label for="radioTel01" class="label_radio">예</label>
																	</span>
																	<span class="form_holder radio">
																		<input type="radio" name="radioTel" id="radioTel02" value="N" class="inpt_radio">
																		<label for="radioTel02" class="label_radio">아니오</label>
																	</span>
																</div>
															</td>
														</tr>
													</tbody>
												</table>
											</div>
											<div class="btn_wrap">
												<a href="/com/mpg/CHPC0MPG0001M200" class="btn big gray">취소</a>
												<button type="submit" class="btn big pink">확인</button>
											</div>
										</form>
									</div>
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