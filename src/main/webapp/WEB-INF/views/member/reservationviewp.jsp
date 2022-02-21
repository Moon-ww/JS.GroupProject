<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
   <%@include file="../header.jsp" %>
   <style>
                     .aaa {width:100%;}
                     .aaa th, .aaa td {padding:26px 16px; border-bottom:1px solid #ccc; }
                     .aaa input {width:100%; padding:22px 8px; border-radius:2px;}
                     .aaa {border-top:2px solid #333;}
                     .aaa th {background:#eee; border-right:1px slod #ccc; width: 150px;}
                     .aaaTitle {font-size: 20px; margin: 0px 0px 19px 12px;}
                     .bbb {width:100%;}
                     .bbb th, .bbb td {padding:20px 16px;}
                     .bbb input {width:100%; padding:0px 8px;}
                     .bbb th {background:#eee; width: 150px;}
                     .bbb th, .bbb td {font-size: 12px; background:#eee;}
                  </style>
   <div class="container">
   <div class="row">
      <div>
         <h3 style="padding-bottom: 19px; padding-top: 39px; border-bottom: 1px solid;">예약하기</h3>
         
         <div class="col-md-9">
            <div class="content">

                  
                  
                  <div class="aaaTitle" style="margin-top:20px;">${list2.name}</div>
                  
                  <table class="aaa">
                     <tr>
                        <th>여행기간</th>
                        <td>
                              <fmt:parseDate var="startdate" value="${list2.startdate }" pattern="yyyy-MM-dd"/>
                              <fmt:formatDate value="${startdate }" pattern="yyyy-MM-dd"/> ~ 
                              <fmt:parseDate var="enddate" value="${list2.enddate }" pattern="yyyy-MM-dd"/>
                              <fmt:formatDate value="${enddate }" pattern="yyyy-MM-dd"/>
                              /  
                             <span>      
                                 <c:if test="${list2.period == 0}">
                                 당일치기
                                 </c:if>
                                 <c:if test="${list2.period == 1}">
                                 1박2일
                                 </c:if>
                                 <c:if test="${list2.period == 2}">
                                 2박3일
                                 </c:if>
                                 <c:if test="${list2.period == 3}">
                                 3박4일
                                 </c:if>
                                 <c:if test="${list2.period == 4}">
                                 4박5일
                                 </c:if>
                                 <c:if test="${list2.period == 5}">
                                 5박6일
                                 </c:if>
                                 <c:if test="${list2.period == 6}">
                                 6박7일
                                 </c:if>
                                 <c:if test="${list2.period == 7}">
                                 7박8일
                                 </c:if>
                           </span>   
                        </td>
                     </tr>
                     <tr>
                        <th>이용호텔</th>
                        <td>${list2.hotel}</td>
                     </tr>
                     
                  </table>
                  <div class="aaaTitle" style="margin-top: 73px;">예약자 정보</div>
                  <form class="form-horizontal" name="frm" method="post">
                <input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }">
                     <table class="aaa">
                        <tr>
                           <th>성명</th>
                           <td><input type="text" name="name" class="form-control2" value="${mlist.name }" id="name"></td>
                           <th>생년월일</th>
                           <td><input type="text" name="birth" class="form-control2" value="${mlist.birth}" id="birth"></td>
                        </tr>
                        <tr>
                           <th>휴대폰 번호</th>
                           <td><input type="text" name="phone" class="form-control2" value="${mlist.phone}" id="phone"></td>
                           <th>이메일</th>
                           <td><input type="text" name="email" class="form-control2" value="${mlist.email}" id="email"></td>
                        </tr>
<%--                            <input type="hidden" name="qnt" value="${qnt }"> --%>
<%--                            <input type="hidden" name="id" id="" value="${mlist.id }"> --%>
<%--                             <input type="hidden" name="pcode" id="" value="${list2.pcode }"> --%>
<%--                             <input type="hidden" name="total" id="" value="${total }"> --%>
<%--                             <input type="hidden" name="pname" id="pname" value="${list2.dname}"> --%>
                     </table>
                    
                     <div class="" style="margin-bottom: 30px;">
                     
                   <span><div class="aaaTitle" style="margin-top: 73px; margin-top: 73px; position: relative;">여행자 정보</div></span>
                     </form>
                     <style>
                     
                     input[type="checkbox"]{
                             display: none;
                           }
                     input[type="checkbox"] + label{
                             display: inline-block;
                             width: 22px;
                             height: 21px;
                             border:3px solid #707070;
                             position: relative;
                             border-radius: 22px;
                             
                           }
                           
                     input[id="chkBkrYN"]:checked + label::after{
                             content:'✔';
                             font-size: 25px;
                             width: 30px;
                             height: 30px;
                             text-align: center;
                             position: absolute;
                             left: -4px;
                             top: -13px;
                           }
                     
                     </style>
                      <form class="form-horizontal" name="frm1" method="post">
                     <div style="display: inline-block; float: right;">
                     <span>
                     <input type="checkbox" id="chkBkrYN">
                     <label for="chkBkrYN" style="position: absolute; right: 116px; top: 658px;"></label>
                     <span style="position: absolute; right: 24px; top: 658px;">예약자와 동일</span>
                     </span>
                     </div>     
                     
                     <c:forEach var="i" begin="1" end="${qnt}">
                     <div style="margin: 15px 0;">
                     <strong style="font-size: 15px; margin-left: 2px;">성인 ${i}</strong>
                     </div>
                  <table class="aaa">
                     <tr>
                        <th>성명</th>
                        <td><input type="text" name="name1" class="form-control2" value="" id="name1"></td>
                        <th>생년월일</th>
                        <td><input type="text" name="birth1" class="form-control2" value="" id="birth1"></td>
                     </tr>
                     <tr>
                        <th>휴대폰 번호</th>
                        <td><input type="text" name="phone1" class="form-control2" value="" id="phone1"></td>
                        <th>이메일</th>
                        <td><input type="text" name="email1" class="form-control2" value="" id="email1"></td>
                     </tr>
                  </table>
                     </c:forEach>
                      </form>
                     
                     
                     

                        <img alt="" src="/resources/images/resnoti.png" style="width: 100%; margin: 47px 0px;">
                        
                     </div>
                  </div>
               
            </div>
            
         </div>
         <!-- col-md-10 end -->
         <div class="col-md-3 detail-right" style="margin-top: 19px;">
                     
            <table class="bbb">
            
            <div class="aaaTitle">결제상세내역</div>
            
                     <tr style="border-top: 1px solid #ccc;">
                        <th>최종 결제 금액</th>
                        <td style="font-size: 11px;">
                              <span style="margin-right: 5px;">성인</span>
                              <span id="qnt2"></span>
                              <span style="margin-left: 5px;">명</span>
                              <input type="hidden" name="qnt" id="qnt" value="" readonly>
                        </td>
                     </tr>
                     <tr>
                        <th colspan="2" style="text-align: right;"><span style="font-size: 25px; color: #2196f3;">
                        <span style="margin-left: 5px;"></span>
                           <input type="hidden" name="total" id="total" value="" readonly>
                           <span class="${total}"></span><fmt:formatNumber value="${total}"/>
                        </span>원<br><span>유류할증료&제세공과금 포함</span><br><span>JS투어 마일리지 적립 349M 적립예정</span></th>
                     </tr>
                     <tr style="border-top: 1px solid #ccc; border-bottom: 1px solid #ccc;">
                        <th></th>
                        <td><fmt:formatNumber value="" /></td>
                     </tr>
                  </table>
                  
                  <div class="col-sm-12" style="margin-top: 44px; text-align: center;">
                           <a href="javascript:history.go(-1)" class="btn btn-default">취소</a> <a href="javascript:void(0)" id="check_module" class="btn btn-default xxx">예약하기</a> 
                           <input type="hidden" name="id" id="" value="${mlist.id }"> 
                           <input type="hidden" name="pcode" id="" value="${list2.pcode }">
                           <input type="hidden" name="qnt" value="${qnt }">
                     <input type="hidden" name="id" id="" value="${mlist.id }">
                      <input type="hidden" name="pcode" id="" value="${list2.pcode }">
                      <input type="hidden" name="total" id="" value="${total }">
<%--                       <input type="hidden" name="name" id="" value="${mlist.name}"> --%>
                        </div>
            
         </div>
      </div>
   </div>
</div>
<!--  -->


    
<script>

$(function(){
   $("#chkBkrYN").click(function(){
      var name = "${mlist.name}";
      var birth = "${mlist.birth}";
      var phone = "${mlist.phone}";
      var email = "${mlist.email}";
      
      if($(this).is(":checked")){
         $("#name1").val(name);
         $("#birth1").val(birth);
         $("#phone1").val(phone);
         $("#email1").val(email);
      }else{
         $("#name1").val("");
         $("#birth1").val("");
         $("#phone1").val("");
         $("#email1").val("");
      }
   })
})

</script>                
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
<script type="text/javascript">
    $.urlParam = function(name){
        var results = new RegExp('[\?&]' + name + '=([^&#]*)').exec(window.location.href);
        return results[1] || 0;
    }
       var qnt = $.urlParam('qnt'); 
       var total = $.urlParam('total'); 
       var id = $.urlParam('id'); 
       console.log(qnt);
       
      $("#qnt").val(qnt);
      $("#qnt2").text(qnt)
      $("#total").val(total);
      $("#total2").text(total);
      $("#id").val(id);
    </script>
    
    <!-- <script>
            $("#check_module").click(function () {
            var pname = $("#pname").val();
            var total = $("#total").val();
            var name = $("#name").val();
            /* var address = $("#address").val();
            var zip = $("#zip_num").val(); */
            var email = $("#email").val();
            var phone = $("#phone").val();
            var IMP = window.IMP; // 생략가능
            IMP.init('imp65405219');
            IMP.request_pay({
            pg: 'inicis', // version 1.1.0부터 지원.
            pay_method: 'card',
            merchant_uid: 'merchant_' + new Date().getTime(),
            name: pname,
            amount: total,
            buyer_email: email ,
            buyer_name: name,
            buyer_tel: phone,
            /* buyer_addr: address,
            buyer_postcode: zip, */
            m_redirect_url: 'http://localhost:7777/'
            }, function (rsp) {
            console.log(rsp);
            if (rsp.success) {
            var msg = '결제가 완료되었습니다.';
            msg += '고유ID : ' + rsp.imp_uid;
            msg += '상점 거래ID : ' + rsp.merchant_uid;
            msg += '결제 금액 : ' + rsp.paid_amount;
            msg += '카드 승인번호 : ' + rsp.apply_num;
            document.frm.action="/member/orderinsert.do";
            document.frm.submit();
            } else {
            var msg = '결제에 실패하였습니다.';
            msg += '에러내용 : ' + rsp.error_msg;
            alert(msg);
            }
            
            });
            });
            </script> -->
<script type="text/javascript">

function jsos(){
   
   var oVO = {
       "id":"${mlist.id}",
       "name":"${mlist.name}",
       "email":"${mlist.email}",
       "phone":"${mlist.phone}",
      "pcode":"${list2.pcode}",
       "pname":"${list2.dname}",
       "qnt":"${qnt}",
       "total":"${total}"
   };
   console.log(oVO.id);
   console.log(oVO.name);
   console.log(oVO.pname);
   
   var csrfHeaderName = "${_csrf.headerName}";               
    var csrfTokenValue = "${_csrf.token}";
    
    $(document).ajaxSend(function(e, xhr, options){
        xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
     })
    
     
    $.ajax({
       type:'post',
       data:JSON.stringify(oVO),
       contentType:'application/json; charset=utf-8',
       url:'/member/orderinsert.do',
//        dataType:'json',
       success:function(data) {
          
       },error:function(error) {
          
       }
    })
}

$(".xxx").click(function () {
   
   jsos();
   
   var rowNum = ${qnt};
   console.log(rowNum);
    var TravelerSetting = function (name1, phone1, birth1, email1) {
        this.name1 = name1;
        this.phone1 = phone1;
        this.birth1 = birth1;
        this.email1 = email1;
    }

    var param = [];
    for(i=0; i<rowNum; i++) {
        var travelerSetting = new TravelerSetting(
            $("input[name='name1']").eq(i).val(),
            $("input[name='phone1']").eq(i).val(),
            $("input[name='birth1']").eq(i).val(),
            $("input[name='email1']").eq(i).val()
        )
        param.push(travelerSetting);
    }
        
//         var oVO = {
// //               "qnt":"${qnt}",
// //               "id":"${mlist.id}",
// //               "pcode":"${list2.pcode}",
// //               "total":"${total}",
// //               "pname":"${list2.dname}",
//               "param" : param
//         };

        console.log(param);
        
        var csrfHeaderName = "${_csrf.headerName}";               
        var csrfTokenValue = "${_csrf.token}";
        
        $(document).ajaxSend(function(e, xhr, options){
            xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
         })
        
         
        $.ajax({
           type:'post',
           data:JSON.stringify(param),
           contentType:'application/json; charset=utf-8', //보내는타입
           url:'/member/orderdetailinsert.do',
           //dataType:"json", //받는타입
           success:function() {
              location.href="/member/ordercomplete.do";
           },error:function(error) {
              
           }
        })
   
});
</script>
       <%@include file="../footer.jsp" %>