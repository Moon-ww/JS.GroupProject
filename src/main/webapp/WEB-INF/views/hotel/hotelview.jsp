<%@ page language="java" contentType="text/html; charset=UTF-8"													
    pageEncoding="UTF-8"%>													
													
	<%@include file="../header.jsp" %>												
	
	<section>												
	<div class="container-fluid" style="border-top: 1px solid #000;">												
		<div class="container"											
			style="border-bottom: 2px solid #000; padding-top: 25px; padding-bottom: 50px;">										
			<%-- <div class="row">				
				<div class="col-md-3"><input type="text" value="${list2.name }"></div>
				<a class="btn btn-default col-md-offset-7 col-md-2"									
					style="width: 100px; height: 33px; padding: 15; margin-top: 20px">2022.02</a>								
			</div> --%>
		</div>											
	</div>												
													
	<div class="container">												
		<div class="row" style="">											
			<div class="col-md-12">
				<div class="col-md-7" style="margin-top: 50px;">								
						<img src="/upload/${list2.image }" alt="" style="width: 600px; height: 460px;" />						
					</div>
					<div class="col-md-5" style="margin-top: 70px; border-bottom: 1px solid #ccc;">								
						<p><strong style="font-size: 17pt;">${list2.name}</strong></p><br>			
						<p>${list2.content}</p><br>
						<p>${list2.place}</p>	<br>						
						<p>${list2.hash}</p><br>							
					</div>
					<div class="col-md-3" style="margin-top: 50px;">
						<span style="font-size: 12pt;font-weight: 600;">1박 요금 최저가<br>
						<span style="font-size: 10pt;font-weight: 400;">세금, 봉사료 포함</span></span>
						
					</div>
					<div class="col-md-2" style="margin-top: 50px; text-align: right;">
                         <span style="font-weight: 600; font-size: 22pt">
                         <fmt:formatNumber value="${list2.price }"/></span><span> 원~</span>
                     </div>	
			</div><!--최저가  -->
		</div>								
	</div>	
		<div class="container">												
			<div class="row" style="margin-top: 100px;border-bottom: 2px solid #444;padding-bottom: 20px;">	
				<p style="border-top: 2px solid #444;padding-top: 30px;">
				<strong style="font-size: 16pt;">숙소 정보</strong></p>
				<p>${list2.location }</p>
				<p>${list2.roomcount }객실</p>
			</div>
		</div>
		<div class="container">												
			<div class="row" style="margin-top: 100px;">	
			<p style="border-bottom: 1px solid #ccc;padding-bottom: 10px;">
			<strong style="font-size: 14pt;">전체 객실</strong></p>
				<c:forEach items="${list}" var="list">					
					<div class="col-md-12" style="border-bottom: 1px solid #ccc;margin-bottom: 40px;">				
						<div class="col-md-5" style="margin-top: 30px;margin-bottom: 30px;">
							<p><strong style="font-size: 14pt;">${list.title}</strong></p>
							<span style="font-size: 10pt;">${list.hash}</span>
						</div>
						<div  class="col-md-3" style="margin-top: 30px;">
							<span style="font-size: 10pt;">${list.options}</span>
						</div>
						<div class="col-md-2" style="margin-top: 30px;margin-bottom: 30px;text-align: right;">			
							<p>1박 기준</p><span style="font-weight: 600; font-size: 15pt;">
							<fmt:formatNumber value="${list.price }"/></span><span style="font-size: 10pt;">원</span>
						</div>
						<div class="col-md-2" style="margin-top: 30px;margin-bottom: 30px;">			
							<!-- Button trigger modal -->
<button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" style="width: 130px;height: 40px;line-height: 30px;">
  예약하기<!-- 세종 -->
</button>
<input type="hidden" id="hseq" value="${list.hseq}">
<input type="hidden" id="id" value="<%=name %>">

<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">알림</h4>
      </div>
      <div class="modal-body">
1. 룸 업그레이드 프로모션<br><br>

스탠다드 예약시 -> 무료 업그레이드 (디럭스 트윈,디럭스 패밀리 트윈, 발코니패밀리 트윈중 랜덤으로 배정. 지정불가)<br><br><br>


※ 상품 예약 시 <투숙 인원 기재 필수><br><br>

[예약방법]<br><br>

■반드시 룸타입 앞에 [무료업그레이드] 가 써있는 룸으로 예약을 해주셔야 적용 됩니다.<br><br>

■[특가].[한정특가] 룸타입은 적용이 불가능합니다.<br>
■호텔 사정에 의해 업그레이드가 불가능할 수 있습니다.<br><br><br>


2. 연박 할인<br><br>

전 객실 2박 이상 연박시 5% 추가 할인 적용<br><br><br>


[예약방법]<br><br>

■2박 이상 검색시 전체금액에서 자동으로 5% 할인되어 노출됩니다.<br><br>
        
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-primary" id="resbtn_hotel">확인</button>
      </div>
    </div>
  </div>
</div>
						</div>
				</div>
			</c:forEach>
			</div>
		</div>
		<div class="container">												
			<div class="row" style="">
				<img alt="" src="/resources/images/hoteldetailimg.jpg" style="width: 100%">
			</div>
		</div>
</section>

<script type="text/javascript">
	$(document).ready(function(){
		var id = $("#id").val();
		var hseq = $("#hseq").val();
		$("#resbtn_hotel").on("click", function() {
			location.href='/member/reservationviewh.do?id='+id+'&hseq='+hseq;
		})
	})
		
</script>

<script>

$('#myModal').on('shown.bs.modal', function () {
	  $('#myInput').focus()
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
