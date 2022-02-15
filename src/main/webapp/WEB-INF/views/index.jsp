<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ include file="header.jsp" %>

<!-- 제가 한번 git을 써보겠습니다. -->	

<section>
<div class="container-fluid">
	<div class="row mainvisual">
	<form name="search" action="/product/productSearchview.do">
	<div class="col-md-4 ment" style="margin: 70px 0 0 110px; height: auto;">
			<p>고객님,<br><span style="font-weight: 600" id="scroll">어떤 여행을 꿈꾸시나요?</span></p>
			<div class="dropdown2">
			  <div onclick="myFunction()" class="dropbtn where" id="placeselect" style="width: 330px;" >어디로 떠나세요?</div>
			  <div id="myDropdown" class="dropdown-content acon" style="margin: 70px 0 0 0;">
			    <a href="javascript:void(0)">제주시</a>
			    <a href="javascript:void(0)">서울시</a>
			    <a href="javascript:void(0)">부산시</a>
			    <a href="javascript:void(0)">울릉도</a>
			    <a href="javascript:void(0)">강원도</a>
			    <a href="javascript:void(0)">충청북도</a>
			    <a href="javascript:void(0)">경상북도</a>
			    <a href="javascript:void(0)">충청남도</a>
			    <a href="javascript:void(0)">경상남도</a>
			    <a href="javascript:void(0)">인천</a>
			  	</div>
			  	<input type="hidden" name="spot" id="spot">
				</div>
			<input value="" type="text" class="mbtn1 datepicker" id="startDate" name="startdate" placeholder="여행시작일 선택" readonly style="cursor: pointer; width: 330px;">
			<button type="submit" class="mbtn3" >패키지 검색</button>
	</div>
	</form>
	<div class="col-md-6" style="margin: 50px 0 50px 0;">
		<!-- swiper슬라이더 메인컨테이너 -->
		<div class="swiper-container swiper1">
		  <!-- 보여지는 영역 -->
		  <div class="swiper-wrapper">
		    <!-- div class="swiper-slide" 를 추가하면된다 -->
		    <div class="swiper-slide">
		      <img src="/resources/images/Screenshot_1.png" alt="." />
		    </div>
		    <div class="swiper-slide">
		      <img src="/resources/images/Screenshot_2.png" alt="." />
		    </div>
		    <div class="swiper-slide">
		      <img src="/resources/images/Screenshot_3.png" alt="." />
		    </div>
		    <div class="swiper-slide">
		      <img src="/resources/images/Screenshot_4.png" alt="." />
		    </div>
		   </div>
		  <!-- 페이징 버튼 처리 -->
		  <!-- <div class="swiper-pagination"></div> -->
		
		  <!-- 방향 버튼 상황에 따라 추가 삭제가능 -->
		  <!-- <div class="swiper-button-prev"></div>
		  <div class="swiper-button-next"></div> -->
		</div>
	</div>
	</div>
