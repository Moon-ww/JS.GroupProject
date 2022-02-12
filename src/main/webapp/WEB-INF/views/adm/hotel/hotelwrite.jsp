<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <%@ include file="../adminheader.jsp" %> --%>
<%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib  prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <%@ taglib  prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
     
	<link href="/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="/resources/css/font-awesome.min.css" rel="stylesheet">
    <link href="/resources/css/summernote.min.css" rel="stylesheet">
    <link href="/resources/css/common.css" rel="stylesheet">
    <link href="/resources/css/main.css" rel="stylesheet">
    <link href="/resources/css/sub.css" rel="stylesheet">
    
    <script src="/resources/js/jquery-3.3.1.min.js"></script>
    <script src="/resources/js/bootstrap.min.js"></script>
	<script src="/resources/js/product.js"></script>
	<script src="/resources/js/summernote.min.js"></script>
	<script src="/resources/js/my.js"></script>
	
	
	<div class="container" style="margin-top:150px;">
 		<div class="row">
 			<div class="col-md-10">
				<h2>호텔등록</h2>
					<form class="form-horizontal" name="frm" method="post" enctype="multipart/form-data" action="/adm/admin_hotel_write.do">
					<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }">
					  <div class="form-group">
					    <label for="name" class="col-sm-2 control-label">호텔명</label>
					    <div class="col-sm-10">
					      <input type="text" name="name" class="form-control" style="width:100%" id="name">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="hgrade" class="col-sm-2 control-label">등급</label>
					    <div class="col-sm-10">
					    	<select name="hgrade" id="" style="width:80px;height:40px; text-align:center;">
					    		<option value="3성급">3성급</option>
					    		<option value="3.5성급">3.5성급</option>
					    		<option value="4성급">4성급</option>
					    		<option value="4.5성급">4.5성급</option>
					    		<option value="5성급">5성급</option>
					    	</select>
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="roomcount" class="col-sm-2 control-label">객실 수</label>
					    <div class="col-sm-10">
					      <input type="text" name="roomcount" class="form-control" style="width:100%" id="roomcount">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="location" class="col-sm-2 control-label">위치</label>
					    <div class="col-sm-10">
					    	<input type="text" name="location" class="form-control" style="width:100%" id="location">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="hashtag" class="col-sm-2 control-label">해시태그</label>
					    <div class="col-sm-10">
					      <input type="text" name="hashtag" class="form-control" style="width:100%" id="hashtag" placeholder="태그입력">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="content" class="col-sm-2 control-label">상품설명</label>
					    <div class="col-sm-10">
					      <textarea name="content" class="form-control" style="width:100%" id="summernote"></textarea>
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="image" class="col-sm-2 control-label">대표이미지</label>
					    <div class="col-sm-10">
					      <input type="file" name="uploadFile" class="form-control" id="image">
					    </div>
					  </div>
					  <div class="form-group">
					    <div class="col-sm-offset-2 col-sm-10" style="margin:30px 0 50px 420px">
					      <button type="submit" class="btn btn-default" onclick="">호텔 등록</button>
					      <button type="button" class="btn btn-default" onclick="go_move()">목록</button>
					    </div>
					  </div>
					</form>
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