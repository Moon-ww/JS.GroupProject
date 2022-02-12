<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ include file="../header.jsp" %>
    
<section>
    <div id="carousel-example-generic" class="carousel slide" style="margin-top: 5px;" data-ride="carousel">
    
     
  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    <div class="item active">
      <img src="/resources/images/bnr_pc_sm (1).jpg" alt="...">
      <div class="carousel-caption">
      </div>
    </div>
    <div class="item">
      <img src="/resources/images/bnr_pc_sm (2).jpg" alt="...">
      <div class="carousel-caption">
      </div>
    </div>
    <div class="item">
      <img src="/resources/images/bnr_pc_sm (3).jpg" alt="...">
      <div class="carousel-caption">
      </div>
    </div>
    <div class="item">
      <img src="/resources/images/bnr_pc_sm (4).jpg" alt="...">
      <div class="carousel-caption">
      </div>
    </div>
    <div class="item">
      <img src="/resources/images/bnr_pc_sm (5).jpg" alt="...">
      <div class="carousel-caption">
      </div>
    </div>
     <div class="item">
      <img src="/resources/images/bnr_pc_sm.jpg" alt="...">
      <div class="carousel-caption">
      </div>
    </div>
  </div>

  <!-- Controls -->
  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev" style="position: absolute; top: 204px; left: 209px; background-image: none;">
    <i class="fa fa-angle-left" aria-hidden="true" style="border: 1px solid #f2e3e3; width: 26px; height: 22px;"></i>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next" style="background-image: none;">
    <i class="fa fa-angle-right" aria-hidden="true" style="position: absolute; top: 207px; right: 1149px; border: 1px solid #f2e3e3; width: 26px; height: 22px;"></i>
    <span class="sr-only">Next</span>
  </a>
</div>


<div class="container-fluid">
      <div class="row">
      <form name="search" action="">
         <div class="col-md-12 ment2" style="" id="scroll">
         	<div class="dropdown2">
			  <div onclick="myFunction2()" class="dropbtn where" id="place" >어디로 떠나세요?</div>
			  <div id="myDropdown2" class="dropdown-content acon" style="margin: 70px 0 0 0;">
			    <a href="javascript:void(0)">제주도</a>
			    <a href="javascript:void(0)">전라북도</a>
			    <a href="javascript:void(0)">부산</a>
			    <a href="javascript:void(0)">전라남도</a>
			    <a href="javascript:void(0)">강원도</a>
			    <a href="javascript:void(0)">충청북도</a>
			    <a href="javascript:void(0)">경상북도</a>
			    <a href="javascript:void(0)">충청남도</a>
			    <a href="javascript:void(0)">경상남도</a>
			    <a href="javascript:void(0)">인천</a>
			  	</div>
			  	<input type="hidden" name="place" id="placeinput">
				</div>
			<input type="text" class="mbtn1" id="startDate" name="stardate" placeholder="여행시작일 선택" readonly style="cursor: pointer;"><button class="mbtn2" style="" >검색</button>
	</div>
	</form>
         </div>
      </div>
