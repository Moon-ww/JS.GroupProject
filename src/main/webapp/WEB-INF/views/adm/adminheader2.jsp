<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib  prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <%@ taglib  prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

	<!DOCTYPE html>
<html lang="ko">
<head>
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<title>JS Tour</title>
	<meta content='width=device-width, initial-scale=1.0, shrink-to-fit=no' name='viewport' />
	<link rel="icon" href="/resources/c/resources/css/assets/img/icon.ico" type="image/x-icon"/>

	<!-- Fonts and icons -->
	<script src="/resources/css/assets/js/plugin/webfont/webfont.min.js"></script>
	<script>
		WebFont.load({
			google: {"families":["Lato:300,400,700,900"]},
			custom: {"families":["Flaticon", "Font Awesome 5 Solid", "Font Awesome 5 Regular", "Font Awesome 5 Brands", "simple-line-icons"], urls: ['/resources/css/assets/css/fonts.min.css']},
			active: function() {
				sessionStorage.fonts = true;
			}
		});
	</script>
	
	<script src="/resources/js/jquery-3.3.1.min.js"></script>
	<script src="/resources/js/product.js"></script>
	<script src="/resources/js/summernote.min.js"></script>
	<script src="/resources/js/my.js"></script>
	
	<!-- CSS Files -->
	<link rel="stylesheet" href="/resources/css/assets/css/bootstrap.min.css">
	<link rel="stylesheet" href="/resources/css/assets/css/atlantis.css">
	
    <link href="/resources/css/font-awesome.min.css" rel="stylesheet">
    <link href="/resources/css/summernote.min.css" rel="stylesheet">
    <link href="/resources/css/common.css" rel="stylesheet">
    <link href="/resources/css/main.css" rel="stylesheet">
    <link href="/resources/css/sub.css" rel="stylesheet">

	<!-- CSS Just for demo purpose, don't include it in your project -->
	<link rel="stylesheet" href="/resources/css/assets/css/demo.css">
</head>
<body>
	<div class="wrapper">
		<div class="main-header">
			<!-- Logo Header -->
			<div class="logo-header" data-background-color="blue">
				
				<button class="navbar-toggler sidenav-toggler ml-auto" type="button" data-toggle="collapse" data-target="collapse" aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon">
						<i class="icon-menu"></i>
					</span>
				</button>
				<button class="topbar-toggler more"><i class="icon-options-vertical"></i></button>
				<div class="nav-toggle">
					<button class="btn btn-toggle toggle-sidebar">
						<i class="icon-menu"></i>
					</button>
				</div>
			</div>
			<!-- End Logo Header -->

			<!-- Navbar Header -->
			<nav class="navbar navbar-header navbar-expand-lg" data-background-color="blue2">
				
				<div class="container-fluid">
					<div class="collapse" id="search-nav">
					</div>
					<ul class="navbar-nav topbar-nav ml-md-auto align-items-center">
						<li class="nav-item toggle-nav-search hidden-caret">
							<a class="nav-link" data-toggle="collapse" href="#search-nav" role="button" aria-expanded="false" aria-controls="search-nav">
								<i class="fa fa-search"></i>
							</a>
						</li>
						<li class="nav-item dropdown hidden-caret">
							<a class="nav-link" data-toggle="dropdown" href="#" aria-expanded="false">
								<i class="fas fa-layer-group"></i>
							</a>
							<div class="dropdown-menu quick-actions quick-actions-info animated fadeIn">
								<div class="quick-actions-header">
									<span class="title mb-1">Quick Actions</span>
									<span class="subtitle op-8">Shortcuts</span>
								</div>
								<div class="quick-actions-scroll scrollbar-outer">
									<div class="quick-actions-items">
										<div class="row m-0">
											<a class="col-6 col-md-4 p-0" href="/adm/product/productwrite.do">
												<div class="quick-actions-item">
													<i class="flaticon-file-1"></i>
													<span class="text">상품등록</span>
												</div>
											</a>
											<a class="col-6 col-md-4 p-0" href="/adm/hotel/hotelwrite.do">
												<div class="quick-actions-item">
													<i class="flaticon-database"></i>
													<span class="text">호텔등록</span>
												</div>
											</a>
											<a class="col-6 col-md-4 p-0" href="/adm/notice/noticewrite.do">
												<div class="quick-actions-item">
													<i class="flaticon-pen"></i>
													<span class="text">공지사항등록</span>
												</div>
											</a>
											<a class="col-6 col-md-4 p-0" href="/product/productlist.do">
												<div class="quick-actions-item">
													<i class="flaticon-interface-1"></i>
													<span class="text">상품리스트</span>
												</div>
											</a>
											<a class="col-6 col-md-4 p-0" href="/hotel/hotellist.do">
												<div class="quick-actions-item">
													<i class="flaticon-list"></i>
													<span class="text">호텔리스트</span>
												</div>
											</a>
											<a class="col-6 col-md-4 p-0" href="/">
												<div class="quick-actions-item">
													<i class="flaticon-file"></i>
													<span class="text">메인</span>
												</div>
											</a>
										</div>
									</div>
								</div>
							</div>
						</li>
						
					</ul>
				</div>
			</nav>
			<!-- End Navbar -->
		</div>

		<!-- Sidebar -->
		<div class="sidebar sidebar-style-2">			
			<div class="sidebar-wrapper" style="">
				<div class="sidebar-content">
					<div class="user">
						<div class="avatar-sm float-left mr-2">
							<img src="/resources/images/jsjs.png" alt="..." class="avatar-img rounded-circle">
						</div>
						<div class="info">
							<a data-toggle="collapse" href="#collapseExample" aria-expanded="true">
								<span>
									JS Tour
									<span class="user-level">Administrator</span>
								</span>
							</a>
						</div>
					</div>
					

