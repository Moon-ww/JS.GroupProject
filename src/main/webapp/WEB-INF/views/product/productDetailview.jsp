<%@ page language="java" contentType="text/html; charset=UTF-8"								
    pageEncoding="UTF-8"%>								
								
	<%@include file="../header.jsp" %>							
								
	<section>							
	<div class = "container-fluid" style="border-top:2px solid  #000; padding:50px 0px 50px 0px;">							
			<div class ="container">					
			<div class = "row">					
				<div class = "col-md-7">				
					<div class="imgdiv" style="margin-bottom: 20px;">			
							<img style="width:100%;" src="/resources/images/z1.jpg" alt="" />	
					</div>			
					<span>상품코드 ${list.pcode	}</span>
				</div>				
				<div class ="col-md-5">				
					<div style="margin-top:50px">			
						<p style="padding: 3px;color: #00abff;border: 1px solid #00abff;display: inline-block;">${list.kind}</p>		
					</div>			
					<div style="margin-top:10px;font-weight: 600;font-size: 16pt;">			
						<p>[${list.dkind}]${list.dname}</p>		
					</div>			
					<div style="margin-top:50px; border-bottom: 1px solid #ccc;">			
						<p>${list.content}</p>		
					</div>			
								
					<div style="margin-top: 30px;">			
						<span>		
							<i class="fa fa-calendar" style="font-size: 13pt;">	
								<c:if test="${list.period == 0}">
								당일치기
								</c:if>
								<c:if test="${list.period == 1}">
								1박2일
								</c:if>
								<c:if test="${list.period == 2}">
								2박3일
								</c:if>
								<c:if test="${list.period == 3}">
								3박4일
								</c:if>
								<c:if test="${list.period == 4}">
								4박5일
								</c:if>
								<c:if test="${list.period == 5}">
								5박6일
								</c:if>
								<c:if test="${list.period == 6}">
								6박7일
								</c:if>
								<c:if test="${list.period == 7}">
								7박8일
								</c:if>
							</i>	
						</span>		
						<span>		
							<c:if test="${list.airline ne null}">	
								<img src="/resources/images/airplane.png" style="width: 25px; height: 22px; margin-top: -7px;"/>국적기
							</c:if>	
							<c:if test="${list.airline eq null}">	
								<img src="/resources/images/noairplane.png" style="width: 25px; height: 22px; margin-top: -7px;"/>항공없음
							</c:if>	
						</span>		
						<span>		
							<c:if test="${list.hotel ne null}">	
								<img src="/resources/images/hotel.png" style="width: 23px; height: 17px; margin-top: -7px;"/>호텔
							</c:if>	
							<c:if test="${list.hotel eq null}">	
								<img src="/resources/images/nohotel.png" style="width: 23px; height: 17px; margin-top: -7px;"/>호텔없음
							</c:if>	
						</span>		
						<span>		
							<c:if test="${list.guide ne null}">	
								<img src="/resources/images/guide.png" style="width: 25px; height: 19px; margin-top: -7px;"/>가이드
							</c:if>	
							<c:if test="${list.guide eq null}">	
								<img src="/resources/images/noguide.png" style="width: 25px; height: 19px; margin-top: -7px;"/>가이드없음
							</c:if>	
						</span>		
					</div>			
					<div style="margin: 30px 0 30px 0;">			
						<span class= "btn btn-default">출발예정</span>		
						<span class= "btn btn-default">일정예정</span>		
						<span class= "btn btn-default">호텔예정</span>		
						<span class= "btn btn-default">가격예정</span>		
					</div>			
					<div class="pull-right">			
						<p style="text-align: right;">성인 1인</p>		
						<p style="font-size: 17pt;font-weight: 600;"><span class="${list.price2}"></span><fmt:formatNumber value="${list.price2}"/>원</p>		
					</div>			
				</div>				
			</div>					
		</div>						
	</div>							
	<!-- 상품 정보  -->							
								
	<div class ="container detail-wrap" style="border-top:2px solid #f0f0f0;">							
	<div class="col-md-9 detail-left">							
	<div class="contentbar">							
    	<div class = "col-md-12">							
    		<h2>여행 주요일정</h2>						
    			<div>					
    				<dl>				
    					<dt class="col-md-2">일정	</dt>		
    					<dd class="col-md-10">			
    						<c:if test="${list.period == 1}">		
								1박2일
							</c:if>	
							<c:if test="${list.period == 2}">	
								2박3일
							</c:if>	
							<c:if test="${list.period == 3}">	
								3박4일
							</c:if>	
							<c:if test="${list.period == 4}">	
							    4박5일	
							</c:if>	
							<c:if test="${list.period == 5}">	
								5박6일
							</c:if>	
							<c:if test="${list.period == 6}">	
								6박7일
							</c:if>	
							<c:if test="${list.period == 7}">	
								7박8일
							</c:if>	
    					</dd>			
    					<dd class="col-md-offset-2 col-md-10">일정시작 : 			
    						<span>		
							  <fmt:parseDate var="startdate" value="${list.startdate }" pattern="yyyy-MM-dd"/>	
							  <fmt:formatDate value="${startdate}" pattern="yyyy.MM.dd (E)"/>	
							</span>	
    					</dd>			
    					<dd class="col-md-offset-2 col-md-10" style="margin-bottom: 30px;">일정종료 : 			
    						<span>		
							  <fmt:parseDate var="enddate" value="${list.enddate }" pattern="yyyy-MM-dd"/>	
							  <fmt:formatDate value="${enddate}" pattern="yyyy.MM.dd (E)"/>	
							</span>	
    					</dd>			
    								
    					<dt class="col-md-2">여행도시</dt>
    					<dd class="col-md-10" style="margin-bottom: 30px;">${list.spot}</dd>			
    					<dt class="col-md-2">예약현황</dt>			
    					<dd class="w100" style="float: left;padding: 0 15px;">예약 ${list.count }</dd>			
    					<dd class="col-md-5" style="margin-bottom: 30px;">좌석 ${list.count }</dd>			
    				</dl>				
    			</div>					
    	</div>							
    	<div class="col-md-12" style="border-top:2px solid #f0f0f0;">							
    	 <img alt="" src="/resources/images/productdetail.jpg" style="width: 100%;margin-top: 50px;">						
    	</div>							
	</div>							
	</div>							
	<div class="col-md-3 product detail-right" style="border-left:1px solid #f0f0f0;">							
		<div class="rightCol" style="margin-top: 30px;">						
		  <p style="font-weight: 600;font-size: 15pt;">인원선택</p>						
		  <span style="display: block;">성인</span>						
		  	<span style="font-weight: 600;font-size: 13pt;"><span class="${list.price2}"></span><fmt:formatNumber value="${list.price2}"/>원</span>
		<span style="margin-left: 20px;">						
			<button class="minus" type="button">-</button><input type="text" name="quantity" class="quantity" value="1" readonly><button class="plus" type="button">+</button>					
	 		<input type="hidden" id="pcode" value="${list.pcode }">
	 		<input type="hidden" id="id" value="<%=name %>">
	 		<input type="hidden" id="price" value="${list.price2}">
	 	</span>
			
		<div style="padding:30px 0;">
		    <p><strong style="margin-right: 50px;">총 금액 </strong><span class="total"></span></p>
		</div>
		  <a href="" id="resbtn" class = "btn btn-default" style="line-height: 25px;">예약하기</a>
		  <a href=""><i class="fa fa-heart-o" style="font-size: 16pt;border: 1px solid #444;padding: 7px;border-radius: 5px;"></i></a>						
		</div>						
	</div>							
	</div>							
								
								
</section>								
								
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
    <script type="text/javascript">
		$("#resbtn").on("click", function() {
			var qnt = $(".quantity").val();
			var price = $("#price").val();
			var total = qnt * price;
			var pcode = $("#pcode").val();
			var id = $("#id").val();
			$("#resbtn").prop('href',"/member/reservationviewp.do?pcode="+pcode+"&id="+id+"&qnt="+qnt+"&total="+total)
			
		})
	</script>
    	<%@include file="../footer.jsp" %>