</section>

   <section>

   <!-- contents -->
   <div class="container-fluid" style="margin: 100px 0 0 150px;position: relative;">
		<div class="submain htl mt100">
		<div class="prod_layout">
		<div class="fl">
		<div class="swiper-button-prev"><img alt="" src="/resources/images/ico-arrow-left.png" style="margin: 90px 0px 100px 660px; border: 1px solid #ccc;border-radius: 50%;background: #fff;width: 40px;height: 40px;"></div>
		</div> 
		<div class="fr">
		<div class="swiper-container swip1">
		<ul class="swiper-wrapper" id="swiper-wrapper" aria-live="polite" style="transform: translate3d(0px, 0px, 0px); transition-duration: 0ms;margin-top:30px; ">
		<li class="swiper-slide swiper-slide-active" role="group" aria-label="1 / 4" style="width: 284px;height:470px;margin-right: 28px;">
		<div class="img"style="width: 284px;">
		<img src="/resources/images/z1.jpg" title="" data-src="" class="" alt=""style="width: 284px;height: 220px;">
		</div>
		<div class="txt"style="width: 284px;border-bottom: 1px solid #ccc;border-right: 1px solid #ccc; box-shadow: 7px 7px 7px -5px #ccc;">
		<div class="name_wrap2"style="margin-top: 50px;">
		<strong class="item_title">그랜드 하얏트 제주</strong> 
		<p class="stxt2">[★타임세일특가★] ~4월 30일 체크인까지</p>
		</div> 
		<div class="price_group">
		<p class="discount"></p> 
		<strong class="price" style="font-size: 22pt;">304,000<span>원~</span></strong>
		</div> 
		<div class="hash_group" style="margin-top: 10px;">
		<span class="hash" style="border: 1px solid #ccc;padding: 3px;">#2박 이상시 런치 뷔페 1회 제공</span>
		</div>
		</div>
		</li>
		<li class="swiper-slide swiper-slide-active" role="group" aria-label="2 / 4" style="width: 284px;height:470px;margin-right: 28px;">
		<div class="img">
		<img src="/resources/images/z1.jpg" title="" data-src="" class="" alt=""style="width: 284px;height: 220px;">
		</div>
		<div class="txt"style="width: 284px;border-bottom: 1px solid #ccc;border-right: 1px solid #ccc; box-shadow: 7px 7px 7px -5px #ccc;">
		<div class="name_wrap2"style="margin-top: 50px;">
		<strong class="item_title">그랜드 하얏트 제주</strong> 
		<p class="stxt2">[★타임세일특가★] ~4월 30일 체크인까지</p>
		</div> 
		<div class="price_group">
		<p class="discount"></p> 
		<strong class="price" style="font-size: 22pt;">304,000<span>원~</span></strong>
		</div> 
		<div class="hash_group" style="margin-top: 10px;">
		<span class="hash" style="border: 1px solid #ccc;padding: 3px;">#2박 이상시 런치 뷔페 1회 제공</span>
		</div>
		</div>
		</li>
		<li class="swiper-slide swiper-slide-active" role="group" aria-label="3 / 4" style="width: 284px;height:470px;margin-right: 28px;">
		<div class="img">
		<img src="/resources/images/z1.jpg" title="" data-src="" class="" alt=""style="width: 284px;height: 220px;">
		</div>
		<div class="txt"style="width: 284px;border-bottom: 1px solid #ccc;border-right: 1px solid #ccc; box-shadow: 7px 7px 7px -5px #ccc;">
		<div class="name_wrap2"style="margin-top: 50px;">
		<strong class="item_title">그랜드 하얏트 제주</strong> 
		<p class="stxt2">[★타임세일특가★] ~4월 30일 체크인까지</p>
		</div> 
		<div class="price_group">
		<p class="discount"></p> 
		<strong class="price" style="font-size: 22pt;">304,000<span>원~</span></strong>
		</div> 
		<div class="hash_group" style="margin-top: 10px;">
		<span class="hash" style="border: 1px solid #ccc;padding: 3px;">#2박 이상시 런치 뷔페 1회 제공</span>
		</div>
		</div>
		</li>
		<li class="swiper-slide swiper-slide-active" role="group" aria-label="4 / 4" style="width: 284px;height:470px;margin-right: 28px;">
		<div class="img">
		<img src="/resources/images/z1.jpg" title="" data-src="" class="" alt=""style="width: 284px;height: 220px;">
		</div>
		<div class="txt"style="width: 284px;border-bottom: 1px solid #ccc;border-right: 1px solid #ccc; box-shadow: 7px 7px 7px -5px #ccc;">
		<div class="name_wrap2"style="margin-top: 50px;">
		<strong class="item_title">그랜드 하얏트 제주</strong> 
		<p class="stxt2">[★타임세일특가★] ~4월 30일 체크인까지</p>
		</div> 
		<div class="price_group">
		<p class="discount"></p> 
		<strong class="price" style="font-size: 22pt;">304,000<span>원~</span></strong>
		</div> 
		<div class="hash_group" style="margin-top: 10px;">
		<span class="hash" style="border: 1px solid #ccc;padding: 3px;">#2박 이상시 런치 뷔페 1회 제공</span>
		</div>
		</div>
		</li>
		</ul> 
			
		    <div class="swiper-button-next"><img alt="" src="/resources/images/ico-arrow-right.png" style="margin: -10px 0px 100px 0px; border: 1px solid #ccc;border-radius: 50%;background: #fff;width: 40px;height: 40px;"></div>
		</div>
		</div>
		</div>
		</div>
		</div>
   <!-- 내 나라 구석구석 -->
   <div class="container" style="margin-top: 100px;">
   <h3 style="font-weight: 600">2022년 특별한 국내호텔</h3>
      <div role="tabpanel" class="category-tab">
           <!-- Nav tabs -->
           <ul class="nav nav-tabs n3 n4" role="tablist" id="mytab">
             <li role="presentation" class="active"><a href="#조식" aria-controls="조식" role="tab" data-toggle="tab">이 집 조식 잘하네</a></li>
             <li role="presentation"><a href="#이국" aria-controls="이국" role="tab" data-toggle="tab">국내의 이국감성 호텔</a></li>
             <li role="presentation"><a href="#가족" aria-controls="가족" role="tab" data-toggle="tab">가족과 즐기는 주말</a></li>
           </ul>
			<!-- Tab panes -->
                 <div class="tab-content"style="margin-top:40px;">
                   <div role="tabpanel" class="tab-pane active" id="조식">
                      	<div class="" >
                      	<c:forEach items="${list}" var="list">
                      		<div class="thumbnail2 col-md-4" onclick="location.href='hotelview.do?hseq=${list.hseq }'">
                      			 
                      			 <img src="/upload/${list.image }" alt="" style="width: 350px; height: 200px;" />
                      			 
                      			<div role="tabpanel" class="category-tab">
                      			<ul class="">
                              <li style="width: 350px; margin-top: 20px; color: #007aff">
                              <a href=""style=" color: #007aff">${list.place }</a>
                              <c:set var="a" value="${fn:split(list.hash,'#')}" />
								<c:forEach var="b" items="${a}" varStatus="c">
                              <span style="border: 1px solid #444;padding: 5px;float: right; color: black;margin-right: 3px;">
                              		<c:if test="${c.count == 1}">${b}</c:if>
							       <c:if test="${c.count == 2}">${b}</c:if></span>
								</c:forEach></li>
                              <li style="width: 350px; font-weight: 600; font-size: 15pt;overflow: hidden;">${list.name}</li>
                              <li style="width: 350px; margin-top: 10px; font-weight: 600; font-size: 20pt"><fmt:formatNumber value="${list.price }"/>
                              <span style="font-weight: 400; font-size: 15pt">원~</span>
                              </li>
                           		</ul>
								</div>
								
							</div>
							</c:forEach>
					</div>
			</div>
			<div role="tabpanel" class="tab-pane" id="이국">
                      	<div class="">
                      	<c:forEach items="${list2}" var="list">
                      		<div class="thumbnail2 col-md-4" onclick="location.href='hotelview.do?hseq=${list.hseq }'">
                      			 
                      			 <img src="/upload/${list.image }" alt="" style="width: 350px; height: 200px;" />
                      			 
                      			<div role="tabpanel" class="category-tab">
                      			<ul class="">
                              <li style="width: 350px; margin-top: 20px; color: #007aff">
                              <a href=""style=" color: #007aff">${list.place }</a>
                              <c:set var="a" value="${fn:split(list.hash,'#')}" />
								<c:forEach var="b" items="${a}" varStatus="c">
                              <span style="border: 1px solid #444;padding: 5px;float: right; color: black;margin-right: 3px;">
                              		<c:if test="${c.count == 1}">${b}</c:if>
							       <c:if test="${c.count == 2}">${b}</c:if></span>
								</c:forEach></li>
                              <li style="width: 350px; font-weight: 600; font-size: 15pt;overflow: hidden;">${list.name}</li>
                              <li style="width: 350px; margin-top: 10px; font-weight: 600; font-size: 20pt"><fmt:formatNumber value="${list.price }"/>
                              <span style="font-weight: 400; font-size: 15pt">원~</span>
                              </li>
                           		</ul>
								</div>
							</div>
							</c:forEach>
					</div>
			</div>
			<div role="tabpanel" class="tab-pane" id="가족">
                      	<div class="">
                      	<c:forEach items="${list3}" var="list">
                      		<div class="thumbnail2 col-md-4" onclick="location.href='hotelview.do?hseq=${list.hseq }'">
                      			 
                      			 <img src="/upload/${list.image }" alt="" style="width: 350px; height: 200px;" />
                      			 
                      			<div role="tabpanel" class="category-tab">
                      			<ul class="">
                              <li style="width: 350px; margin-top: 20px; color: #007aff">
                              <a href=""style=" color: #007aff">${list.place }</a>
                              <c:set var="a" value="${fn:split(list.hash,'#')}" />
								<c:forEach var="b" items="${a}" varStatus="c">
                              <span style="border: 1px solid #444;padding: 5px;float: right; color: black;margin-right: 3px;">
                              		<c:if test="${c.count == 1}">${b}</c:if>
							       <c:if test="${c.count == 2}">${b}</c:if></span>
								</c:forEach></li>
                              <li style="width: 350px;height:35px; font-weight: 600; font-size: 15pt;overflow: hidden;">${list.name}</li>
                              <li style="width: 350px; margin-top: 10px; font-weight: 600; font-size: 20pt"><fmt:formatNumber value="${list.price }"/>
                              <span style="font-weight: 400; font-size: 15pt">원~</span>
                              </li>
                           		</ul>
								</div>
							</div>
							</c:forEach>
					</div>
			</div>
		</div>
      </div><!-- 탭 엔드 -->
   </div><!--컨테이너  엔드-->

