<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <%@ include file="../adminheader.jsp" %> --%>
<%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib  prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <%@ taglib  prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
     	<!DOCTYPE html>
<html lang="ko">
	<head>
	<title>JS Tour</title>
	<!-- Meta -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<meta name="description" content="" />
	<meta name="keywords" content="">
	<meta name="author" content="Phoenixcoded" />
	
	<link href="/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="/resources/css/font-awesome.min.css" rel="stylesheet">
    <link href="/resources/css/summernote.min.css" rel="stylesheet">
    <link rel="stylesheet" href="/resources/css/assets/css/style.css">
    <link href="/resources/css/common.css" rel="stylesheet">
    <link href="/resources/css/main.css" rel="stylesheet">
    <link href="/resources/css/sub.css" rel="stylesheet">
    
    <script src="/resources/js/jquery-3.3.1.min.js"></script>
    <script src="/resources/js/bootstrap.min.js"></script>
	<script src="/resources/js/product.js"></script>
	<script src="/resources/js/summernote.min.js"></script>
	<script src="/resources/js/my.js"></script>
</head>	
	<!-- [ auth-signin ] start -->
<div class="auth-wrapper">
	<div class="auth-content" style="width: 900px;">
		<div class="card">
			<div class="row align-items-center">
				<div class="col-md-12">
					<div class="card-body">
					<form class="form-horizontal" name="frm" method="post" action="/adm/qna/adminfaqmodify.do">
		               <input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }">
		               <input type="hidden" name="bno" value="${view.bno}">
		                 <div class="form-group">
		                   <div class="col-sm-10">
		                   </div>
		                 </div>
		                 <div class="form-group">
		                   <label for="cate" class="col-sm-2 control-label">분류</label>
		                   <div class="col-sm-10">
		                     <select name='cate'style="height:40px;">
		                       <option value='' style="text-align: center;">-- 선택 --</option>
		                       <option value='air'<c:if test="${view.cate == 'air'}">selected</c:if>>항공권</option>
		                       <option value='hotel'<c:if test="${view.cate == 'hotel'}">selected</c:if>>숙박</option>
		                       <option value='package'<c:if test="${view.cate == 'package'}">selected</c:if>>패키지</option>
		                       <option value='ticket'<c:if test="${view.cate == 'ticket'}">selected</c:if>>입장권</option>
		                       <option value='reserv'<c:if test="${view.cate == 'reserv'}">selected</c:if>>상품예약.결제</option>
		                       <option value='customer'<c:if test="${view.cate == 'costomer'}">selected</c:if>>회원정보</option>
		                       <option value='etc'<c:if test="${view.cate == 'etc'}">selected</c:if>>기타</option>
		                     </select>
		                   </div>
		                 </div>
		                 <div class="form-group">
		                   <label for="que" class="col-sm-2 control-label">자주 묻는 질문</label>
		                   <div class="col-sm-10">
		                     <input name="que" class="form-control2" id="que" style="height:40px;width: 100%;" value="${view.que }"></input>
		                   </div>
		                 </div>
		                 <div class="form-group">
		                   <label for="ans" class="col-sm-2 control-label">답변</label>
		                   <div class="col-sm-10">
		                     <textarea name="ans" class="form-control2" id="ans" style="height:200px;width: 100%;">${view.ans}</textarea>
		                   </div>
		                 </div>
		                 <div class="form-group">
		                   <div class="text-center">
		                     <button type="submit" class="btn btn-default" >수정하기</button>
		                     <button type="button" class="btn btn-default" onclick="javascript:history.back()">목록</button>
		                   </div>
		                 </div>
		               </form>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<script>
	$(function() {
	 	$('#summernote').summernote({
		height: 500,
		fontNames : [ '맑은고딕', 'Arial', 'Arial Black', 'Comic Sans MS', 'Courier New', ],
		fontNamesIgnoreCheck : [ '맑은고딕' ],
		focus: true,

		callbacks: {
		onImageUpload: function(files, editor, welEditable) {
		            for (var i = files.length - 1; i >= 0; i--) {
		             sendFile(files[i], this);
		            }
		        }
		}

		});

		function sendFile(file, el) {
			var form_data = new FormData();
			form_data.append('file', file);
			
			$.ajax({
	         data: form_data,
	         type: "POST",
	         url: 'productimage.do',
	         cache: false,
	         contentType: false,
	         enctype: 'multipart/form-data',
	         processData: false,
	         success: function(img_name) {
	           $(el).summernote('editor.insertImage', img_name);
	         }
	       });
	    }
	});
	</script>
</body>
</html>