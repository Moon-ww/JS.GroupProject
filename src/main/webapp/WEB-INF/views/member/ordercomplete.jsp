<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
	<%@ page import="java.net.URLEncoder" %>
	<%@ page import="java.security.SecureRandom" %>
	<%@ page import="java.math.BigInteger" %>
	<%-- <%@include file="../header.jsp" %> --%>
	
	<!DOCTYPE html>
<html lang="ko">
	<link rel="stylesheet" href="/resources/css/assets/css/style.css">
	<link rel="stylesheet" href="/resources/css/main.css">
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
	<div class="auth-content"style="width: 800px;">
		<div class="card">
			<div class="row align-items-center">
				<div class="col-md-12">
					<div class="card-body">
    				<h2 style="padding-left:30px">결제가 완료 되었습니다</h2><br><br>
			    		<div style="padding-left:40px">
				    		<h4>주문 정보</h4><br>
				    		<span>예약코드 : </span><span>${list.oseq }</span><br><br>
				    		<span>상품명 : </span><span>${list.pname }</span>
				    		<br><br>
				    		<span>인원 : </span><span>성인 ${list.qnt } 명</span><br><br>
    		
				    		<h4>주문자 정보</h4><br>
				    		<span>주문자명 : </span><span>${list.name }</span><br><br>
				    		<span>결제금액 : </span><span><fmt:formatNumber value="${list.total }" type="currency"/></span><br><br>
				    		<!-- <span>결제방법 : </span><span>카드</span><br><br> -->
				    		</div>
				    			<div style="position:absolute; bottom:10px;right:10px">
				    				<input type="button" class="btn btn-default mr-4" value="메인으로" onclick="location.href='/'" />
    							</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
