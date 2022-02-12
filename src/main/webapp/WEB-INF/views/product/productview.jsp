<%@ page language="java" contentType="text/html; charset=UTF-8"													
    pageEncoding="UTF-8"%>													
													
	<%@include file="../header.jsp" %>												
	
	<section>												
	<div class="container-fluid" style="border-top: 1px solid #000;">												
		<div class="container"											
			style="border-bottom: 2px solid #000; padding-top: 25px; padding-bottom: 10px;">										
			<div class="row">				
							
				<h2 class="col-md-3">${list2.spot }</h2>
				<a class="btn btn-default col-md-offset-7 col-md-2"									
					style="width: 100px; height: 33px; padding: 15; margin-top: 20px">2022.02</a>								
			</div>										
		</div>											
	</div>												
													
	<div class="container">												
		<div class="row" style="">											
			<div class="col-md-2 accord"style="margin-top: 50px;">
				<div class=" col-md-12 pvside">									
					<a href="javascript:void(0)" class="accordion">여행기간</a>							
					<div class="panel" style="display: none; margin: 10px 0 0 0;padding-bottom: 10px;">								
						<a style="border: 1px solid #ccc; padding: 5px;border-radius: 5px;">3일</a>							
					</div>								
				</div>									
				<div class=" col-md-12 pvside">									
					<a href="javascript:void(0)" class="accordion">가격</a>							
					<div class="panel pvpanel" style="display: none; margin: 10px 0 0 0;padding-bottom: 10px;">								
						<a style="border: 1px solid #ccc; padding: 5px;border-radius: 5px;">${list2.price2 }</a>							
					</div>								
				</div>
				<div class=" col-md-12 pvside">									
					<a href="javascript:void(0)" class="accordion">항공</a>							
					<div class="panel" style="display: none; margin: 10px 0 0 0;padding-bottom: 10px;">								
						<a style="border: 1px solid #ccc; padding: 5px;border-radius: 5px;">${list2.airline }</a>							
					</div>								
				</div>							
				<div class=" col-md-12 pvside">									
					<a href="javascript:void(0)" class="accordion">호텔등급</a>							
					<div class="panel" style="display: none; margin: 10px 0 0 0;padding-bottom: 10px;">								
						<a style="border: 1px solid #ccc; padding: 5px;border-radius: 5px;">${list2.hgrade }</a>							
					</div>								
				</div>
			</div>
			<div class="col-md-10">
				<div class="col-md-12" style="padding:20px 0 20px 0; line-height:50px; border-bottom: 1px solid #000; margin-bottom:30px;">									
					<strong>${list2.spot } 패키지</strong>								
				</div>
				<div class="col-md-3">								
						<img src="/upload/${list2.img }" alt="" style="width: 200px; height: 200px;" />						
					</div>
					<div class="col-md-7">								
						<strong style="font-size: 17pt;">${list2.dname}</strong>							
						<p>${list2.content}</p>							
						<p>${list2.spot}</p>							
						<p>여행기간 ${list2.period} 일</p>							
						<p>${list2.hash}</p>							
					</div>
					<div class="col-md-2">
						<div style="margin-bottom: 180px;">
                         <span style="font-weight: 400; font-size: 15pt">
                         <fmt:formatNumber value="${list2.price2 }"/>원~</span>
                         </div>	
						<button class="btn btn-default" id="detailbutton">판매상품	보기</button>						
					</div>
			</div><!--최저가  -->
		</div>								
	</div>	
			
		<div class="container">												
			<div class="row" style="margin-left: 200px;">	
				<div class="col-md-12" id="detail1" style="margin: 10px; border: solid 1px #f2f4f7; display: none; background: #f2f4f7; padding:30px;">						
					<p class="">총 ${pcount}개</p>						
						<c:forEach items="${list}" var="list">					
							<div class="col-md-12" style="background:#fff; padding:20px;">				
									<div class="col-md-10">
										<div style="margin-bottom: 10px;">
										<strong style="font-size: 17px;">${list.dname}</strong>
										</div>
										<div style="">
										<p style="display:inline-block;">잔여 ${list.count} 석</p>	
										<p>${list.period -1}박 ${list.period}일</p>	
										<p>호텔 ${list.hgrade}</p>	
										</div>
									</div>		
									<div class="col-md-2">			
									<p><span style="font-weight: 400; font-size: 15pt"><fmt:formatNumber value="${list.price2 }"/>원</span></p>		
									<a href="/product/productDetailview.do?pcode=${list.pcode}" class="btn btn-default">상세일정 보기</a>		
									</div>			
							</div>				
					</c:forEach>						
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
