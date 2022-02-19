<%@ page language="java" contentType="text/html; charset=UTF-8"													
    pageEncoding="UTF-8"%>													
													
	<%@include file="../header.jsp" %>	
										
<style>
input[type=checkbox] { display:none;  margin:10px; } 


/* 선택한 라디오 단추 옆의 레이블에 대한 배경색 변경하면 됩니다. 강조 표시된 버튼으로 보이게합니다.*/ 

input[type=checkbox]:checked+label {  

background:#0047ff !important; 

color:#fff; 

} 
</style>
	<section>												
	<div class="container-fluid" style="border-top: 1px solid #000;">												
		<div class="container"											
			style="padding-top: 25px; padding-bottom: 10px;">										
			<div class="row">				
							
				<h2 class="col-md-3"></h2>
				<!-- <a class="btn btn-default col-md-offset-7 col-md-2"									
					style="width: 100px; height: 33px; padding: 15; margin-top: 20px">2022.02</a> -->								
			</div>										
		</div>											
	</div>												
													
	<div class="container">				
	<div class="row" style="">									
	<div role="tabpanel" class="category-tab">
           <!-- Nav tabs -->
           <ul class="nav nav-tabs n3" role="tablist" id="mytab">
             <li role="presentation" class="active"><a href="#전체" aria-controls="전체" role="tab" data-toggle="tab">전체</a></li>
             <li role="presentation"><a href="#국내여행" aria-controls="국내여행" role="tab" data-toggle="tab">국내여행</a></li>
             <li role="presentation"><a href="#호텔" aria-controls="호텔" role="tab" data-toggle="tab">호텔/펜션</a></li>
           </ul>
												
			<input type="hidden" name="spot" id="spots" value="${spot }">
			<div class="col-md-12" id="detail1" style="margin: 70px 0 10px 10px; border: solid 1px #f2f4f7;">						
							
			<!-- Tab panes -->
                 <div class="tab-content"style="margin-top:40px;">
                   <div role="tabpanel" class="tab-pane active" id="전체">
                      	<div class="">
                      	<c:choose>
							<c:when test="${empty list }">
							<p>데이터가 없습니다</p>
							</c:when>
							<c:otherwise>
							
							<p class="" style="font-weight: 600; font-size: 15pt;"> 호텔/펜션 ()</p>
							<c:forEach items="${list}" var="list">	
							<div class="col-md-12" style="background:#fff; padding:20px;margin-bottom: 100px;">				
									<div class="col-md-10">
										<div class="imagesss col-md-4" style="height: 150px;">
											<img alt="" src="/upload/${list.image }" style="width: 100%;height: 100%;">
										</div>
										<div class="textttt col-md-8">
										<div style="margin-bottom: 10px;">
										<strong style="font-size: 17px;">${list.name}</strong>
										</div>
										<div style="">
										<p style="display:inline-block;">${list.place}</p>	
										<p>${list.hash}</p>	
										</div>
										</div>
									</div>		
									<div class="col-md-2">			
									<p><span style="font-weight: 400; font-size: 15pt"><fmt:formatNumber value="${list.price }"/> 원~</span></p>		
									<a href="/hotel/hotelview.do?hseq=${list.hseq }" class="btn btn-default">상세보기</a>		
									</div>			
								</div>			
								</c:forEach>
						  </c:otherwise>
					    </c:choose>		
					    
							<c:choose>
							<c:when test="${empty list2 }">
							<p>데이터가 없습니다</p>
							</c:when>
							<c:otherwise>
							<p class="" style="font-weight: 600; font-size: 15pt;"> 국내여행 ()</p>
							
							<c:forEach items="${list2}" var="list">	
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
			<div role="tabpanel" class="tab-pane" id="국내여행">
                      	<div class="">
                      	  <div class="col-md-2 accord"style="margin-top: 0px;">
				<div class=" col-md-12 pvside">									
					<a href="javascript:void(0)" class="accordion">여행기간</a>							
					<div class="panel" style="display: none; margin: 10px 0 0 0;padding-bottom: 10px;cursor: pointer;">	
						<p><input type="checkbox" class="checkbox ck1" id="btn1" value="2">
								<label class="btn" for="btn1">2일</label><p>									
						<p><input type="checkbox" class="checkbox ck1" id="btn2" value="3">
								<label class="btn" for="btn2">3일</label><p>			
					</div>								
				</div>									
				<div class=" col-md-12 pvside">									
					<a href="javascript:void(0)" class="accordion">가격</a>							
					<div class="panel pvpanel" style="display: none; margin: 10px 0 0 0;padding-bottom: 10px;cursor: pointer;">
						<p><a><input type="checkbox" class="checkbox ck2" name="price2" id="btn3" value="1">
								<label class="btn" for="btn3">10~32만원</label></a><p>
						<p><input type="checkbox" class="checkbox ck2" name="price2" id="btn4" value="2">
								<label class="btn" for="btn4">32~45만원</label><p>		
						<p><input type="checkbox" class="checkbox ck2" name="price2" id="btn5" value="3">
								<label class="btn" for="btn5">45~62만원</label><p>						
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
							<p class="" style="font-weight: 600; font-size: 15pt;"> 국내여행 ()</p>
							<c:forEach items="${list2}" var="list">	
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
			<div role="tabpanel" class="tab-pane" id="호텔">
                      	<div class="">
                      	<div class="col-md-2 accord"style="margin-top: 0px;">
				<div class=" col-md-12 pvside">									
					<a href="javascript:void(0)" class="accordion">가격</a>							
					<div class="panel pvpanel" style="display: none; margin: 10px 0 0 0;padding-bottom: 10px;cursor: pointer;">								
						<p><a style="border: 1px solid #ccc; padding: 5px;border-radius: 5px;">5~15만원</a></p>
						<p><a style="border: 1px solid #ccc; padding: 5px;border-radius: 5px;">15~29만원</a></p>
						<p><a style="border: 1px solid #ccc; padding: 5px;border-radius: 5px;">29~45만원</a></p>					
					</div>								
				</div>
				<div class=" col-md-12 pvside">									
					<a href="javascript:void(0)" class="accordion">숙소등급</a>							
					<div class="panel" style="display: none; margin: 10px 0 0 ;padding-bottom: 10px;cursor: pointer;">								
						<p><a style="border: 1px solid #ccc; padding: 5px;border-radius: 5px;">3성급</a></p>
						<p><a style="border: 1px solid #ccc; padding: 5px;border-radius: 5px;">4성급</a></p>
						<p><a style="border: 1px solid #ccc; padding: 5px;border-radius: 5px;">5성급</a></p>						
					</div>								
				</div>
			</div>
             <div class="col-md-9" id="detail1" style="margin: 0px 0 10px 10px; width:930px;">
                      	<c:choose>
							<c:when test="${empty list }">
							<p>데이터가 없습니다</p>
							</c:when>
							<c:otherwise>
							
							<p class="" style="font-weight: 600; font-size: 15pt;"> 호텔/펜션 ()</p>
							<c:forEach items="${list}" var="list">	
							<div class="col-md-12" style="background:#fff; padding:20px;margin-bottom: 100px;">				
									<div class="col-md-10">
										<div class="imagesss col-md-4" style="height: 150px;">
											<img alt="" src="/upload/${list.image }" style="width: 100%;height: 100%;">
										</div>
										<div class="textttt col-md-8">
										<div style="margin-bottom: 10px;">
										<strong style="font-size: 17px;">${list.name}</strong>
										</div>
										<div style="">
										<p style="display:inline-block;">${list.place}</p>	
										<p>${list.hash}</p>	
										</div>
										</div>
									</div>		
									<div class="col-md-2">			
									<p><span style="font-weight: 400; font-size: 15pt"><fmt:formatNumber value="${list.price }"/> 원~</span></p>		
									<a href="/hotel/hotelview.do?hseq=${list.hseq }" class="btn btn-default">상세보기</a>
									</div>			
								</div>			
								</c:forEach>
						  </c:otherwise>
					    </c:choose>		
					    </div>
					</div>
			</div>
		</div>
      </div><!-- 탭 엔드 -->
					</div>	
		</div>								
	</div>	
			
		
											
