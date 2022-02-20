<%@ page language="java" contentType="text/html; charset=UTF-8"													
    pageEncoding="UTF-8"%>													
													
	<%@include file="../header.jsp" %>	
										
<style>
input[type=checkbox] { display:none;  margin:10px; } 
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
             <li role="presentation"><a href="#전체" aria-controls="전체" role="tab" data-toggle="tab">전체</a></li>
             <li role="presentation" class="active"><a href="#국내여행" aria-controls="국내여행" role="tab" data-toggle="tab">국내여행</a></li>
             <li role="presentation"><a href="#호텔" aria-controls="호텔" role="tab" data-toggle="tab">호텔/펜션</a></li>
           </ul>
												
			<input type="hidden" name="spot" id="spots" value="${spot }">
			<div class="col-md-12" id="detail1" style="margin: 70px 0 10px 10px; border: solid 1px #f2f4f7;">						
							
			<!-- Tab panes -->
                 <div class="tab-content"style="margin-top:40px;">
                   <div role="tabpanel" class="tab-pane" id="전체">
                      	<div class="">
                      	<c:choose>
							<c:when test="${empty list2 }">
							<p>데이터가 없습니다</p>
							</c:when>
							<c:otherwise>
							
							<p class="" style="font-weight: 600; font-size: 15pt;"> 호텔/펜션 (${count2 })</p>
							<c:forEach items="${list2}" var="list">	
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
							<c:when test="${empty list1 }">
							<p>데이터가 없습니다</p>
							</c:when>
							<c:otherwise>
							<p class="" style="font-weight: 600; font-size: 15pt;"> 국내여행 (${count1 })</p>
							
							<c:forEach items="${list1}" var="list">	
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
			<div role="tabpanel" class="tab-pane active" id="국내여행">
                      	<div class="">
                      	  <div class="col-md-2 accord"style="margin-top: 0px;">
				<div class=" col-md-12 pvside">									
					<a href="javascript:void(0)" class="accordion">여행기간</a>							
					<div class="panel" style="display: show; margin: 10px 0 0 0;padding-bottom: 10px;cursor: pointer;">	
						<p><input type="checkbox" class="checkbox ck1" id="btn1" value="2">
								<label class="btn" for="btn1">2일</label><p>									
						<p><input type="checkbox" class="checkbox ck1" id="btn2" value="3">
								<label class="btn" for="btn2">3일</label><p>			
					</div>								
				</div>									
				<div class=" col-md-12 pvside">					
					<a href="javascript:void(0)" class="accordion">가격</a>							
					<div class="panel pvpanel" style="display: show; margin: 10px 0 0 0;padding-bottom: 10px;cursor: pointer;">
						<p><input type="checkbox" class="checkbox ck2" name="price2" id="btn3" value="1">
								<label class="btn" for="btn3">10~32만원</label><p>
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
							<c:when test="${empty list3 }">
							<p>데이터가 없습니다</p>
							</c:when>
							<c:otherwise>
							<p class="" style="font-weight: 600; font-size: 15pt;"> 국내여행 (${count3 })</p>
							<c:forEach items="${list3}" var="list">	
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
						<p><input type="checkbox" class="checkbox ck2" name="price" id="btn6" value="1">
								<label class="btn" for="btn6">5~15만원</label><p>
						<p><input type="checkbox" class="checkbox ck2" name="price" id="btn7" value="2">
								<label class="btn" for="btn7">15~29만원</label><p>		
						<p><input type="checkbox" class="checkbox ck2" name="price" id="btn8" value="3">
								<label class="btn" for="btn8">29~45만원</label><p>						
					</div>								
				</div>
				<div class=" col-md-12 pvside">					
					<a href="javascript:void(0)" class="accordion">숙소등급</a>							
					<div class="panel pvpanel" style="display: none; margin: 10px 0 0 0;padding-bottom: 10px;cursor: pointer;">
						<p><input type="checkbox" class="checkbox ck2" name="hgrade" id="btn9" value="1">
								<label class="btn" for="btn9">3성급</label><p>
						<p><input type="checkbox" class="checkbox ck2" name="hgrade" id="btn10" value="2">
								<label class="btn" for="btn10">4성급</label><p>		
						<p><input type="checkbox" class="checkbox ck2" name="hgrade" id="btn11" value="3">
								<label class="btn" for="btn11">5성급</label><p>						
					</div>								
				</div>
			</div>
             <div class="col-md-9" id="detail1" style="margin: 0px 0 10px 10px; width:930px;">
                      	<c:choose>
							<c:when test="${empty list2 }">
							<p>데이터가 없습니다</p>
							</c:when>
							<c:otherwise>
							
							<p class="" style="font-weight: 600; font-size: 15pt;"> 호텔/펜션 (${count2 })</p>
							<c:forEach items="${list2}" var="list">	
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
			
    <script>											
	$(".checkbox").change(function() {
    $(".checkbox").not(this).prop('checked', false);
	});			
</script>
		
	<script>
	$("#btn1").on("click",function() {
		 var spot = $("#spots").val();
		 console.log(spot);
		 location.href="/product/totalSearch_p.do?period=1&spot="+spot
	 })
	 $("#btn2").on("click",function() {
		 var spot = $("#spots").val();
		 console.log(spot);
		 location.href="/product/totalSearch_p.do?period=2&spot="+spot
	 })
	 $("#btn3").on("click",function() {
		 var spot = $("#spots").val();
		 console.log(spot);
		 location.href="/product/totalSearch_p.do?price2=100000&price=320000&spot="+spot
	 })
	 $("#btn4").on("click",function() {
		 var spot = $("#spots").val();
		 console.log(spot);
		 location.href="/product/totalSearch_p.do?price2=320000&price=450000&spot="+spot
	 })
	 $("#btn5").on("click",function() {
		 var spot = $("#spots").val();
		 console.log(spot);
		 location.href="/product/totalSearch_p.do?price2=450000&price=620000&spot="+spot
	 })
	 $("#btn6").on("click",function() {
		 var spot = $("#spots").val();
		 console.log(spot);
		 location.href="/product/totalSearch_h.do?price=50000&price2=150000&spot="+spot
	 })
	 $("#btn7").on("click",function() {
		 var spot = $("#spots").val();
		 console.log(spot);
		 location.href="/product/totalSearch_h.do?price=150000&price2=290000&spot="+spot
	 })
	 $("#btn8").on("click",function() {
		 var spot = $("#spots").val();
		 console.log(spot);
		 location.href="/product/totalSearch_h.do?price=290000&price2=450000&spot="+spot
	 })
	 $("#btn9").on("click",function() {
		 var spot = $("#spots").val();
		 console.log(spot);
		 location.href="/product/totalSearch_p.do?hgrade=3성급&spot="+spot
	 })
	 $("#btn10").on("click",function() {
		 var spot = $("#spots").val();
		 console.log(spot);
		 location.href="/product/totalSearch_h.do?hgrade=4성급&spot="+spot
	 })
	 $("#btn11").on("click",function() {
		 var spot = $("#spots").val();
		 console.log(spot);
		 location.href="/product/totalSearch_h.do?hgrade=5성급&spot="+spot
	 })
	 </script>

    	<%@include file="../footer.jsp" %>												
