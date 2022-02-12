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
					<form class="form-horizontal" name="frm" method="post" enctype="multipart/form-data" action="/adm/admin_product_write.do">
					<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }">
					<h2 class="mb-4 f-w-400">상품등록</h2>
					  <div class="form-group">
					    <label for="kind" class="ml-4	 mr-4"style="float: left;min-width: 70px;line-height: 40px;">분류</label>
					    <div class="ml-4"style="float: left;">
					    	<select name="kind" id="" style="width:80px;height:40px; text-align:center;">
					    		<option value="패키지">패키지</option>
					    		<option value="에어카텔">에어카텔</option>
					    		<option value="카텔">카텔</option>
					    		<option value="에어카">에어카</option>
					    	</select>
					    </div>
					    <label for="place" class="ml-4 mr-4" style="float: left;line-height: 40px;">지역</label>
					    <div class=""style="float: left;">
					    	<select name="place" id="" style="width:80px;height:40px; text-align:center;">
					    		<option value="제주">제주</option>
					    		<option value="내륙">내륙</option>
					    		<option value="울릉도">울릉도</option>
					    	</select>
					    </div>
					    <label for="spot" class="ml-4 mr-4" style="float: left;line-height: 40px;">여행지</label>
					    <div class=""style="float: left;">
					    	<select name="spot" id="" style="width:80px;height:40px; text-align:center;">
					    		<option value="서울">서울</option>
					    		<option value="제주">제주</option>
					    		<option value="여수">여수</option>
					    		<option value="강원">강원</option>
					    		<option value="울릉도">울릉도</option>
					    	</select>
					    </div>
					    <label for="thema" class="ml-4 mr-4"style="float: left;line-height: 40px;">테마</label>
					    <div class=""style="float: left;">
					    	<select name="thema" id="" style="width:80px;height:40px; text-align:center;">
					    		<option value="0">선택안함</option>
					    		<option value="제주도에어카텔">제주도에어카텔</option>
					    		<option value="지방출발">지방출발</option>
					    		<option value="자유여행">자유여행</option>
					    		<option value="프리미엄국내여행">프리미엄국내여행</option>
					    	</select>
					    </div>
					    <label for="pick" class="ml-4"style="float: left;line-height: 40px;">픽</label>
					    <div class="ml-4"style="float: left;line-height: 50px;">
					    	<input type="checkbox" value="1">
					    </div>
					  </div> 
					  
					  <div class="form-group">
					    <label for="name" class="ml-4 mr-4"style="float: left;min-width: 70px;">상품명</label>
					    <div class="col-sm-10">
					      <input type="text" name="name" class="form-control2" style="width:100%" id="name" placeholder="상품명입력">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="hash" class="ml-4 mr-4"style="float: left;min-width: 70px;">해시태그</label>
					    <div class="col-sm-10">
					      <input type="text" name="hash" class="form-control2" style="width:100%" id="hash" placeholder="태그입력">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="content" class="ml-4 mr-4"style="float: left;min-width: 70px;">상품설명</label>
					    <div class="col-sm-10">
					      <textarea name="content" class="form-control2" style="width:100%" id="summernote"></textarea>
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="img" class="ml-4 mr-4"style="float: left;min-width: 70px;">대표이미지</label>
					    <div class="col-sm-10">
					      <input type="file" name="uploadFile" id="input-file" style="display:none;">
					      <label class="input-file-button btn btn-primary" for="input-file">업로드</label>
					      <input type="text" id="filename" class="form-control2" style="width:80%" readonly>
					    </div>
					  </div>
					  <div class="form-group">
					    <div class="text-center" style="">
					      <button type="submit" class="btn btn-default" onclick="">상품 등록</button>
					      <button type="button" class="btn btn-default" onclick="javascript:history.go(-1)">목록</button>
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
	<script>
  $(function() {
  

  $("#input-file").change(function(e){
 
    // alert($('input[type=file]')[0].files[0].name); //파일이름
    // alert($("#input-file")[0].files[0].type); // 파일 타임
    // alert($("#input-file")[0].files[0].size); // 파일 크기
 //  $('input[type=file]')[0].files[0].name;
 //  $("#imgUpload")[0].files[0].type;
 //  $("#imgUpload")[0].files[0].size;
 
	  var name = $('#input-file').val();	
	  var name2 = name.replaceAll("C:\\fakepath\\","");
 		$("#filename").val(name2);
    });
});

 

  </script>
</body>
</html>