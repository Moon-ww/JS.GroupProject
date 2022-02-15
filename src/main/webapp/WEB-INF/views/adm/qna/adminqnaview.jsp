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
	<div class="auth-content" style="width: 700px;">
		<div class="card">
			<div class="row align-items-center">
				<div class="col-md-12">
					<div class="card-body">
					<form class="form-horizontal" name="frm">
						<h2 class="mb-4 f-w-400">문의 내용보기</h2>
					  <div class="form-group">
					   <input type="hidden" name="qbno" class="form-control2" id="qbno" value="${list.qbno }">
					  </div>
					  <div class="form-group">
					    <label for="writer" class="col-sm-2 control-label">글쓴이</label>
					    <div class="col-sm-10">
					      <input type="text" name="writer" class="form-control2" style="width: 100%;" 
					      id="writer" value="${list.writer }">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="title" class="col-sm-2 control-label">제목</label>
					    <div class="col-sm-10">
					      <input type="text" name="title" class="form-control2" style="width: 100%;" 
					      id="title" value="${list.title }">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="qcontent" class="col-sm-2 control-label">질문 내용</label>
					    <div class="col-sm-10">
					     <textarea name="qcontent" class="form-control2" style="width: 100%;height:150px;" 
					     id="qcontent" readonly>${list.qcontent }</textarea>
					    </div>
					  </div>
					  <c:if test="${list.acontent ne null}">
					  <div class="form-group">
					    <label for="acontent" class="col-sm-2 control-label">답변내용</label>
					    <div class="col-sm-10">
					      <textarea name="acontent" class="form-control2" style="width: 100%;
					      height:180px;" id="acontent">${list.acontent }</textarea>
					    </div>
					  </div>
					   </c:if>
					  <div class="form-group">
					    <div class="text-center">
					    <c:if test="${list.acontent eq null}">
					      <button type="button" class="btn btn-default" 
					      onclick="window.location='/adm/qna/adminanswerwrite.do?qbno=${list.qbno }'">
					      답변하기</button>
					       </c:if>
					      <button type="button" class="btn btn-default" 
					      onclick="javascript:history.back()">목록</button>
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