<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="adminheader.jsp" %>

	<div class="container" style="margin-top:150px;">
		<div class="row">
			<div class="col-md-2">
			</div>
			<div class="col-md-10">
				<form class="form-inline" action="admin.do" style="margin-bottom:30px;">
				<input name="${_csrf.parameterName}" type="hidden" value="${_csrf.token}"/>
				  <div class="form-group">
				    <label for="product">상품명</label>&nbsp;&nbsp;
				    <input type="text" name="word" class="form-control" id="product" placeholder="상품명">
				  </div>
				  <button type="submit" class="btn btn-default">검색</button>
				</form>
				
					<div class="table-responsive">
					  <table class="table">
					    <tr>
					    	<th>상품번호</th>
					    	<th>분류</th>
					    	<th>상품명</th>
					    	<th>여행지</th>
					    	<th>관리</th>
					    </tr>
					    <c:choose>
					    	<c:when test="${empty list }">
					    		<tr>
					    			<td colspan="8">데이터가 없습니다</td>
					    		</tr>
					    	</c:when>
					    	<c:otherwise>
					    		<c:forEach items="${list }" var="list">
							    <tr>
							    	<td>${list.pseq }</td>
							    	<td>${list.kind }</td>
							    	<td><a href="admin_product_view.do?pseq=${list.pseq }">${list.name }</a></td>
							    	<td>${list.spot}</td>
							    	<td><a href="/adm/product/poptionlist.do?pseq=${list.pseq }" class="pbtn">옵션</a> <a href="/adm/product/productmodify.do?pseq=${list.pseq }" class="pbtn">수정</a> <a href="/adm/admin_product_delete.do?pseq=${list.pseq }" class="pbtn">삭제</a></td>
							    	<%-- <td><fmt:parseDate var="startdate" value="${list.startdate }" pattern="yyyy-MM-dd"/>
									<fmt:formatDate value="${startdate }" pattern="yyyy-MM-dd"/> ~ 
									<fmt:parseDate var="enddate" value="${list.enddate }" pattern="yyyy-MM-dd"/>
									<fmt:formatDate value="${enddate }" pattern="yyyy-MM-dd"/>
							    	</td> --%>
							    </tr>
							    </c:forEach>
						    </c:otherwise>
					    </c:choose>
					  </table>
					  	
							<a href="/adm/product/productwrite.do" class="btn btn-default" style="float:right;">상품등록</a>
							<div class="pagination" style="margin-top:-50px">
							<c:if test="${pageMaker.prev }">
								<a href="${pageMaker.startpage-1 }"><i class="fa  fa-angle-double-left"></i></a>
							</c:if>
							<c:forEach var="num" begin="${pageMaker.startpage }" end="${pageMaker.endpage }">
								<a href="${num}" class="${pageMaker.cri.pageNum == num?'active':'' }">${num}</a>
							</c:forEach>
							<c:if test="${pageMaker.next }">
								<a href="${pageMaker.endpage+1 }"><i class="fa  fa-angle-double-right"></i></a>
							</c:if>
			
						<form id="actionForm" action="admin.do" method="get">
						<input name="${_csrf.parameterName}" type="hidden" value="${_csrf.token}"/>
							<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}">
							<input type="hidden" name="amount" value="${pageMaker.cri.amount}">
							<input type="hidden" name="sel" value="${pageMaker.cri.type}">
							<input type="hidden" name="word" value="${pageMaker.cri.keyword}">
						</form>
						</div> 
					</div>
				</div>
			</div>
 		</div>
   <script>
 	$(function() {
	 	var actionForm = $("#actionForm");
		
		$(".pagination > a").on("click", function(e) {
			e.preventDefault();
			actionForm.find("input[name='pageNum']").val($(this).attr("href"));
			actionForm.submit();
		})
	});
 	 </script>
</body>
</html>