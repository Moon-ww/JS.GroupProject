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
					<li>
						<a href="/mypage/mypage.do">개인정보</a>
					</li>
				</ul>
			</div>
		</div>
		<div class="col-md-8">
			<div class="content">
				<span class="tit" style="display: inline-block; width: 100%; margin-bottom: 0px;">회원탈퇴</span>
				<div class="panels">
					<div id="tabCon04" class="panel selected">
						<div class="msg_wrap bg txc">
							<div class="msg_box txl" style="padding-bottom: 45px;">
								<strong class="tit">
									<span>
										<i class="fa fa-2x fa-sign-out icon-silver"></i>
									</span>
									<em>그동안 보내주신 성원에 감사드립니다.</em>
								</strong>
								<div class="list_bul_wrap mt10">
									<ul class="list_bul dash">
										<li>개인정보 취급방침에 의거하여 모든 개인정보가 삭제됩니다</li>
										<li>단, 고객게시판, 후기 등의 게시물은 후에도 유지됩니다.</li>
										<li>게시물 삭제는 고객센터(1577-1233)로 별도 문의가 필요합니다.</li>
									</ul>
								</div>
							</div>
						</div>
						<div class="text_wrap mid">
							<strong class="tit">가입정보</strong>
						</div>
						<div class="tbl">
							<table class="type2">
								<colgroup>
									<col style="width: 15%;">
									<col>
								</colgroup>
								<tbody>
									<tr>
										<th>아이디</th>
										<td>xorwndo@naver.com</td>
									</tr>
									<tr>
										<th>비밀번호</th>
										<td>
											<div class="form_holder">
												<input type="password" title="비밀번호" placeholder="비밀번호를 입력해 주세요." class="inpt_text v-placeholder" style="width: 500px;">
											</div>
										</td>
									</tr>
									<!---->
								</tbody>
							</table>
						</div>
						<div class="cont_unit">
							<div class="text_wrap mid">
								<strong class="tit">탈퇴사유</strong>
							</div>
							<div class="text_box udline">
								<div class="form_wrap">
									<span class="form_holder radio">
										<input type="radio" id="chkDefaultBl01" name="Withdrawal" value="이벤트 등의 목적으로 한시 사용함" class="inpt_radio">
										<label for="chkDefaultBl01" class="label_radio">이벤트 등의 목적으로 한시 사용함</label>
									</span>
									<span class="form_holder radio">
										<input type="radio" id="chkDefaultBl02" name="Withdrawal" value="상품의 품질, 가격 등의 불만" class="inpt_radio">
										<label for="chkDefaultBl02" class="label_radio">상품의 품질, 가격 등의 불만</label>
									</span>
									<span class="form_holder radio">
										<input type="radio" id="chkDefaultBl03" name="Withdrawal" value="문의사항에 대한 불친절한 응대" class="inpt_radio">
										<label for="chkDefaultBl03" class="label_radio">문의사항에 대한 불친절한 응대</label>
									</span>
									<span class="form_holder radio">
										<input type="radio" id="chkDefaultBl04" name="Withdrawal" value="원치않는 상품 및 정보성 이메일" class="inpt_radio">
										<label for="chkDefaultBl04" class="label_radio">원치않는 상품 및 정보성 이메일</label>
									</span>
									<span class="form_holder radio">
										<input type="radio" id="chkDefaultBl05" name="Withdrawal" value="실질적인 혜택이 없음" class="inpt_radio">
										<label for="chkDefaultBl05" class="label_radio">실질적인 혜택이 없음</label>
									</span>
									<span class="form_holder radio">
										<input type="radio" id="chkDefaultBl06" name="Withdrawal" value="개인정보 및 보안우려" class="inpt_radio">
										<label for="chkDefaultBl06" class="label_radio">개인정보 및 보안우려</label>
									</span>
									<span class="form_holder radio">
										<input type="radio" id="chkDefaultBl07" name="Withdrawal" value="기타" class="inpt_radio">
										<label for="chkDefaultBl07" class="label_radio">기타</label>
									</span>
								</div>
							</div>
						</div>
						<div class="cont_unit">
							<div class="text_wrap mid">
								<strong class="tit">하나투어에 바라는 점(선택입력)</strong>
							</div>
							<div class="text_box udline">
								<textarea rows="7" placeholder="바라는 점을 2500자 이내로 입력해 주세요." class="wp100 v-placeholder" style="width: 100%;"></textarea>
							</div>
						</div>
						<div class="cont_unit">
							<div class="text_wrap mid">
								<strong class="tit">유의사항</strong>
							</div>
							<div class="list_bul_wrap">
								<ul class="list_bul dash">
									<li>
										<em>
											탈퇴 90일 후 하나투어마일리지는 모두 소멸됩니다.
											<br>
											그러나 90일 이내에 다시 가입하시는 경우에는 탈퇴 요청일 이전에 적립 받은 하나투어마일리지가 그대로 유지됩니다.
										</em>
									</li>
								</ul>
							</div>
						</div>
						<div class="btn_wrap">
							<a href="/com/mpg/CHPC0MPG0001M200" class="btn big gray">취소</a>
							<a href="memDelete.do" class="btn big pink">회원탈퇴</a>
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