</div>
   
   <!-- contents -->
	<div class="container-fluid">
		<div class="row">
		<div class="col-md-1"></div>
            <div class="col-md-10">
               <h2 class="category" style="margin: 50px 0 30px 0px;">고객님만을 위한 추천여행</h2>
               <!-- swiper슬라이더 메인컨테이너 -->
		<div class="swiper-container swiper3">
		  <!-- 보여지는 영역 -->
		  <div class="swiper-wrapper">
		    <!-- div class="swiper-slide" 를 추가하면된다 -->
		    <div class="swiper-slide">
		      <img src="/resources/images/z1.jpg" alt="." style="width: 300px; height: 200px;"/>
		      <ul>
             		<li style="width: 300px;margin-top:20px;color: #007aff">패키지</li>
             		<li style="width: 300px;font-weight: 600;font-size: 15pt">[에어카텔] 제주 3일 #신화월드 #신화관 #중형렌터카 #2인1실 #웰니스 ECO투어포함</li>
             		<li style="width: 300px;margin-top:10px; font-weight: 600;font-size: 20pt">399,000<span style="font-weight: 400;font-size: 15pt">원~</span></li>
             </ul>
		    </div>
		    <div class="swiper-slide">
		      <img src="/resources/images/z2.jpg" alt="." style="width: 300px; height: 200px;"/>
		      <ul>
             		<li style="width: 300px;margin-top:20px;color: #007aff">패키지</li>
             		<li style="width: 300px;font-weight: 600;font-size: 15pt">[에어카텔] 제주 3일 #신화월드 #신화관 #중형렌터카 #2인1실 #웰니스 ECO투어포함</li>
             		<li style="width: 300px;margin-top:10px; font-weight: 600;font-size: 20pt">399,000<span style="font-weight: 400;font-size: 15pt">원~</span></li>
             </ul>
		    </div>
		    <div class="swiper-slide">
		      <img src="/resources/images/z3.jpg" alt="." style="width: 300px; height: 200px;"/>
		      <ul>
             		<li style="width: 300px;margin-top:20px;color: #007aff">패키지</li>
             		<li style="width: 300px;font-weight: 600;font-size: 15pt">[에어카텔] 제주 3일 #신화월드 #신화관 #중형렌터카 #2인1실 #웰니스 ECO투어포함</li>
             		<li style="width: 300px;margin-top:10px; font-weight: 600;font-size: 20pt">399,000<span style="font-weight: 400;font-size: 15pt">원~</span></li>
             </ul>
		    </div>
		    <div class="swiper-slide">
		      <img src="/resources/images/z4.jpg" alt="." style="width: 300px; height: 200px;"/>
		      <ul>
             		<li style="width: 300px;margin-top:20px;color: #007aff">패키지</li>
             		<li style="width: 300px;font-weight: 600;font-size: 15pt">[에어카텔] 제주 3일 #신화월드 #신화관 #중형렌터카 #2인1실 #웰니스 ECO투어포함</li>
             		<li style="width: 300px;margin-top:10px; font-weight: 600;font-size: 20pt">399,000<span style="font-weight: 400;font-size: 15pt">원~</span></li>
             </ul>
		      <div class="swiper-slide">
		      <img src="/resources/images/z1.jpg" alt="." style="width: 300px; height: 200px;"/>
		      <ul>
             		<li style="width: 300px;margin-top:20px;color: #007aff">패키지</li>
             		<li style="width: 300px;font-weight: 600;font-size: 15pt">[에어카텔] 제주 3일 #신화월드 #신화관 #중형렌터카 #2인1실 #웰니스 ECO투어포함</li>
             		<li style="width: 300px;margin-top:10px; font-weight: 600;font-size: 20pt">399,000<span style="font-weight: 400;font-size: 15pt">원~</span></li>
             </ul>
		    </div>
		    <div class="swiper-slide">
		      <img src="/resources/images/z2.jpg" alt="." style="width: 300px; height: 200px;"/>
		      <ul>
             		<li style="width: 300px;margin-top:20px;color: #007aff">패키지</li>
             		<li style="width: 300px;font-weight: 600;font-size: 15pt">[에어카텔] 제주 3일 #신화월드 #신화관 #중형렌터카 #2인1실 #웰니스 ECO투어포함</li>
             		<li style="width: 300px;margin-top:10px; font-weight: 600;font-size: 20pt">399,000<span style="font-weight: 400;font-size: 15pt">원~</span></li>
             </ul>
		    </div>
		    <div class="swiper-slide">
		      <img src="/resources/images/z3.jpg" alt="." style="width: 300px; height: 200px;"/>
		      <ul>
             		<li style="width: 300px;margin-top:20px;color: #007aff">패키지</li>
             		<li style="width: 300px;font-weight: 600;font-size: 15pt">[에어카텔] 제주 3일 #신화월드 #신화관 #중형렌터카 #2인1실 #웰니스 ECO투어포함</li>
             		<li style="width: 300px;margin-top:10px; font-weight: 600;font-size: 20pt">399,000<span style="font-weight: 400;font-size: 15pt">원~</span></li>
             </ul>
		    </div>
		    <div class="swiper-slide">
		      <img src="/resources/images/z4.jpg" alt="." style="width: 300px; height: 200px;"/>
		      <ul>
             		<li style="width: 300px;margin-top:20px;color: #007aff">패키지</li>
             		<li style="width: 300px;font-weight: 600;font-size: 15pt">[에어카텔] 제주 3일 #신화월드 #신화관 #중형렌터카 #2인1실 #웰니스 ECO투어포함</li>
             		<li style="width: 300px;margin-top:10px; font-weight: 600;font-size: 20pt">399,000<span style="font-weight: 400;font-size: 15pt">원~</span></li>
             </ul>
		    </div>
		    </div>
		   </div>
		  <!-- 페이징 버튼 처리 -->
		  <!-- <div class="swiper-pagination"></div> -->
		
		  <!-- 방향 버튼 상황에 따라 추가 삭제가능 -->
		  <!-- <div class="swiper-button-prev"></div>
		  <div class="swiper-button-next"></div> -->
		</div>
             </div>
	</div>
	<div class="col-md-1"></div>
