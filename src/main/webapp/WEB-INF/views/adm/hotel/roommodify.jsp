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
					<form class="form-horizontal" name="frm" method="post" enctype="multipart/form-data" action="/adm/admin_room_modify.do">
					<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }">
						<h2 class="mb-4 f-w-400">객실수정</h2>
					  <div class="form-group">
					    <label for="title" class="col-sm-2 control-label">객실명</label>
					    <div class="col-sm-10">
					      <input type="text" name="title" class="form-control2" style="width:100%" id="title" value="${list.title }">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="options" class="col-sm-2 control-label">옵션</label>
					    <div class="col-sm-10">
					    	<select name="options" id="" style="width:160px;height:40px; text-align:center;">
					    		<option value="2인 조식 포함"<c:if test="${list.options == '2인 조식 포함'}">selected</c:if>>2인 조식 포함</option>
					    		<option value="조식 불포함"<c:if test="${list.options == '조식 불포함'}">selected</c:if>>조식 불포함</option>
					    	</select>
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="price" class="col-sm-2 control-label">가격</label>
					    <div class="col-sm-10">
					      <input type="text" name="price" class="form-control2" style="width:100%" id="price" value="${list.price }">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="content" class="col-sm-2 control-label">상품설명</label>
					    <div class="col-sm-10">
					      <textarea name="content" class="form-control2" style="width:100%" id="summernote">${list.price }</textarea>
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="img" class="ml-4 mr-4"style="float: left;min-width: 70px;">대표이미지</label>
					    <div class="col-sm-10">
					      <input type="file" name="uploadFile2" id="input-file" style="display:none;">
					      <label class="input-file-button btn btn-primary" for="input-file">업로드</label>
					      <input type="text" id="filename" class="form-control2" style="width:80%" value="${list.image }" readonly>
					    </div>
					  </div>
					  <div class="form-group">
					    <div class="col-sm-offset-2 col-sm-10" style="margin:30px 0 50px 420px">
					      <button type="submit" class="btn btn-default" onclick="">객실 등록</button>
					      <button type="button" class="btn btn-default" onclick="go_move()">목록</button>
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
	<script type="text/javascript">
 	$.urlParam = function(name){
 	    var results = new RegExp('[\?&]' + name + '=([^&#]*)').exec(window.location.href);
 	    return results[1] || 0;
 	}
 		var hseq = $.urlParam('hseq'); 
 		console.log(hseq)
		$("#hseq").val(hseq)

	 </script>
</body>
</html>