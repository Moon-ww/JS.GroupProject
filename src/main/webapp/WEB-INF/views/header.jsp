<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
    <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
	<%@ page import="org.springframework.security.core.context.SecurityContextHolder" %>
	<%@ page import="org.springframework.security.core.Authentication" %>
	
	<%
	    Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	    Object principal = auth.getPrincipal();
	 
	    String name = "";
	    if(principal != null) {
	        name = auth.getName();
	    }
	%>

<!DOCTYPE html>
<html lang="ko">
  <head>
  	<meta name="_csrf" content="${_csrf.token}"/>
	<meta name="_csrf_header" content="${_csrf.headerName}"/>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>JS Tour</title>
    
	<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />  
    <link href="/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="/resources/css/font-awesome.min.css" rel="stylesheet">
    <link href="/resources/css/summernote.min.css" rel="stylesheet">
    
    <link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />
    <link href="https://fonts.googleapis.com/css2?family=Gamja+Flower&display=swap" rel="stylesheet">
    <link href="/resources/css/datepicker.css" rel="stylesheet">
    
    <link href="/resources/css/common.css" rel="stylesheet">
    <link href="/resources/css/main.css" rel="stylesheet">
    <link href="/resources/css/sub.css" rel="stylesheet">
    
    <script src="/resources/js/jquery-3.3.1.min.js"></script>
    <script src="/resources/js/bootstrap.min.js"></script>
    <script src="/resources/js/summernote.min.js"></script>
    <script src="/resources/js/my.js"></script>
    <script src="/resources/js/member.js"></script>
    <script src="/resources/js/mypage.js"></script>
    <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
	<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
	<script type="text/javascript" src="https://service.iamport.kr/js/iamport.payment-1.1.5.js"></script>
	<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
	<script src="https://kenwheeler.github.io/slick/slick/slick.js"></script>
	<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
	
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>
   <header id="header">
      <div class="header_middle">
         <div class="container-fluid">
            <div class="row">
            	<div class="col-md-1">
            	</div>
                <div class="col-md-10">
                  <ul class="nav navbar-nav pull-right mylogin">
                  <sec:authorize access="isAnonymous()">
                  <li><a href="/member/login">?????????</a></li>
                  <li><a href="/member/terms.do">????????????</a></li>
                  <li><a href="/cs/faq.do">????????????</a></li>
                  </sec:authorize>
                  <sec:authorize access="isAuthenticated()">
                  <li><a href="#" onclick="document.getElementById('logout-form').submit();">????????????</a></li>
                  <li><a href="/cs/faq.do">????????????</a></li>
                  <sec:authorize access="hasRole('ROLE_ADMIN')">
                  <li><a href="/adm/adminmain.do">?????????</a></li>
                  </sec:authorize>
                  <form id="logout-form" action='<c:url value='/adm/adminlogout'/>' method="POST">
   						<input name="${_csrf.parameterName}" type="hidden" value="${_csrf.token}"/></form>
                  </sec:authorize>
               </ul>
               </div>
               <div class="col-md-1">
            	</div>
            </div>
         </div>
      </div>
            	<!--  -->
          <div class="container-fluid">
            <div class="row">
            	<div class="col-md-1">
            	</div>
               <div class="col-md-2"style="text-align: center;">
               <h1 class="logo"><a href="/"><img src="/resources/images/logo111.png" alt="" style="width:150px; height:85px; margin-top: -50px;"/></a></h1>
            </div>
            <div class="search_box col-md-4">
            <form name="search" id="search" method="get" action="/product/totalSearch.do">
         <%--    <input name="${_csrf.parameterName}" type="hidden" value="${_csrf.token}"/> --%>
            		<div class="searchform">
                        <input type="text" placeholder="???????????? ???????????????" name="spot" id="">
                        <!-- <input type="hidden" name="pageNum" value="1">
						<input type="hidden" name="amount" value="10"> -->
                        <a id="abc"><i class="fa fa-search"></i></a>
                     </div>
                     <!-- swiper???????????? ?????????????????? -->
		<div class="swiper-container swiper2" style="width:150px; height: 26px; position: absolute; top:16px; left: 450px;">
		  <!-- ???????????? ?????? -->
		  <div class="swiper-wrapper sw2">
		  	<a href="#" class="swiper-slide" data-swiper-slide-index="0" style="height: 26px;">?????????</a>
		    <a href="#" class="swiper-slide" data-swiper-slide-index="1" style="height: 26px;">?????????</a>
		    <a href="#" class="swiper-slide" data-swiper-slide-index="2" style="height: 26px;">??????</a>
		    <a href="#" class="swiper-slide" data-swiper-slide-index="3" style="height: 26px;">????????????</a>
		   </div>
		  <!-- ????????? ?????? ?????? -->
		  <!-- <div class="swiper-pagination"></div> -->
		
		  <!-- ?????? ?????? ????????? ?????? ?????? ???????????? -->
		  <!-- <div class="swiper-button-prev"></div>
		  <div class="swiper-button-next"></div> -->
		</div>
                     </form>
                   </div>
                     <div class="col-md-4 mymy">
                     <ul class="nav navbar-nav pull-right">
                     <li class="dropdown">
                         <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><img src="/resources/images/mymenu.png" alt=""/><span class="caret"></span></a>
                         <ul class="dropdown-menu" role="menu" style="width: 190px;padding: 0px;margin: 0px;">
                         <sec:authorize access="isAnonymous()">
                         <li style="padding:10px; background: #c9c9c9;">???????????????<br><span style="color: #007aff"> ????????????</span> ?????? ?????????.</li>
                         <li style="margin:10px;" class="nothover"><a href="/member/login"><span class="log">?????????</span></a></li>
                  		 <li style="margin:10px;" class="nothover"><a href="/member/join.do"><span class="log2">????????????</span></a></li>
                         </sec:authorize>
                         <sec:authorize access="isAuthenticated()">
                         	<li style="padding:10px; background: #c9c9c9;"><span style="color: #007aff"><%=name %></span> ???, ???????????????</li>
							<li style="margin:10px;" class="nothover"><a href="/mypage/reservList.do">????????????</a></li>
							<li style="margin:10px;" class="nothover"><a href="/mypage/dibs.do">???</a></li>
							<li style="margin:10px;" class="nothover"><a href="/mypage/mileage.do">????????????</a></li>
							<li style="margin:10px;" class="nothover"><a href="/mypage/mypage.do">???????????????</a></li>
							<li style="margin:10px;" class="nothover"><a href="/mypage/qnaList.do">1:1 ???????????????</a></li>
							<li style="margin:10px;" class="nothover"><a href="/mypage/mypage.do">??????????????????</a></li>
							</sec:authorize>
                         </ul>
                       </li>
                       <sec:authorize access="isAnonymous()">
                       <li><a href="/member/login"><img src="/resources/images/reservation.png" alt="????????????"/></a></li>
                       <li><a href="/member/login"><img src="/resources/images/zzim.png" alt="???"/></a></li>
                       </sec:authorize>
                       <sec:authorize access="isAuthenticated()">
                       <li><a href="/mypage/reservList.do"><img src="/resources/images/reservation.png" alt="????????????"/></a></li>
                       <li><a href="/mypage/dibs.do"><img src="/resources/images/zzim.png" alt="???"/></a></li>
                       </sec:authorize>
                    	
                  	</ul>
                     </div>
                     <div class="col-md-1">
            		 </div>
                  </div>
                </div>
            
      <div class="header_bottom">
         <div class="container-fluid">
            <div class="row" style="border-top:1px solid #ccc; border-bottom: 1px solid;">
            	<div class="col-md-1">
            	</div>
               <div class="col-md-10 navheight">
                <div class="mainmenu pull-left myleft">
                   <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                     <ul class="nav navbar-nav">
                       <li><a href="/product/productlist.do">??????/???????????? </a></li>
                       <li><a href="/hotel/hotellist.do">??????/??????</a></li>
                     </ul>
                   </div>
                </div>
               </div>
               <div class="col-md-1">
            	</div>
            </div>
         </div>
      </div>
      <script>
      var $dropdown = $(".navbar-nav .dropdown");

      var $dropdownToggle = $(".dropdown-toggle");

      var $dropdownMenu = $(".dropdown-menu");

      var showClass = "show";



      $(window).on("load resize", function() {

        if (this.matchMedia("(min-width: 768px)").matches) {

          $dropdown.hover(

            function() {

              var $this = $(this);

              $this.addClass(showClass);

              $this.find($dropdownToggle).attr("aria-expanded", "true");

              $this.find($dropdownMenu).addClass(showClass);

            },

            function() {

              var $this = $(this);

              $this.removeClass(showClass);

              $this.find($dropdownToggle).attr("aria-expanded", "false");

              $this.find($dropdownMenu).removeClass(showClass);

            }

          );

        } else {

          $dropdown.off("mouseenter mouseleave");

        }

      });

      </script>
      <script>
      	$("#abc").on("click", function(e) {
      		document.search.submit();
      	})
      </script>
      <script type="text/javascript">
	const swiper2 = new Swiper('.swiper2', {
    //?????? ??????
    //?????? ?????? vertical ??????, horizontal ?????? ????????? ????????? ??????
    direction : 'vertical',
    //????????? ???????????? ????????? ??????
    slidesPerView : 1,
    //???????????? ????????? ????????? ??????
    spaceBetween : 1,
    //????????? ?????? true ???????????? false ????????????
    debugger : true,
    //????????? ????????? true ???????????? false ????????????
    mousewheel : false,
    //?????? ?????? true ???????????? false ????????????
    loop : true,
    //????????? ??????????????? ???????????? true ???????????? false ???????????? djqt
    centeredSlides : true,
    // ????????? ???????????? slidesPerView????????? ?????? ?????? ??????
    // effect: 'fade',
    speed : 1000,
    //?????? ????????????
    autoplay : {
        //?????? 1000 ??? 1???
        delay : 3500,
        disableOnInteraction : false,
    },
    //?????????
    pagination : {
        //????????? ??????
        el : '.swiper-pagination',
        //?????? ????????????
        clickable : true,
    },
    //?????????
    navigation : {
        //??????????????? ??????
        nextEl : '.swiper-button-next',
        //??????????????? ??????
        prevEl : '.swiper-button-prev',
    },
});
</script>
 </header>
</body>
  