</section>													
												
													
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
	$(".checkbox").change(function() {
    $(".checkbox").not(this).prop('checked', false);
	});			
	</script>
		<script>
		$(".ck2").on("click", function() {
		
		var price2 = $(this).val();
		var spot = $("#spots").val();
		var price = 0;
		console.log(price2);
		console.log($("#spots").val());
		
		if(price2 ==1) {
			price2 = 100000;
			var price = 320000;
		}else if(price2 ==2) {
			price2 = 320000;
			var price = 450000;
		}else {
			price2 = 450000;
			var price = 620000;
		}
		$.ajax({
			
			type:'get',
			url:"/product/totalSearch_p_price.do",
			data:{
				price2:price2,
				price:price,
				spot:spot
				},
			//dataType:"json",
			success:function(data) {
				
				for (var i in data){
					console.log(data[i].price);
				}
				
			},error:function() {
				alert("에러");
			}
		})//ajax
})
		</script> 	 -->
	<!-- 	<script type="text/javascript">
 	$.urlParam = function(name1){
 	    var results = new RegExp('[\?&]' + name1 + '=([^&#]*)').exec(window.location.href);
 	    return results[1] || 0;
 	}
 		var spot = $.urlParam('spot'); 
 		console.log(spot)
		$("#spot").val(spot)

	 </script>
	 <!-- <script>
	 $("#btn3").on("click",function() {
		 var spot = $("#spots").val();
		 console.log(spot);
		 location.href="/product/totalSearch_p_price.do?price2=100000&price=320000&spot="+spot
	 })
	 </script> -->
    	<%@include file="../footer.jsp" %>												