</section>
   
   
                 
   
   
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
     <!-- <script type="text/javascript">
	/* When the user clicks on the button,
	toggle between hiding and showing the dropdown content */
	function myFunction() {
	  document.getElementById("myDropdown").classList.toggle("show");
	}
	
	// Close the dropdown menu if the user clicks outside of it
	window.onclick = function(event) {
	  if (!event.target.matches('.start')) {
	    var dropdowns = document.getElementsByClassName("bcon");
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
        $('#start').text(text);
        $('#startinput').val(text);
        console.log($('#startinput').val());
	})
</script> -->

<script type="text/javascript">
	/* When the user clicks on the button,
	toggle between hiding and showing the dropdown content */
	function myFunction2() {
	  document.getElementById("myDropdown2").classList.toggle("show");
	}
	
	// Close the dropdown menu if the user clicks outside of it
	window.onclick = function(event) {
	  if (!event.target.matches('.where')) {
	    var dropdowns2 = document.getElementsByClassName("acon");
	    var i;
	    for (i = 0; i < dropdowns2.length; i++) {
	      var openDropdown = dropdowns2[i];
	      if (openDropdown.classList.contains('show')) {
	        openDropdown.classList.remove('show');
	      }
	    }
	  }
	}
</script>

<script>
	$("#myDropdown2 a").on("click",function(){
		var text = $(this).text();
        $('#place').text(text);
        $('#placeinput').val(text);
        console.log($('#placeinput').val());
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
            $( "#endDate" ).datepicker({
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
 
            });    
    });