</div>
     		<!-- 추천여행 -->
	<div class="container-fluid">
		<div class="row">
   			<div class="col-md-1">
   			</div>
   		
     		<div class="col-md-10">
     			<h2 class="category" style="margin: 50px 0 30px 0px;">내 나라 구석구석</h2>
     			<ul class="mycountry">
     				<li>
     				<img src="/resources/images/gangwon.jpg" alt="" />
     				<p class="item_title">강원</p>
     				<p class="item_text">눈꽃 열차와 강원 설경<br>원데이투어 겨울여행</p>
     				</li>
     				<li>
     				<img src="/resources/images/yeosoo.jpg" alt="" />
     				<p class="item_title">여수</p>
     				<p class="item_text">바다 품은 낭만 오션뷰<br>여수밤바다 겨울여행</p>
     				</li>
     				<li>
     				<img src="/resources/images/jeju.jpg" alt="" style="border-radius: 50%;width:300px;height:300px;margin: 0;"/>
     				<p class="item_title">제주</p>
     				<p class="item_text">따뜻한 남쪽 나라에서<br>미리 봄, 제주</p>
     				<span class="value">추천</span>
     				</li>
     				<li>
     				<img src="/resources/images/soeul.jpg" alt="" />
     				<p class="item_title">서울</p>
     				<p class="item_text">롯데월드 자유이용권<br>짜릿한 액티비티와 호캉스</p>
     				</li>
     				<li>
     				<img src="/resources/images/busan.jpg" alt="" />
     				<p class="item_title">부산</p>
     				<p class="item_text">자유롭게 부산여행<br>이것저것 준비해보기!</p>
     				</li>
     			</ul>
     		</div>
   		
     		<div class="col-md-1">
     		</div>
	</div>
</div>
     		<!-- 내 나라 구석구석 -->
   </section>
   
	<script type="text/javascript">
	const swiper1 = new Swiper('.swiper1', {
    //기본 셋팅
    //방향 셋팅 vertical 수직, horizontal 수평 설정이 없으면 수평
    direction : 'horizontal',
    //한번에 보여지는 페이지 숫자
    slidesPerView : 1,
    //페이지와 페이지 사이의 간격
    spaceBetween : 0,
    //드레그 기능 true 사용가능 false 사용불가
    debugger : true,
    //마우스 휠기능 true 사용가능 false 사용불가
    mousewheel : false,
    //반복 기능 true 사용가능 false 사용불가
    loop : true,
    //선택된 슬라이드를 중심으로 true 사용가능 false 사용불가 djqt
    centeredSlides : true,
    // 페이지 전환효과 slidesPerView효과와 같이 사용 불가
    // effect: 'fade',
    speed : 1000,
    //자동 스크를링
    autoplay : {
        //시간 1000 이 1초
        delay : 3500,
        disableOnInteraction : false,
    },
    //페이징
    pagination : {
        //페이지 기능
        el : '.swiper-pagination',
        //클릭 가능여부
        clickable : true,
    },
    //방향표
    navigation : {
        //다음페이지 설정
        nextEl : '.swiper-button-next',
        //이전페이지 설정
        prevEl : '.swiper-button-prev',
    },
});
</script>
<script type="text/javascript">
	const swiper3 = new Swiper('.swiper3', {
		//기본 셋팅
	    //방향 셋팅 vertical 수직, horizontal 수평 설정이 없으면 수평
	    direction : 'horizontal',
	    //한번에 보여지는 페이지 숫자
	    slidesPerView : 4,
	    //페이지와 페이지 사이의 간격
	    spaceBetween : 2,
	    //드레그 기능 true 사용가능 false 사용불가
	    debugger : true,
	    //마우스 휠기능 true 사용가능 false 사용불가
	    mousewheel : false,
	    //반복 기능 true 사용가능 false 사용불가
	    loop : true,
	    //선택된 슬라이드를 중심으로 true 사용가능 false 사용불가 djqt
	    centeredSlides : false,
	    // 페이지 전환효과 slidesPerView효과와 같이 사용 불가
	    // effect: 'fade',
	    speed : 1000,
	    //자동 스크를링
	    autoplay : {
	        //시간 1000 이 1초
	        delay : 3500,
	        disableOnInteraction : false,
	    },
	    //페이징
	    pagination : {
	        //페이지 기능
	        el : '.swiper-pagination',
	        //클릭 가능여부
	        clickable : true,
	    },
	    //방향표
	    navigation : {
	        //다음페이지 설정
	        nextEl : '.swiper-button-next',
	        //이전페이지 설정
	        prevEl : '.swiper-button-prev',
	    },
	})
