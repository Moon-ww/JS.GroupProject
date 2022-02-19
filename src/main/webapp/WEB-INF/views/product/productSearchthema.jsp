<%@ page language="java" contentType="text/html; charset=UTF-8"													
    pageEncoding="UTF-8"%>													
													
	<%@include file="../header.jsp" %>												
	
	<section>												
	<div class="container-fluid" style="border-top: 1px solid #000;">												
		<div class="container"											
			style="border-bottom: 0; padding-top: 25px; padding-bottom: 10px;">										
			<div class="row">				
							
				<h2 class="col-md-3"></h2>
				<!-- <a class="btn btn-default col-md-offset-7 col-md-2"									
					style="width: 100px; height: 33px; padding: 15; margin-top: 20px">2022.02</a> -->								
			</div>										
		</div>											
	</div>												
													
	<div class="container">												
		<div class="row" style="">											
			<div class="col-md-2 accord"style="margin-top: 0px;">
				<div class=" col-md-12 pvside">									
					<a href="javascript:void(0)" class="accordion">여행기간</a>							
					<div class="panel" style="display: none; margin: 10px 0 0 0;padding-bottom: 10px;cursor: pointer;">	
						<p><a style="border: 1px solid #ccc; padding: 5px;border-radius: 5px;">2일</a><p>									
						<p><a style="border: 1px solid #ccc; padding: 5px;border-radius: 5px;">3일</a><p>					
					</div>								
				</div>									
				<div class=" col-md-12 pvside">									
					<a href="javascript:void(0)" class="accordion">가격</a>							
					<div class="panel pvpanel" style="display: none; margin: 10px 0 0 0;padding-bottom: 10px;cursor: pointer;">								
						<p><a style="border: 1px solid #ccc; padding: 5px;border-radius: 5px;">10~32만원</a></p>
						<p><a style="border: 1px solid #ccc; padding: 5px;border-radius: 5px;">32~45만원</a></p>
						<p><a style="border: 1px solid #ccc; padding: 5px;border-radius: 5px;">45~62만원</a></p>						
					</div>								
				</div>
				<!-- <div class=" col-md-12 pvside">									
					<a href="javascript:void(0)" class="accordion">항공</a>							
					<div class="panel" style="display: none; margin: 10px 0 0 0;padding-bottom: 10px;">								
						<a style="border: 1px solid #ccc; padding: 5px;border-radius: 5px;">대한한공</a>		
						<a style="border: 1px solid #ccc; padding: 5px;border-radius: 5px;">아시아나</a>					
					</div>								
				</div>							
				<div class=" col-md-12 pvside">									
					<a href="javascript:void(0)" class="accordion">호텔등급</a>							
					<div class="panel" style="display: none; margin: 10px 0 0 0;padding-bottom: 10px;">								
						<a style="border: 1px solid #ccc; padding: 5px;border-radius: 5px;">3성급</a>
						<a style="border: 1px solid #ccc; padding: 5px;border-radius: 5px;">4성급</a>
						<a style="border: 1px solid #ccc; padding: 5px;border-radius: 5px;">5성급</a>						
					</div>								
				</div> -->
				</div>
			<div class="col-md-9" id="detail1" style="margin: 0px 0 10px 10px; width:930px;">						
							<c:choose>
							<c:when test="${empty list }">
							<p>데이터가 없습니다</p>
							</c:when>
							<c:otherwise>
							<p class="" style="font-weight: 600; font-size: 15pt;"> 테마 (${count })</p>	
							<c:forEach items="${list}" var="list">	
							<div class="col-md-12" style="background:#fff; padding:20px;">				
									<div class="col-md-10">
										<div class="imagesss col-md-4" style="height: 150px;">
											<img alt="" src="/upload/${list.img }" style="width: 100%;height: 100%;">
										</div>
										<div class="textttt col-md-8">
										<div style="margin-bottom: 10px;">
										<strong style="font-size: 17px;">${list.dname}</strong>
										</div>
										<div style="">
										<p style="display:inline-block;">${list.spot}</p>	
										<p>${list.period -1}박 ${list.period}일</p>	
										<p>${list.hash}</p>	
										</div>
										</div>
									</div>		
									<div class="col-md-2">			
									<p><span style="font-weight: 400; font-size: 15pt"><fmt:formatNumber value="${list.price2 }"/> 원~</span></p>		
									<a href="/product/productDetailview.do?pcode=${list.pcode}" class="btn btn-default">판매상품 보기</a>		
									</div>			
								</div>			
								</c:forEach>
						  </c:otherwise>
					    </c:choose>		
					</div>	
		</div>								
	</div>	
			
		
											
</section>													
												
<script>													
													
													
</script>													
<script>													
	var acc = document.getElementsByClassName("accordion");												
	var i;												
													
	for (i = 0; i < acc.length; i++) {												
		acc[i].addEventListener("click", function() {											
			/* Toggle between adding and removing the "active" class,										
			to highlight the button that controls the panel */										
			this.classList.toggle("active");										
													
			/* Toggle between hiding and showing the active panel */										
			var panel = this.nextElementSibling;										
			if (panel.style.display === "block") {										
				panel.style.display = "none";									
			} else {										
				panel.style.display = "block";									
			}										
		});											
	}												
</script>													
<script>													
	$("#detailbutton").click(function() {												
		$("#detail1").toggle();											
	});												
</script>													
<script>													
	$(".accordion").click(function() {												
		$(".panel").toogle();											
	})												
</script>													
<script>											
	$("#plus").click(function() {												
													
		var queryString = $("form[name=formm]").serialize() ;											
		var quantity = $("input[name=quantity ]").val();											
		var name = $("input[name=jname ]").val();											
		   											
		$.ajax({											
			  										
			type:'post',										
			  url:'cartinsert.do',										
			  data:queryString,										
			  										
			  success:function(data) {										
			      //정상 요청, 응답 시 처리 작업										
			    										
			 },//sucess end										
			 error : function(xhr,status,error) {										
			      //오류 발생 시 처리										
			      alert(queryString);										
			  }										
		})//ajax end											
													
  		if(confirm(name +"　"+ quantity+" 개 가 장바구니에 추가되었습니다\n 장바구니로 이동하시겠습니까?") == true) {											
	  		location.href='cartlist.do';										
 		 }else {											
	 		 return false;										
		  }											
	})												
		</script>											
		<script type="text/javascript">  											
        $(function(){  													
            var article = (".table .show");  													
            $(".table .itemss  td").click(function() {  													
                var myArticle =$(this).parents().next("tr");  													
                if($(myArticle).hasClass('hide')) {  													
                    $(article).removeClass('show').addClass('hide');  													
                    $(myArticle).removeClass('hide').addClass('show');  													
                }  													
                else {  													
                    $(myArticle).addClass('hide').removeClass('show');  													
                }  													
            });  													
        });  													
    </script>  													
													
    	<%@include file="../footer.jsp" %>												