</script>

<script type="text/javascript">
	$("#startDate").on("click", function() {
		/* window.scrollBy({ top: 200, left: 0, behavior: 'smooth' }); */
		document.querySelector('#scroll').scrollIntoView({ behavior: 'smooth' });
	})
	$("#place").on("click", function() {
		/* window.scrollBy({ top: 200, left: 0, behavior: 'smooth' }); */
		document.querySelector('#scroll').scrollIntoView({ behavior: 'smooth' });
	})
</script>
<script type="text/javascript">
	const swiper3 = new Swiper('.swip1', {
		//기본 셋팅
	    //방향 셋팅 vertical 수직, horizontal 수평 설정이 없으면 수평
	    direction : 'horizontal',
	    //한번에 보여지는 페이지 숫자
	    slidesPerView : 3,
	    //페이지와 페이지 사이의 간격
	    spaceBetween : 0,
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
	    /* autoplay : {
	        //시간 1000 이 1초
	        delay : 3500,
	        disableOnInteraction : false,
	    }, */
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
<!-- <script type="text/javascript">
	$("#place").click(function(){
		  $('#placeSelectList').toggle();
	})
	function selectPlace(item) {
	   var strText = $(item).text();
	   // strText 에 전체 문자열이 입력된다.
	   $("input[id='place']").val(strText);
	   $('#placeSelectList').hide();
	}
</script> -->
   <%@ include file="../footer.jsp" %>