</script>
<script type="text/javascript">
/* When the user clicks on the button,
toggle between hiding and showing the dropdown content */
function myFunction() {
  document.getElementById("myDropdown").classList.toggle("show");
}

// Close the dropdown menu if the user clicks outside of it
window.onclick = function(event) {
  if (!event.target.matches('.dropbtn')) {
    var dropdowns = document.getElementsByClassName("dropdown-content");
    var i;
    for (i = 0; i < dropdowns.length; i++) {
      var openDropdown = dropdowns[i];
      if (openDropdown.classList.contains('show')) {
        openDropdown.classList.remove('show');
      }
    }
  }
}
</script>
<script>
	$("#myDropdown a").on("click",function(){
		var text = $(this).text();
        $('#placeselect').text(text);
        $('#spot').val(text);
        console.log($('#spot').val());
	})
</script>

<script type="text/javascript">
    $(document).ready(function () {
            $.datepicker.setDefaults($.datepicker.regional['ko']); 
            $( "#startDate" ).datepicker({
                 changeMonth: true, 
                 changeYear: true,
                 nextText: '다음 달',
                 prevText: '이전 달', 
                 dayNames: ['일요일', '월요일', '화요일', '수요일', '목요일', '금요일', '토요일'],
                 dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'], 
                 monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
                 monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
                 dateFormat: "yy-mm-dd",
                 minDate: 0,                       // 선택할수있는 최소날짜, ( 0 : 오늘 이후 날짜 선택 불가)
                 beforeShow: function(input, inst) {
        		// Handle calendar position before showing it.
        		// It's not supported by Datepicker itself (for now) so we need to use its internal variables.
        		var calendar = inst.dpDiv;

		        // Dirty hack, but we can't do anything without it (for now, in jQuery UI 1.8.20)
		        setTimeout(function() {
		            calendar.position({
		                my: 'bottom-top',
		                at: 'right bottom',
		                collision: 'none',
		                of: input
		            	});
		        	}, 1);
		    	},
                 onClose: function( selectedDate ) {    
                      //시작일(startDate) datepicker가 닫힐때
                      //종료일(endDate)의 선택할수있는 최소 날짜(minDate)를 선택한 시작일로 지정
                     //$("#endDate").datepicker( "option", "minDate", selectedDate );
                 }    
            });
            /* $( "#endDate" ).datepicker({
                 changeMonth: true, 
                 changeYear: true,
                 nextText: '다음 달',
                 prevText: '이전 달', 
                 dayNames: ['일요일', '월요일', '화요일', '수요일', '목요일', '금요일', '토요일'],
                 dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'], 
                 monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
                 monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
                 dateFormat: "yy-mm-dd",
                 maxDate: 0,                       // 선택할수있는 최대날짜, ( 0 : 오늘 이후 날짜 선택 불가)
                 onClose: function( selectedDate ) {    
                     // 종료일(endDate) datepicker가 닫힐때
                     // 시작일(startDate)의 선택할수있는 최대 날짜(maxDate)를 선택한 시작일로 지정
                     //$("#startDate").datepicker( "option", "maxDate", selectedDate );
                 }    
 
            });     */
    });
</script>
<script type="text/javascript">
	$("#startDate").on("click", function() {
		/* window.scrollBy({ top: 200, left: 0, behavior: 'smooth' }); */
		document.querySelector('#scroll').scrollIntoView({ behavior: 'smooth' });
	})
	$("#placeselect").on("click", function() {
		/* window.scrollBy({ top: 200, left: 0, behavior: 'smooth' }); */
		document.querySelector('#scroll').scrollIntoView({ behavior: 'smooth' });
	})
</script>
	
   <%@ include file="footer.jsp" %>