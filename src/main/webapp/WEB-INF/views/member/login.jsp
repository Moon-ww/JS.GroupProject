<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%@ page import="java.net.URLEncoder" %>
	<%@ page import="java.security.SecureRandom" %>
	<%@ page import="java.math.BigInteger" %>
	<%-- <%@include file="../header.jsp" %> --%>
	
	<!DOCTYPE html>
<html lang="ko">
	<link rel="stylesheet" href="/resources/css/assets/css/style.css">
<head>

	<title>JS Tour</title>
	<!-- HTML5 Shim and Respond.js IE11 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 11]>
		<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
		<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
		<![endif]-->
	<!-- Meta -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<meta name="description" content="" />
	<meta name="keywords" content="">
	<meta name="author" content="Phoenixcoded" />
	<!-- Favicon icon -->
	<!-- <link rel="icon" href="assets/images/favicon.ico" type="image/x-icon"> -->


</head>

<!-- [ auth-signin ] start -->
<div class="auth-wrapper">
	<div class="auth-content">
		<div class="card">
			<div class="row align-items-center text-center">
				<div class="col-md-12">
					<div class="card-body">
						<!-- <img src="assets/images/logo-dark.png" alt="" class="img-fluid mb-4"> -->
						<form class="form-horizontal" name="frm" id="frm" method="post" action="/login">
						<h4 class="mb-3 f-w-400">로그인</h4>
						<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }">
						<div class="form-group mb-3">
							<label class="floating-label" for="userid"></label>
							<input type="text" class="form-control" name="username" id="userid" placeholder="아이디">
						</div>
						<div class="form-group mb-4">
							<label class="floating-label" for="userpwd"></label>
							<input type="password" class="form-control" name="password" id="userpwd" placeholder="비밀번호">
						</div>
						<button class="btn btn-block btn-primary mb-4">로그인</button>
						<a href="/" class="btn btn-block btn-info mb-4" style="color: #fff;">취소</a>
						<p class="mb-2 text-muted">비밀번호를 잊으셨나요? <a href="#" class="f-w-400">비밀번호 찾기</a></p>
						<p class="mb-0 text-muted">아직 회원이 아니세요? <a href="/member/join.do" class="f-w-400">회원가입</a></p>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- [ auth-signin ] end -->

<!-- Required Js -->
<script src="assets/js/vendor-all.min.js"></script>
<script src="assets/js/plugins/bootstrap.min.js"></script>
<script src="assets/js/ripple.js"></script>
<script src="assets/js/pcoded.min.js"></script>



</body>
</html>

<%-- <%@include file="../footer.jsp" %> --%>