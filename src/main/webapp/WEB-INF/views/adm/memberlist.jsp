<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
	<%@ include file="adminheader2.jsp" %>
<ul class="nav nav-primary">
						<li class="nav-item">
							<a href="/adm/adminmain" id="item">
								<i class="fas fa-home"></i>
								<p>판매현황</p>
								<span class=""></span>
							</a>
						</li>
						<li class="nav-item">
							<a href="/adm/product/productlist" id="item">
								<i class="fas fa-home"></i>
								<p>상품관리</p>
								<span class=""></span>
							</a>
						</li>
						<li class="nav-item">
							<a href="/adm/hotel/hotellist" id="item">
								<i class="fas fa-home"></i>
								<p>호텔관리</p>
								<span class=""></span>
							</a>
						</li>
						<li class="nav-item">
							<a href="" id="item">
								<i class="fas fa-home"></i>
								<p>예약관리</p>
								<span class=""></span>
							</a>
						</li>
						<li class="nav-item active">
							<a href="/adm/memberlist" id="item">
								<i class="fas fa-home"></i>
								<p>회원관리</p>
								<span class=""></span>
							</a>
						</li>
						<li class="nav-item">
							<a href="/adm/qna/adminqnalist" id="item">
								<i class="fas fa-home"></i>
								<p>문의관리</p>
								<span class=""></span>
							</a>
						</li>
						<li class="nav-item">
							<a href="/adm/notice/adminnotice" id="item">
								<i class="fas fa-home"></i>
								<p>공지사항</p>
								<span class=""></span>
							</a>
						</li>
						<li class="nav-item">
							<a href="#" onclick="document.getElementById('logout-form').submit();">
								<i class="fas fa-home"></i>
								<form id="logout-form" action='<c:url value='/adm/adminlogout'/>' method="POST">
   								<input name="${_csrf.parameterName}" type="hidden" value="${_csrf.token}"/></form>
								<p>로그아웃</p>
								<span class=""></span>
							</a>
						</li>
						<li class="nav-item">
							<a href="/">
								<i class="fas fa-home"></i>
								<p>홈</p>
								<span class=""></span>
							</a>
						</li>
					</ul>
				</div>
			</div>
		</div>
		<!-- End Sidebar -->
		<div class="main-panel">
			<div class="content">
				<div class="panel-header bg-primary-gradient">
					<div class="page-inner py-5">
						<div class="d-flex align-items-left align-items-md-center flex-column flex-md-row">
							<div>
								<h2 class="text-white pb-2 fw-bold">회원관리</h2>
								<h5 class="text-white op-7 mb-2">JS Tour</h5>
							</div>
						</div>
					</div>
				</div>
				<div class="page-inner mt--5">
					<div class="row mt--2">
					</div>
					
					<div class="row row-card-no-pd">
						<div class="col-md-12">
							<div class="card">
								<div class="card-header">
									<div class="card-head-row card-tools-still-right">
										<h4 class="card-title"></h4>
									</div>
								</div>
								<div class="card-body">
									<div class="row">
										<div class="col-md-12">
											<div class="table-responsive">
												<table class="table">
					    <tr>
					    	<th>회원아이디</th>
					    	<th>회원이름</th>
					    	<th>이메일</th>
					    	<th>주소</th>
					    	<th>전화번호</th>
					    	<th>가입날짜</th>
					    	<th>회원삭제</th>
					    </tr>
					    <c:choose>
					    	<c:when test="${empty list }">
					    		<tr>
					    			<td colspan="6">데이터가 없습니다</td>
					    		</tr>
					    	</c:when>
					    	<c:otherwise>
					    	<form>
					    		<c:forEach items="${list }" var="list">
							    <tr>
							    	<td>${list.id }</td>
							    	<td>${list.name }</td>
							    	<td>${list.email }</td>
							    	<td>${list.address1 } ${list.address2 }</td>
							    	<td>${list.phone }</td>
							    	<td>
							    		<fmt:parseDate var="indate" value="${list.indate}" pattern="yyyy-MM-dd"/>
										<fmt:formatDate value="${indate }" pattern="yyyy-MM-dd"/></td>
							    	<td>
							    	<c:if test="${list.id ne 'admin'}">
							    	<a href="memberdelete.do?id=${list.id }" class="pbtn btn btn-danger">삭제</a>
							    	</c:if>
							    	</td>
							    </tr>
							    </c:forEach>
							   </form>
						    </c:otherwise>
					    </c:choose>
					  </table>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div><!--  -->
				</div>
			</div>
		</div>
		
		<!-- Custom template | don't include it in your project! -->
		<div class="custom-template">
			<div class="title">Settings</div>
			<div class="custom-content">
				<div class="switcher">
					<div class="switch-block">
						<h4>Logo Header</h4>
						<div class="btnSwitch">
							<button type="button" class="changeLogoHeaderColor" data-color="dark"></button>
							<button type="button" class="selected changeLogoHeaderColor" data-color="blue"></button>
							<button type="button" class="changeLogoHeaderColor" data-color="purple"></button>
							<button type="button" class="changeLogoHeaderColor" data-color="light-blue"></button>
							<button type="button" class="changeLogoHeaderColor" data-color="green"></button>
							<button type="button" class="changeLogoHeaderColor" data-color="orange"></button>
							<button type="button" class="changeLogoHeaderColor" data-color="red"></button>
							<button type="button" class="changeLogoHeaderColor" data-color="white"></button>
							<br/>
							<button type="button" class="changeLogoHeaderColor" data-color="dark2"></button>
							<button type="button" class="changeLogoHeaderColor" data-color="blue2"></button>
							<button type="button" class="changeLogoHeaderColor" data-color="purple2"></button>
							<button type="button" class="changeLogoHeaderColor" data-color="light-blue2"></button>
							<button type="button" class="changeLogoHeaderColor" data-color="green2"></button>
							<button type="button" class="changeLogoHeaderColor" data-color="orange2"></button>
							<button type="button" class="changeLogoHeaderColor" data-color="red2"></button>
						</div>
					</div>
					<div class="switch-block">
						<h4>Navbar Header</h4>
						<div class="btnSwitch">
							<button type="button" class="changeTopBarColor" data-color="dark"></button>
							<button type="button" class="changeTopBarColor" data-color="blue"></button>
							<button type="button" class="changeTopBarColor" data-color="purple"></button>
							<button type="button" class="changeTopBarColor" data-color="light-blue"></button>
							<button type="button" class="changeTopBarColor" data-color="green"></button>
							<button type="button" class="changeTopBarColor" data-color="orange"></button>
							<button type="button" class="changeTopBarColor" data-color="red"></button>
							<button type="button" class="changeTopBarColor" data-color="white"></button>
							<br/>
							<button type="button" class="changeTopBarColor" data-color="dark2"></button>
							<button type="button" class="selected changeTopBarColor" data-color="blue2"></button>
							<button type="button" class="changeTopBarColor" data-color="purple2"></button>
							<button type="button" class="changeTopBarColor" data-color="light-blue2"></button>
							<button type="button" class="changeTopBarColor" data-color="green2"></button>
							<button type="button" class="changeTopBarColor" data-color="orange2"></button>
							<button type="button" class="changeTopBarColor" data-color="red2"></button>
						</div>
					</div>
					<div class="switch-block">
						<h4>Sidebar</h4>
						<div class="btnSwitch">
							<button type="button" class="selected changeSideBarColor" data-color="white"></button>
							<button type="button" class="changeSideBarColor" data-color="dark"></button>
							<button type="button" class="changeSideBarColor" data-color="dark2"></button>
						</div>
					</div>
					<div class="switch-block">
						<h4>Background</h4>
						<div class="btnSwitch">
							<button type="button" class="changeBackgroundColor" data-color="bg2"></button>
							<button type="button" class="changeBackgroundColor selected" data-color="bg1"></button>
							<button type="button" class="changeBackgroundColor" data-color="bg3"></button>
							<button type="button" class="changeBackgroundColor" data-color="dark"></button>
						</div>
					</div>
				</div>
			</div>
			<div class="custom-toggle">
				<i class="flaticon-settings"></i>
			</div>
		</div>
		<!-- End Custom template -->
	</div>
	<!--   Core JS Files   -->
	<script src="/resources/css/assets/js/core/jquery.3.2.1.min.js"></script>
	<script src="/resources/css/assets/js/core/popper.min.js"></script>
	<script src="/resources/css/assets/js/core/bootstrap.min.js"></script>

	<!-- jQuery UI -->
	<script src="/resources/css/assets/js/plugin/jquery-ui-1.12.1.custom/jquery-ui.min.js"></script>
	<script src="/resources/css/assets/js/plugin/jquery-ui-touch-punch/jquery.ui.touch-punch.min.js"></script>

	<!-- jQuery Scrollbar -->
	<script src="/resources/css/assets/js/plugin/jquery-scrollbar/jquery.scrollbar.min.js"></script>


	<!-- Chart JS -->
	<script src="/resources/css/assets/js/plugin/chart.js/chart.min.js"></script>

	<!-- jQuery Sparkline -->
	<script src="/resources/css/assets/js/plugin/jquery.sparkline/jquery.sparkline.min.js"></script>

	<!-- Chart Circle -->
	<script src="/resources/css/assets/js/plugin/chart-circle/circles.min.js"></script>

	<!-- Datatables -->
	<script src="/resources/css/assets/js/plugin/datatables/datatables.min.js"></script>

	<!-- Bootstrap Notify -->
	<script src="/resources/css/assets/js/plugin/bootstrap-notify/bootstrap-notify.min.js"></script>

	<!-- jQuery Vector Maps -->
	<script src="/resources/css/assets/js/plugin/jqvmap/jquery.vmap.min.js"></script>
	<script src="/resources/css/assets/js/plugin/jqvmap/maps/jquery.vmap.world.js"></script>

	<!-- Sweet Alert -->
	<script src="/resources/css/assets/js/plugin/sweetalert/sweetalert.min.js"></script>

	<!-- Atlantis JS -->
	<script src="/resources/css/assets/js/atlantis.min.js"></script>

	<!-- Atlantis DEMO methods, don't include it in your project! -->
	<script src="/resources/css/assets/js/setting-demo.js"></script>
	<script src="/resources/css/assets/js/demo.js"></script>
	<script>
		Circles.create({
			id:'circles-1',
			radius:45,
			value:60,
			maxValue:100,
			width:7,
			text: 5,
			colors:['#f1f1f1', '#FF9E27'],
			duration:400,
			wrpClass:'circles-wrp',
			textClass:'circles-text',
			styleWrapper:true,
			styleText:true
		})

		Circles.create({
			id:'circles-2',
			radius:45,
			value:70,
			maxValue:100,
			width:7,
			text: 36,
			colors:['#f1f1f1', '#2BB930'],
			duration:400,
			wrpClass:'circles-wrp',
			textClass:'circles-text',
			styleWrapper:true,
			styleText:true
		})

		Circles.create({
			id:'circles-3',
			radius:45,
			value:40,
			maxValue:100,
			width:7,
			text: 12,
			colors:['#f1f1f1', '#F25961'],
			duration:400,
			wrpClass:'circles-wrp',
			textClass:'circles-text',
			styleWrapper:true,
			styleText:true
		})

		var totalIncomeChart = document.getElementById('totalIncomeChart').getContext('2d');

		var mytotalIncomeChart = new Chart(totalIncomeChart, {
			type: 'bar',
			data: {
				labels: ["S", "M", "T", "W", "T", "F", "S", "S", "M", "T"],
				datasets : [{
					label: "Total Income",
					backgroundColor: '#ff9e27',
					borderColor: 'rgb(23, 125, 255)',
					data: [6, 4, 9, 5, 4, 6, 4, 3, 8, 10],
				}],
			},
			options: {
				responsive: true,
				maintainAspectRatio: false,
				legend: {
					display: false,
				},
				scales: {
					yAxes: [{
						ticks: {
							display: false //this will remove only the label
						},
						gridLines : {
							drawBorder: false,
							display : false
						}
					}],
					xAxes : [ {
						gridLines : {
							drawBorder: false,
							display : false
						}
					}]
				},
			}
		});

		$('#lineChart').sparkline([105,103,123,100,95,105,115], {
			type: 'line',
			height: '70',
			width: '100%',
			lineWidth: '2',
			lineColor: '#ffa534',
			fillColor: 'rgba(255, 165, 52, .14)'
		});
	</script>
</body>
</html>