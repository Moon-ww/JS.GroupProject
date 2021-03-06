<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ include file="../header.jsp" %>
    
<section>
    <div id="carousel-example-generic" class="carousel slide" style="margin-top: 0px;" data-ride="carousel">
  
     
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
      <form name="search" action="/hotel/hotelSearchview.do">
         <div class="col-md-12 ment2" style="" id="scroll">
         	<div class="dropdown2">
			  <div onclick="myFunction2()" class="dropbtn where" id="places" style="width: 300px;" >????????? ?????????????</div>
			  <div id="myDropdown2" class="dropdown-content acon" style="margin: 70px 0 0 0;">
			    <a href="javascript:void(0)">?????????</a>
			    <a href="javascript:void(0)">?????????</a>
			    <a href="javascript:void(0)">?????????</a>
			    <a href="javascript:void(0)">?????????</a>
			    <a href="javascript:void(0)">?????????</a>
			    <a href="javascript:void(0)">????????????</a>
			    <a href="javascript:void(0)">????????????</a>
			    <a href="javascript:void(0)">????????????</a>
			    <a href="javascript:void(0)">????????????</a>
			    <a href="javascript:void(0)">??????</a>
			  	</div>
			  	<input type="hidden" name="spot" id="place">
				</div>
			<input type="text" class="mbtn1" id="startDate" name="checkin" placeholder="?????????" readonly style="cursor: pointer;width: 200px;"> ~ 
			<input type="text" class="mbtn1" id="endDate" name="checkout" placeholder="????????????" readonly style="cursor: pointer;width: 200px;">
			<button type="submit" class="mbtn2" style="width: 200px;" >?????? ??????</button>
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
		<c:forEach items="${list4 }" var="list">
		<li class="swiper-slide swiper-slide-active" role="group" aria-label="1 / 4" 
		 onclick="location.href='hotelview.do?hseq=${list.hseq }'" style="width: 284px;height:470px;margin-right: 28px;">
		<div class="img"style="width: 284px;">
		<img src="/upload/${list.image }" title="" data-src="" class="" alt=""style="width: 284px;height: 220px;">
		</div>
		<div class="txt"style="width: 284px;border-bottom: 1px solid #ccc;border-right: 1px solid #ccc; box-shadow: 7px 7px 7px -5px #ccc;">
		<div class="name_wrap2"style="margin-top: 50px;">
		<strong class="item_title">${list.name }</strong> 
		<p class="stxt2">[????????????????????????] ~4??? 30??? ???????????????</p>
		</div> 
		<div class="price_group">
		<p class="discount"></p> 
		<strong class="price" style="font-size: 22pt;"><fmt:formatNumber value="${list.price }"/><span>???~</span></strong>
		</div> 
		<div class="hash_group" style="margin-top: 10px;">
		<span class="hash" style="border: 1px solid #ccc;padding: 3px;">${list.hash }</span>
		</div>
		</div>
		</li>
		</c:forEach>
		
		</ul> 
			
		    <div class="swiper-button-next"><img alt="" src="/resources/images/ico-arrow-right.png" style="margin: -10px 0px 100px 0px; border: 1px solid #ccc;border-radius: 50%;background: #fff;width: 40px;height: 40px;"></div>
		</div>
		</div>
		</div>
		</div>
		</div>
   <!-- ??? ?????? ???????????? -->
   <div class="container" style="margin-top: 100px;">
   <h3 style="font-weight: 600">2022??? ????????? ????????????</h3>
      <div role="tabpanel" class="category-tab">
           <!-- Nav tabs -->
           <ul class="nav nav-tabs n3 n4" role="tablist" id="mytab">
             <li role="presentation" class="active"><a href="#??????" aria-controls="??????" role="tab" data-toggle="tab">??? ??? ?????? ?????????</a></li>
             <li role="presentation"><a href="#??????" aria-controls="??????" role="tab" data-toggle="tab">????????? ???????????? ??????</a></li>
             <li role="presentation"><a href="#??????" aria-controls="??????" role="tab" data-toggle="tab">????????? ????????? ??????</a></li>
           </ul>
			<!-- Tab panes -->
                 <div class="tab-content"style="margin-top:40px;">
                   <div role="tabpanel" class="tab-pane active" id="??????">
                      	<div class="" >
                      	<c:forEach items="${list}" var="list">
                      		<div class="thumbnail2 col-md-4" onclick="location.href='hotelview.do?hseq=${list.hseq }'">
                      			 
                      			 <img src="/upload/${list.image }" alt="" style="width: 350px; height: 200px;" />
                      			 
                      			<div role="tabpanel" class="category-tab">
                      			<ul class="">
                              <li style="width: 350px; margin-top: 20px; color: #00abff">
                              <a href=""style=" color: #00abff">${list.place }</a>
                              <c:set var="a" value="${fn:split(list.hash,'#')}" />
								<c:forEach var="b" items="${a}" varStatus="c">
                              <span style="border: 1px solid #444;padding: 5px;float: right; color: black;margin-right: 3px;">
                              		<c:if test="${c.count == 1}">${b}</c:if>
							       <c:if test="${c.count == 2}">${b}</c:if></span>
								</c:forEach></li>
                              <li style="width: 350px; font-weight: 600; font-size: 15pt;overflow: hidden;">${list.name}</li>
                              <li style="width: 350px; margin-top: 10px; font-weight: 600; font-size: 20pt"><fmt:formatNumber value="${list.price }"/>
                              <span style="font-weight: 400; font-size: 15pt">???~</span>
                              </li>
                           		</ul>
								</div>
								
							</div>
							</c:forEach>
					</div>
			</div>
			<div role="tabpanel" class="tab-pane" id="??????">
                      	<div class="">
                      	<c:forEach items="${list2}" var="list">
                      		<div class="thumbnail2 col-md-4" onclick="location.href='hotelview.do?hseq=${list.hseq }'">
                      			 
                      			 <img src="/upload/${list.image }" alt="" style="width: 350px; height: 200px;" />
                      			 
                      			<div role="tabpanel" class="category-tab">
                      			<ul class="">
                              <li style="width: 350px; margin-top: 20px; color: #00abff">
                              <a href=""style=" color: #00abff">${list.place }</a>
                              <c:set var="a" value="${fn:split(list.hash,'#')}" />
								<c:forEach var="b" items="${a}" varStatus="c">
                              <span style="border: 1px solid #444;padding: 5px;float: right; color: black;margin-right: 3px;">
                              		<c:if test="${c.count == 1}">${b}</c:if>
							       <c:if test="${c.count == 2}">${b}</c:if></span>
								</c:forEach></li>
                              <li style="width: 350px; font-weight: 600; font-size: 15pt;overflow: hidden;">${list.name}</li>
                              <li style="width: 350px; margin-top: 10px; font-weight: 600; font-size: 20pt"><fmt:formatNumber value="${list.price }"/>
                              <span style="font-weight: 400; font-size: 15pt">???~</span>
                              </li>
                           		</ul>
								</div>
							</div>
							</c:forEach>
					</div>
			</div>
			<div role="tabpanel" class="tab-pane" id="??????">
                      	<div class="">
                      	<c:forEach items="${list3}" var="list">
                      		<div class="thumbnail2 col-md-4" onclick="location.href='hotelview.do?hseq=${list.hseq }'">
                      			 
                      			 <img src="/upload/${list.image }" alt="" style="width: 350px; height: 200px;" />
                      			 
                      			<div role="tabpanel" class="category-tab">
                      			<ul class="">
                              <li style="width: 350px; margin-top: 20px; color: #00abff">
                              <a href=""style=" color: #00abff">${list.place }</a>
                              <c:set var="a" value="${fn:split(list.hash,'#')}" />
								<c:forEach var="b" items="${a}" varStatus="c">
                              <span style="border: 1px solid #444;padding: 5px;float: right; color: black;margin-right: 3px;">
                              		<c:if test="${c.count == 1}">${b}</c:if>
							       <c:if test="${c.count == 2}">${b}</c:if></span>
								</c:forEach></li>
                              <li style="width: 350px;height:35px; font-weight: 600; font-size: 15pt;overflow: hidden;">${list.name}</li>
                              <li style="width: 350px; margin-top: 10px; font-weight: 600; font-size: 20pt"><fmt:formatNumber value="${list.price }"/>
                              <span style="font-weight: 400; font-size: 15pt">???~</span>
                              </li>
                           		</ul>
								</div>
							</div>
							</c:forEach>
					</div>
			</div>
		</div>
      </div><!-- ??? ?????? -->
   </div><!--????????????  ??????-->

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
        $('#places').text(text);
        $('#place').val(text);
        console.log($('#place').val());
	})
