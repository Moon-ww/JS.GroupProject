<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
	<%@ include file="../adminheader2.jsp" %>
		<ul class="nav nav-primary">
				<li class="nav-item">
					<a href="/adm/adminmain.do" id="item">
						<i class="fas fa-chart-bar"></i>
						<p>판매현황</p>
						<span class=""></span>
					</a>
				</li>
				<li class="nav-item active">
					<a href="/adm/product/productlist.do" id="item">
						<i class="fas fa-gift"></i>
						<p>상품관리</p>
						<span class=""></span>
					</a>
				</li>
				<li class="nav-item">
					<a href="/adm/hotel/hotellist.do" id="item">
						<i class="fas fa-building"></i>
						<p>호텔관리</p>
						<span class=""></span>
					</a>
				</li>
				<li class="nav-item">
					<a href="/adm/sales/orderlist.do" id="item">
						<i class="fas fa-passport"></i>
						<p>예약관리</p>
						<span class=""></span>
					</a>
				</li>
				<li class="nav-item">
					<a href="/adm/memberlist.do" id="item">
						<i class="fas fa-user"></i>
						<p>회원관리</p>
						<span class=""></span>
					</a>
				</li>
				<li class="nav-item">
					<a data-toggle="collapse" href="#dashboard" class="collapsed" aria-expanded="false">
						<i class="fas fa-question"></i>
						<p>문의관리</p>
						<span class="caret"></span>
					</a>
					<div class="collapse" id="dashboard">
						<ul class="nav nav-collapse">
							<li>
								<a href="/adm/qna/adminqnalist.do">
									<span class="sub-item">1:1문의</span>
								</a>
							</li>
							<li>
								<a href="/adm/qna/adminfaqlist.do">
									<span class="sub-item">자주찾는질문</span>
								</a>
							</li>
						</ul>
					</div>
				</li>
				<li class="nav-item">
					<a href="/adm/notice/adminnotice.do" id="item">
						<i class="fas fa-bell"></i>
						<p>공지사항</p>
						<span class=""></span>
					</a>
				</li>
				<li class="nav-item">
					<a href="#" onclick="document.getElementById('logout-form').submit();">
						<i class="fas fa-share"></i>
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
								<h2 class="text-white pb-2 fw-bold">상품관리</h2>
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
											    	<th>상품번호</th>
											    	<th>분류</th>
											    	<th>상품명</th>
											    	<th>여행지</th>
											    	<th>관리</th>
											    </tr>
											    <c:choose>
											    	<c:when test="${empty list }">
											    		<tr>
											    			<td colspan="8">데이터가 없습니다</td>
											    		</tr>
											    	</c:when>
											    	<c:otherwise>
											    		<c:forEach items="${list }" var="list">
													    <tr>
													    	<td>${list.pseq }</td>
													    	<td>${list.kind }</td>
													    	<td>${list.name }</td>
													    	<td>${list.spot}</td>
													    	<td><a href="/adm/product/poptionlist.do?pseq=${list.pseq }" class="pbtn btn btn-secondary">옵션</a> <a href="/adm/product/productmodify.do?pseq=${list.pseq }" class="pbtn btn btn-info">수정</a> <a href="/adm/admin_product_delete.do?pseq=${list.pseq }" class="pbtn btn btn-danger">삭제</a></td>
													    	<%-- <td><fmt:parseDate var="startdate" value="${list.startdate }" pattern="yyyy-MM-dd"/>
															<fmt:formatDate value="${startdate }" pattern="yyyy-MM-dd"/> ~ 
															<fmt:parseDate var="enddate" value="${list.enddate }" pattern="yyyy-MM-dd"/>
															<fmt:formatDate value="${enddate }" pattern="yyyy-MM-dd"/>
													    	</td> --%>
													    </tr>
													    </c:forEach>
												    </c:otherwise>
											    </c:choose>
											  </table>
											  <a href="/adm/product/productwrite.do" class="btn btn-default" style="float:right;">상품등록</a>
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
	<!-- <script src="/resources/css/assets/js/plugin/bootstrap-notify/bootstrap-notify.min.js"></script> -->

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