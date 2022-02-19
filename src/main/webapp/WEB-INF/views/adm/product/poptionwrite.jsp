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
					<form class="form-horizontal" name="frm" method="post" action="/adm/admin_poption_write.do">
					<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }">
					
						<input type="hidden" name="pseq" id="pseq">
						<h2 class="mb-4 f-w-400">옵션등록</h2>
					  <div class="form-group">
					    <label for="kind" class="ml-4	 mr-4"style="float: left;min-width: 70px;line-height: 40px;">분류</label>
					    <div class="ml-4"style="float: left;">
					    	<select name="kind" id="" style="width:100px;height:40px; text-align:center;">
					    		<option value="에어카텔">에어카텔</option>
					    		<option value="카텔">카텔</option>
					    		<option value="에어카">에어카</option>
					    	</select>
					    </div>
					    <label for="guide" class="ml-4	 mr-2"style="float: left;min-width: 70px;line-height: 40px;">가이드</label>
					    <div class=""style="float: left;">
					    	<select name="guide" id="" style="width:100px;height:40px; text-align:center;">
					    		<option value="1">있음</option>
					    		<option value="2">없음</option>
					    	</select>
					    </div>
					    <label for="hgrade" class="ml-4 mr-2"style="float: left;min-width: 70px;line-height: 40px;">호텔</label>
					    <div class=""style="float: left;">
					    	<select name="hgrade" id="" style="width:100px;height:40px; text-align:center;">
					    		<option value="3성급">3성급</option>
					    		<option value="3.5성급">3.5성급</option>
					    		<option value="4성급">4성급</option>
					    		<option value="4.5성급">4.5성급</option>
					    		<option value="5성급">5성급</option>
					    	</select>
					    </div>
					    <label for="airline" class="ml-4	 mr-2"style="float: left;min-width: 70px;line-height: 40px;">항공사</label>
					    <div class=""style="display: inline-block;float: left;">
					    	<select name="airline" id="" style="width:100px;height:40px; text-align:center;">
					    		<option value="대한항공">대한한공</option>
					    		<option value="아시아나">아시아나</option>
					    	</select>
					    </div>
					    </div>
					    <div class="form-group">
					    <label for="rentent"  class="ml-4	 mr-4"style="float:left;min-width: 70px;line-height: 40px;">렌터카</label>
					    <div class="ml-4"style="float: left;">
					    	<select name="rentent" id="" style="width:100px;height:40px; text-align:center;">
					    		<option value="롯데렌터카">롯데렌터카</option>
					    		<option value="SK렌터카">SK렌터카</option>
					    	</select>
					    </div>
					    <label for="rentcar" class="ml-4 mr-2"style="float: left;min-width: 70px;line-height: 40px;">차종</label>
					    <div class=""style="float: left;">
					    	<select name="rentcar" id="" style="width:100px;height:40px; text-align:center;">
					    		<option value="경차">경차</option>
					    		<option value="소형">소형</option>
					    		<option value="중형">중형</option>
					    		<option value="대형">대형</option>
					    		<option value="승합">승합</option>
					    		<option value="SUV">SUV</option>
					    	</select>
					    </div>
					    
					  </div> 
					  <div class="form-group">
					    <label for="pcode" class="ml-4 mr-4"style="float: left;min-width: 70px;">상품코드</label>
					    <div class="col-sm-10">
					      <input type="text" name="pcode" class="form-control2" style="width:100%" id="pcode" placeholder="상품코드입력">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="name" class="ml-4 mr-4"style="float: left;min-width: 70px;">상품명</label>
					    <div class="col-sm-10">
					      <input type="text" name="name" class="form-control2" style="width:100%" id="name" placeholder="상품명입력">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="hotel" class="ml-4 mr-4"style="float: left;min-width: 70px;">호텔명</label>
					    <div class="col-sm-10">
					      <input type="text" name="hotel" class="form-control2" style="width:100%" id="hotel" placeholder="호텔명입력">
					    </div>
					  </div>
					 <div class="form-group">
					    <label for="count" class="ml-4 mr-4"style="float: left;min-width: 70px;">잔여석</label>
					    <div class="col-sm-10">
					      <input type="text" name="count" class="form-control2" style="width:100%" id="count" placeholder="잔여석입력">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="hash" class="ml-4 mr-4"style="float: left;min-width: 70px;">해시태그</label>
					    <div class="col-sm-10">
					      <input type="text" name="hash" class="form-control2" style="width:100%" id="hash" placeholder="해시태그입력">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="startdate" class="ml-4 mr-4"style="float: left;min-width: 70px;">시작일</label>
					    <div class="col-sm-10">
					      <input type="text" name="startdate" class="form-control2" style="width:100%" id="startdate" placeholder="시작일입력">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="enddate" class="ml-4 mr-4"style="float: left;min-width: 70px;">종료일</label>
					    <div class="col-sm-10">
					      <input type="text" name="enddate" class="form-control2" style="width:100%" id="enddate" placeholder="종료일입력">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="price1" class="ml-4 mr-4"style="float: left;min-width: 70px;">원가</label>
					    <div class="col-sm-10">
					      <input type="text" name="price1" class="form-control2" style="width:100%" id="price1" placeholder="원가입력" onkeypress="numberformat(this)">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="price2" class="ml-4 mr-4"style="float: left;min-width: 70px;">판매가</label>
					    <div class="col-sm-10">
					     <input type="text" name="price2" class="form-control2" style="width:100%" id="price2" placeholder="판매가입력" onBlur="go_ab()" onkeypress="numberformat(this)">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="price3" class="ml-4 mr-4"style="float: left;min-width: 70px;">순이익</label>
					    <div class="col-sm-10">
					      <input type="text" name="price3" class="form-control2" style="width:100%" id="price3" readonly onblur="numberformat(this)">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="content" class="ml-4 mr-4"style="float: left;min-width: 70px;">상품설명</label>
					    <div class="col-sm-10">
					      <textarea name="content" class="form-control2" style="width:100%" id="summernote"></textarea>
					    </div>
					  </div>
					  <!-- <div class="form-group">
					    <label for="img" class="col-sm-2 control-label">대표이미지</label>
					    <div class="col-sm-10">
					      <input type="file" name="uploadFile" class="form-control2" id="img">
					    </div>
					  </div> -->
					  <div class="form-group">
					    <div class="text-center" style="">
					      <button type="submit" class="btn btn-default" onclick="">옵션 등록</button>
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
	<script type="text/javascript">

	$.urlParam = function(name){
 	    var results = new RegExp('[\?&]' + name + '=([^&#]*)').exec(window.location.href);
 	    return results[1] || 0;
 	}
 		var pseq = $.urlParam('pseq'); 
 		console.log(pseq)
		$("#pseq").val(pseq)

	 </script>
</body>
</html>