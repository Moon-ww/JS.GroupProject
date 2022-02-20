<%@ page language="java" contentType="text/html; charset=UTF-8"													
    pageEncoding="UTF-8"%>													
													
	<%@include file="../header.jsp" %>		
											
<style>
input[type=checkbox] { display:none;  margin:10px; } 
</style>

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
		<input type="hidden" name="spot" id="spots" value="${spot }">
			<div class="col-md-2 accord"style="margin-top: 50px;">
				<div class=" col-md-12 pvside">					
					<a href="javascript:void(0)" class="accordion">가격</a>							
					<div class="panel pvpanel" style="display: show; margin: 10px 0 0 0;padding-bottom: 10px;cursor: pointer;">
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
					<div class="panel pvpanel" style="display: show; margin: 10px 0 0 0;padding-bottom: 10px;cursor: pointer;">
						<p><input type="checkbox" class="checkbox ck2" name="hgrade" id="btn9" value="1">
								<label class="btn" for="btn9">3성급</label><p>
						<p><input type="checkbox" class="checkbox ck2" name="hgrade" id="btn10" value="2">
								<label class="btn" for="btn10">4성급</label><p>		
						<p><input type="checkbox" class="checkbox ck2" name="hgrade" id="btn11" value="3">
								<label class="btn" for="btn11">5성급</label><p>						
					</div>								
				</div>
			</div>
			<div class="col-md-9" id="detail1" style="margin: 70px 0 10px 10px; width:950px; border: solid 1px #f2f4f7;">						
							<c:choose>
							<c:when test="${empty list }">
							<p>데이터가 없습니다</p>
							</c:when>
							<c:otherwise>
							<p class="" style="font-weight: 600; font-size: 15pt;"> 호텔/펜션 (${count4 })</p>
							<c:forEach items="${list}" var="list">	
							<div class="col-md-12" style="background:#fff; padding:20px;">				
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
									<div class="col-md-2" style="width: 140px;">			
									<p>1박 기준<span style="font-weight: 400; font-size: 15pt"> <fmt:formatNumber value="${list.price }"/> 원~</span></p>		
									<a href="/hotel/hotelview.do?hseq=${list.hseq }" class="btn btn-default">상세보기</a>		
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
<script>
	
	 $("#btn6").on("click",function() {
		 var spot = $("#spots").val();
		 console.log(spot);
		 location.href="/hotel/hotelSearchview.do?price=50000&price2=150000&spot="+spot
	 })
	 $("#btn7").on("click",function() {
		 var spot = $("#spots").val();
		 console.log(spot);
		 location.href="/hotel/hotelSearchview.do?price=150000&price2=290000&spot="+spot
	 })
	 $("#btn8").on("click",function() {
		 var spot = $("#spots").val();
		 console.log(spot);
		 location.href="/hotel/hotelSearchview.do?price=290000&price2=450000&spot="+spot
	 })
	 $("#btn9").on("click",function() {
		 var spot = $("#spots").val();
		 console.log(spot);
		 location.href="/hotel/hotelSearchview.do?hgrade=3성급&spot="+spot
	 })
	 $("#btn10").on("click",function() {
		 var spot = $("#spots").val();
		 console.log(spot);
		 location.href="/hotel/hotelSearchview.do?hgrade=4성급&spot="+spot
	 })
	 $("#btn11").on("click",function() {
		 var spot = $("#spots").val();
		 console.log(spot);
		 location.href="/hotel/hotelSearchview.do?hgrade=5성급&spot="+spot
	 })
	 </script>												
    	<%@include file="../footer.jsp" %>												