</script>
<script type="text/javascript">
    $(document).ready(function () {
            $.datepicker.setDefaults($.datepicker.regional['ko']); 
            $( "#startDate" ).datepicker({
                 changeMonth: true, 
                 changeYear: true,
                 nextText: '?????? ???',
                 prevText: '?????? ???', 
                 dayNames: ['?????????', '?????????', '?????????', '?????????', '?????????', '?????????', '?????????'],
                 dayNamesMin: ['???', '???', '???', '???', '???', '???', '???'], 
                 monthNamesShort: ['1???','2???','3???','4???','5???','6???','7???','8???','9???','10???','11???','12???'],
                 monthNames: ['1???','2???','3???','4???','5???','6???','7???','8???','9???','10???','11???','12???'],
                 dateFormat: "yy-mm-dd",
                 minDate: 0,                       // ?????????????????? ????????????, ( 0 : ?????? ?????? ?????? ?????? ??????)
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
                      //?????????(startDate) datepicker??? ?????????
                      //?????????(endDate)??? ?????????????????? ?????? ??????(minDate)??? ????????? ???????????? ??????
                     $("#endDate").datepicker( "option", "minDate", selectedDate );
                 }    
            });
            $( "#endDate" ).datepicker({
                 changeMonth: true, 
                 changeYear: true,
                 nextText: '?????? ???',
                 prevText: '?????? ???', 
                 dayNames: ['?????????', '?????????', '?????????', '?????????', '?????????', '?????????', '?????????'],
                 dayNamesMin: ['???', '???', '???', '???', '???', '???', '???'], 
                 monthNamesShort: ['1???','2???','3???','4???','5???','6???','7???','8???','9???','10???','11???','12???'],
                 monthNames: ['1???','2???','3???','4???','5???','6???','7???','8???','9???','10???','11???','12???'],
                 dateFormat: "yy-mm-dd",
                 minDate: 0,                       // ?????????????????? ????????????, ( 0 : ?????? ?????? ?????? ?????? ??????)
                 onClose: function( selectedDate ) {    
                     // ?????????(endDate) datepicker??? ?????????
                     // ?????????(startDate)??? ?????????????????? ?????? ??????(maxDate)??? ????????? ???????????? ??????
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
	$("#places").on("click", function() {
		/* window.scrollBy({ top: 200, left: 0, behavior: 'smooth' }); */
		document.querySelector('#scroll').scrollIntoView({ behavior: 'smooth' });
	})
</script>
<script type="text/javascript">
	const swiper3 = new Swiper('.swip1', {
		//?????? ??????
	    //?????? ?????? vertical ??????, horizontal ?????? ????????? ????????? ??????
	    direction : 'horizontal',
	    //????????? ???????????? ????????? ??????
	    slidesPerView : 3,
	    //???????????? ????????? ????????? ??????
	    spaceBetween : 0,
	    //????????? ?????? true ???????????? false ????????????
	    debugger : true,
	    //????????? ????????? true ???????????? false ????????????
	    mousewheel : false,
	    //?????? ?????? true ???????????? false ????????????
	    loop : true,
	    //????????? ??????????????? ???????????? true ???????????? false ???????????? djqt
	    centeredSlides : false,
	    // ????????? ???????????? slidesPerView????????? ?????? ?????? ??????
	    // effect: 'fade',
	    speed : 1000,
	    //?????? ????????????
	    /* autoplay : {
	        //?????? 1000 ??? 1???
	        delay : 3500,
	        disableOnInteraction : false,
	    }, */
	    //?????????
	    pagination : {
	        //????????? ??????
	        el : '.swiper-pagination',
	        //?????? ????????????
	        clickable : true,
	    },
	    //?????????
	    navigation : {
	        //??????????????? ??????
	        nextEl : '.swiper-button-next',
	        //??????????????? ??????
	        prevEl : '.swiper-button-prev',
	    },
	})
</script>

   <%@ include file="../footer.jsp" %>