<%@ page language="java" contentType="text/html; charset=UTF-8"								
    pageEncoding="UTF-8"%>								
								
	<%@include file="../header.jsp" %>							
								
	<section>							
	<div class = "container-fluid" style="border-top:2px solid  #000; padding:50px 0px 50px 0px;">							
			<div class ="container">					
			<div class = "row">					
				<div class = "col-md-7">				
					<div class="imgdiv">			
							<img style="width:100%;" src="/resources/images/z1.jpg" alt="." />	
							<span>상품코드 ${oneProductDetail.pcode	}</span>
					</div>			
				</div>				
				<div class ="col-md-5">				
					<div style="margin-top:50px">			
						<p>${oneProductDetail.kind}</p>		
					</div>			
					<div style="margin-top:50px">			
						<p>${oneProductDetail.name}</p>		
					</div>			
					<div style="margin-top:50px">			
						<p>${oneProductDetail.content}</p>		
					</div>			
								
					<div>			
						<span>		
							<i class="fa fa-calendar">	
								<c:if test="${oneProductDetail.period == 0}">
								당일치기
								</c:if>
								<c:if test="${oneProductDetail.period == 1}">
								1박2일
								</c:if>
								<c:if test="${oneProductDetail.period == 2}">
								2박3일
								</c:if>
								<c:if test="${oneProductDetail.period == 3}">
								3박4일
								</c:if>
								<c:if test="${oneProductDetail.period == 4}">
								4박5일
								</c:if>
								<c:if test="${oneProductDetail.period == 5}">
								5박6일
								</c:if>
								<c:if test="${oneProductDetail.period == 6}">
								6박7일
								</c:if>
								<c:if test="${oneProductDetail.period == 7}">
								7박8일
								</c:if>
							</i>	
						</span>		
						<span>		
							<c:if test="${oneProductDetail.airline ne null}">	
								<img src="/resources/images/airplane.png" style="width: 25px; height: 19px; margin-top: -7px;"/>국적기
							</c:if>	
							<c:if test="${oneProductDetail.airline eq null}">	
								<img src="/resources/images/noairplane.png" style="width: 25px; height: 19px; margin-top: -7px;"/>항공없음
							</c:if>	
						</span>		
						<span>		
							<c:if test="${oneProductDetail.hotel ne null}">	
								<img src="/resources/images/hotel.png" style="width: 25px; height: 19px; margin-top: -7px;"/>호텔
							</c:if>	
							<c:if test="${oneProductDetail.hotel eq null}">	
								<img src="/resources/images/nohotel.png" style="width: 25px; height: 19px; margin-top: -7px;"/>호텔없음
							</c:if>	
						</span>		
						<span>		
							<c:if test="${oneProductDetail.guide ne null}">	
								<img src="/resources/images/guide.png" style="width: 25px; height: 19px; margin-top: -7px;"/>가이드
							</c:if>	
							<c:if test="${oneProductDetail.guide eq null}">	
								<img src="/resources/images/noguide.png" style="width: 25px; height: 19px; margin-top: -7px;"/>가이드없음
							</c:if>	
						</span>		
					</div>			
					<div>			
						<span class= "btn btn-default">출발예정</span>		
						<span class= "btn btn-default">일정예정</span>		
						<span class= "btn btn-default">호텔예정</span>		
						<span class= "btn btn-default">가격예정</span>		
					</div>			
					<div class="pull-right">			
						<p>성인 1인</p>		
						<p><span class="${oneProductDetail.price2}"></span><fmt:formatNumber value="${oneProductDetail.price2}"/>원</p>		
					</div>			
				</div>				
			</div>					
		</div>						
	</div>							
	<!-- 상품 정보  -->							
								
	<div class ="container" style="border-top:2px solid #f0f0f0;">							
	<div class="col-md-9">							
	<div class="contentbar">							
    	<div class = "col-md-12">							
    		<h2>여행 주요일정</h2>						
    			<div>					
    				<dl>				
    					<dt class="col-md-2">일정	</dt>		
    					<dd class="col-md-10">			
    						<c:if test="${oneProductDetail.period == 1}">		
								1박2일
							</c:if>	
							<c:if test="${oneProductDetail.period == 2}">	
								2박3일
							</c:if>	
							<c:if test="${oneProductDetail.period == 3}">	
								3박4일
							</c:if>	
							<c:if test="${oneProductDetail.period == 4}">	
							    4박5일	
							</c:if>	
							<c:if test="${oneProductDetail.period == 5}">	
								5박6일
							</c:if>	
							<c:if test="${oneProductDetail.period == 6}">	
								6박7일
							</c:if>	
							<c:if test="${oneProductDetail.period == 7}">	
								7박8일
							</c:if>	
    					</dd>			
    					<dd class="col-md-offset-2 col-md-10">일정시작 : 			
    						<span>		
							  <fmt:parseDate var="startdate" value="${oneProductDetail.startdate }" pattern="yyyy-MM-dd"/>	
							  <fmt:formatDate value="${startdate}" pattern="yyyy.MM.dd (E)"/>	
							</span>	
    					</dd>			
    					<dd class="col-md-offset-2 col-md-10">일정종료 : 			
    						<span>		
							  <fmt:parseDate var="enddate" value="${oneProductDetail.enddate }" pattern="yyyy-MM-dd"/>	
							  <fmt:formatDate value="${enddate}" pattern="yyyy.MM.dd (E)"/>	
							</span>	
    					</dd>			
    								
    					<dt class="col-md-2">여행도시</dt>			
    					<dd class="col-md-10">${oneProductDetail.spot}</dd>			
    					<dt class="col-md-2">예약현황</dt>			
    					<dd class="col-md-10">예약인원</dd>			
    					<dd class="col-md-offset-2 col-md-10">남은좌석</dd>			
    				</dl>				
    			</div>					
    	</div>							
    	<div class="col-md-12" style="border-top:2px solid #f0f0f0;">							
    	 <h2>이미지로 캡쳐해서 가져오기</h2>							
    	</div>							
	</div>							
	</div>							
	<div class="col-md-3 product" style="border-left:1px solid #f0f0f0;">							
		<div class="rightCol">						
		  <p>인원선택</p>						
		  <p>성인</p>						
		  <p><span class="${oneProductDetail.price2}"></span><fmt:formatNumber value="${oneProductDetail.price2}"/>원</p>						
		<div style="padding:20px 0;">						
			<button class="minus" type="button">-</button>					
			<input type="text" name="quantity" class="quantity" value="1" readonly>					
			<button class="plus" type="button">+</button>					
	 	</div>						
		<div style="padding:30px 0;">						
			<strong>총 금액 </strong>					
		    <span class="total"></span>						
		</div>						
		  <p>*쇼핑몰 에서 가저오기 *중요* </p>						
		  <button class = "btn">예약하기</button>						
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
    	<%@include file="../footer.jsp" %>							
