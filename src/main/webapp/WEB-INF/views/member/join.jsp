<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%@ page import="java.net.URLEncoder" %>
	<%@ page import="java.security.SecureRandom" %>
	<%@ page import="java.math.BigInteger" %>
	<%-- <%@include file="../header.jsp" %> --%>
	
	<!DOCTYPE html>
<html lang="ko">
	
	<script>
	$(document).ready(function(){
		$('#pw, #pwdcheck').on('keyup', function () {
			if ($('#pw').val() !="") {
				if ($('#pw').val() == $('#pwdcheck').val()) {
					
				    $('#message').html('비밀번호 일치').css('color', 'black');
		
				  } else 
		
				    $('#message').html('비밀번호 불일치').css('color', 'red');
			}
	
			});
	});
	</script>  
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
	
	<script src="/resources/js/jquery-3.3.1.min.js"></script>
    <script src="/resources/js/bootstrap.min.js"></script>
    <script src="/resources/js/my.js"></script>
    <script src="/resources/js/member.js"></script>
    <script src="/resources/js/mypage.js"></script>
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	
	<link rel="stylesheet" href="/resources/css/assets/css/style.css">
</head>

<!-- [ auth-signin ] start -->
<div class="auth-wrapper">
	<div class="auth-content" style="width: 700px;">
		<div class="card">
			<div class="row align-items-center text-center">
				<div class="col-md-12">
					<div class="card-body">
						<!-- <img src="assets/images/logo-dark.png" alt="" class="img-fluid mb-4"> -->
						<form class="form-horizontal" name="frm" method="post" action="/member/memberinsert.do">
						<input type="hidden" id="prop" name="prop">
						<h4 class="mb-3 f-w-400">회원가입</h4>
						<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }">
						<div class="form-group mb-3">
							<label class="floating-label" for="userid"></label>
							<input type="text" class="form-control" name="id" id="id" placeholder="아이디">
						</div>
						<div class="form-group mb-4">
							<label class="floating-label" for="userpwd"></label>
							<input type="password" class="form-control" name="pw" id="pw" placeholder="비밀번호">
						</div>
						<div class="form-group mb-4">
							<label class="floating-label" for="userpwd"></label>
							<input type="password" class="form-control" name="pwdcheck" id="pwdcheck" placeholder="비밀번호확인">
						</div>
						<div class="form-group mb-4">
							<label class="floating-label" for="name"></label>
							<input type="text" class="form-control" name="name" id="name" placeholder="이름">
						</div>
						<div class="form-group mb-4">
							<label class="floating-label" for="birth"></label>
							<input type="text" class="form-control" name="birth" id="birth" placeholder="생일">
						</div>
						<div class="form-group">
							<label class="floating-label" for="email"></label>
							<input type="text" class="form-control" name="email" id="email" placeholder="이메일" style="width: 75%;float: left;">
							<input type="button" class="btn btn-primary" name="email" id="btn_email" value="인증번호 받기">
						</div>
						<div class="form-group mb-2">
							<label class="floating-label" for="cn"></label>
							<input type="text" class="form-control" name="cn" id="cn" placeholder="인증번호" style="width: 75%;float: left;">
							<input type="button"  class="btn btn-primary"  id="btn_ok" value="확인" style="width: 127.64px;">
						</div>
						<div class="form-group mb-2">
							<label class="floating-label" for="zip_num"></label>
							<input type="text" class="form-control" name="zip_num" id="member_post" placeholder="우편번호" style="width: 75%;float: left;">
							<input type="button" value="우편번호 찾기" class="btn btn-primary" onclick="findAddr()"/>
							<input type="text"  class="form-control" name="address1" placeholder="지번 또는 도로명 주소"id="member_addr"> <br>
							  <input type="text" class="form-control" name="address2" placeholder="나머지주소">
						</div>
						<div class="form-group mb-4">
							<label class="floating-label" for="phone"></label>
							<input type="text" class="form-control" name="phone" id="phone" placeholder="전화번호">
						</div>
						<button type="submit" class="btn btn-block btn-primary mb-4">회원가입</button>
						<a href="/" class="btn btn-block btn-info mb-4" style="color: #fff;font-weight: 400;">취소</a>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- [ auth-signin ] end -->

<!-- Required Js -->
<!-- <script src="assets/js/vendor-all.min.js"></script>
<script src="assets/js/plugins/bootstrap.min.js"></script>
<script src="assets/js/ripple.js"></script>
<script src="assets/js/pcoded.min.js"></script>
 -->
<script>
	$("#id").blur(function() {
		/* var token = $("meta[name='_csrf']").attr("content");
		var header = $("meta[name='_csrf_header']").attr("content"); */
		var id = $("#id").val();
		$.ajax({
			  type:'get',
			  url:'/member/memberIDcheck.do',
			  data:{"id":id},
			  /* beforeSend : function(xhr){
					xhr.setRequestHeader(header, token);
				}, */
				dataType:'json',
				success:function(data) {
			      //정상 요청, 응답 시 처리 작업
			      if(data != 1) {
			    	  if($("#id").val() != "") {
			    		  $("#idcheck").html("사용가능한 아이디 입니다").css('color', 'black');
			    		  console.log(data)
			    	  }
			      }else {
			    	  if($("#id").val() != "") {
							$("#idcheck").html("사용중이거나 탈퇴한 아이디 입니다").css('color', 'red');
							console.log(data)
							}
				}
			 },
			 error : function(xhr,status,error) {
			      //오류 발생 시 처리
			      alert("통신에러");
			  }
		})//ajax end
	})
		</script>
		
		<script>
			//email 인증
			$("#btn_email").on("click", function() {
				var email = $("#email").val();
				
				if(email=="") {
					alert("이메일 주소를 입력하세요");
					$("#email").focus();
				}else {
					$.ajax({
						type:'get',
						url:"emailsend.do",
						data:{"email":email},
						dataType:"json",
						success:function(data) {
							alert(data.msg);
						},error:function() {
							alert("통신에러");
						}
					})//ajax
				}
			})
			//인증확인
			 $("#btn_ok").on("click",function() {
            var certinumber = $("#cn").val();
            //입력받은 인증번호
            if(certinumber == "") {
               alert("인증번호 입력하세요");
               $("#cn").focus();
            }else{
               $.ajax({
                  type:"get",
                  data:{"cn":certinumber},
                  //mypage.do로 넘겨주는 데이터값
                  url:"cncompare.do",
                  dataType:"json",
                  //서버에서 넘어오는 데이터 형식 JSON {name:"value"}
                  success:function(data) {
                     alert(data.msg);
                     if(data.check == "ok") {
                        //location.href="memberupdate.do"; <= java스크립트방식
                        //$(location).attr("href","memberupdate.do")//get방식
                     }
                  },error:function() {
                     alert("통신에러")
                  }
               })
            }
         })
         
	</script>
<script type="text/javascript">
 	$.urlParam = function(name){
 	    var results = new RegExp('[\?&]' + name + '=([^&#]*)').exec(window.location.href);
 	    return results[1] || 0;
 	}
 		var prop = $.urlParam('prop'); 
 		console.log(prop)
		$("#prop").val(prop)

	 </script>
</body>
</html>

<%-- <%@include file="../footer.jsp" %> --%>