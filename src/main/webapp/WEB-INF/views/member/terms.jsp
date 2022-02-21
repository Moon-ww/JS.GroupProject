<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.net.URLEncoder" %>
	<%@ page import="java.security.SecureRandom" %>
	<%@ page import="java.math.BigInteger" %>
	<%-- <%@include file="../header.jsp" %> --%>
	
	<!DOCTYPE html>
<html lang="ko">
<head>

	<title>JS Tour</title>
	<!-- HTML5 Shim and Respond.js IE11 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 11]>
		<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
		<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
		<![endif]-->
	<!-- Meta -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<meta name="description" content="" />
	<meta name="keywords" content="">
	<meta name="author" content="Phoenixcoded" />
	
	<script src="/resources/js/jquery-3.3.1.min.js"></script>
    <script src="/resources/js/bootstrap.min.js"></script>
    <script src="/resources/js/my.js"></script>
    <script src="/resources/js/member.js"></script>
    <script src="/resources/js/mypage.js"></script>
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	
	<link rel="stylesheet" href="/resources/css/assets/css/style.css">
</head>

      <div class="auth-wrapper">     
        <div class="auth-content" style="width: 700px;"> 
           <div class="card">
           <h2 style="padding-bottom:20px; border-bottom: solid 3px #000;">新規登録約款</h2>
          	 <form name="list" id="list" method="post" action="join.do">
           		<h3>◼利用規約に同意(必須)</h3>
					<textarea style="padding:18px; width:100%; height:200px;">皆さんを歓迎します。
モモネイルサービス及び製品(以下「サービス」といいます)をご利用いただきありがとうございます。 本規約は、様々なモモサービスの利用に関連して、モモネイルのサービスを提供するモモネイルとこれを利用するネイバーサービス会員(以下、「会員」といいます)または非会員との関係を説明し、併せて皆さんのモモネイルサービスの利用に役立つ有益な情報を含んでいます。
モモネイルサービスをご利用になるか、モモネイルサービスの会員になる場合、皆さんは本規約や関連運営方針を確認したり同意することになりますので、しばらくお時間を割いてご注意ください。
様々なネイバーサービスをお楽しみください。
モモネイルは可読性の良いUIと簡単に予約状況を確認し、会員が希望する日付と時間に予約ができるように手伝っています。 また、通知サービスで各種クーポンやイベントなどのネイルショップの利用に役立つ事項をご案内しています。 
皆さんはパソコン、携帯電話などインターネットの利用が可能な各種端末機を通じて様々なモモネイルサービスを自由に利用することができ、個別サービスの具体的な内容は各サービス上のご案内、お知らせ、モモネイルウェブカスタマーセンター(以下'お客様センター')ヘルプなどで簡単にご確認いただけます。
モモネイルは基本的に皆さん全員に同じ内容のサービスを提供します。 ただし、'青少年保護法'など関連法令やその他個別サービス提供における特別な必要によって年齢または一定の等級を基準に利用者を区分して提供するサービスの内容、利用時間、利用回数などを異なるなど、一部の利用を制限する場合があります。 詳細はやはり各サービス上のご案内、お知らせ、インフォメーションセンターヘルプなどでご確認いただけます。

会員になっていただくと、モモネイルをより便利に、お得にご利用いただけます。
	                	</textarea>
	                	
	                	<input type="checkbox" name="agree" id="agree1" value="y">　同意します
	                	<p id="agreemsg" style="padding-bottom:30px;"></p> <!-- 출력할 공간 확보 -->
	                	
	         	<h3>◼個人情報の収集と利用に同意(必須)</h3>
	        	<textarea style="padding:18px; width:100%; height:200px;">個人情報保護法に基づき、モモネイルに会員登録を申請される方に収集する個人情報の項目、個人情報の収集及び利用目的、個人情報の保有及び利用期間、同意拒否権及び同意拒否時の不利益に関する事項をご案内いたしますので、詳しくお読みの上、同意してください。

1.収集する個人情報
利用者は会員登録しなくても、情報検索、ニュース閲覧などほとんどのモモネイルサービスを会員と同じように利用できます。 利用者がメール、カレンダー、カフェ、ブログ等の個人化、または会員制サービスのために会員登録をする場合、モモネイルはサービス利用のために必要最小限の個人情報を収集します。

会員登録時点でモモネイルが利用者から収集した個人情報は以下の通りです。
- 会員登録時に「ID、パスワード、氏名、生年月日、性別、携帯電話番号」を必須項目として収集します。 もし、利用者が入力する生年月日が満14歳未満の児童の場合は、法定代理人情報(法定代理人の名前、生年月日、性別、重複登録確認情報(DI)、携帯電話番号)を追加で収集します。 そして選択項目としてEメールアドレスを収集します。
- 団体IDで会員登録する際、団体ID、パスワード、団体名前、メールアドレス、携帯電話番号を必須項目として収集します。 そして団体代表者名を選択項目として収集します。

2.収集した個人情報の利用
モモネイル及びモモネイル関連諸サービス(モバイルウェブアプリを含む)の会員管理、サービス開発·提供·向上、安全なインターネット利用環境の構築など、以下の目的でのみ個人情報をご利用いただけます。

- 会員登録意思の確認、年齢の確認及び法定代理人の同意の進行、利用者及び法定代理人の本人確認、利用者の識別、会員退会の意思の確認など、会員管理のために個人情報を利用します。
- コンテンツなどの既存サービス提供(広告含む)に加え、人口統計学的分析、サービス訪問および利用記録の分析、個人情報および関心に基づいた利用者間関係の形成、知人や関心事などに基づくカスタマイズ型サービス提供など、新規サービス要素の発掘および既存サービスの改善などのために、個人情報を利用します。
- 法令及びモモネイル利用約款に違反する会員に対する利用制限措置、不正利用行為を含め、サービスの円滑な運営に支障を与える行為に対する防止及び制裁、アカウント利用及び不正取引防止、約款改正などの告知事項の伝達、紛争調整のための記録保存、苦情処理など、利用者の保護及びサービス運営のために個人情報を利用します。
- 有料サービスの提供に伴う本人認証、購入、料金決済、商品及びサービスの配送のために個人情報を利用します。
- イベント情報及び参加機会の提供、広告性情報の提供などマーケティング及びプロモーション目的で個人情報を利用します。
- サービスの利用記録とアクセス頻度分析、サービスの利用に対する統計、サービス分析および統計に合わせたサービス提供および広告掲載などに個人情報を利用します。
- セキュリティ、プライバシー、安全の側面から、利用者が安心して利用できるサービス利用環境の構築のために、個人情報を利用します。
	            </textarea>
	                	
               	<input type="checkbox" name="agree" id="agree2" value="y">　同意します
               	<p id="agreemsg" style="padding-bottom:30px;"></p>   
               	
           		<h3>◼プロモーション情報受信に同意(選択)</h3>
               	<textarea style="padding:18px; width:100%; height:120px;">
モモネイルで提供するイベント特典など様々な情報を携帯電話(ネイバーアプリの通知またはメール)、
Eメールで受け取ることができます。 一部のサービス(別途の会員システムで運営したり、
モモネイル登録後に追加加入して利用するサービスなど)の場合、個別サービスについて
別途に受信同意を得ることができ、この時も受信同意について別途に案内して同意を得ることができます。
               	</textarea>
               	<input type="hidden" name="YN" id="YN">
               	<input type="checkbox" name="prop" id="prop">　同意します
	        
			<div class="checkfin"style="width: 100%;margin: 30px 0 30px 0;">
				<input type="checkbox" id="all" name="all"/> <b>　全て同意</b>
			</div>
				<a href="javascript:void(0)" class="btn btn-primary mb-4" id="btn_ok" style="color: #fff; width: 50%;float: left;">확인</a>
				<a href="/" class="btn btn-secondary mb-4" style="color: #fff; width: 50%;">취소</a>
			</form>
			</div>
			 
           </div>
        </div>
      
    
<script>
	$(function() {
	
		
		
		$("#btn_ok").on("click", function(){
	         var chk = true;
	         var chkList =  $("input[name=agree]");
	         
	         for(var i=0; i<chkList.length; i++){
	            if(!chkList[i].checked){
	               chk = false;
	            }
	         }
	         
	         if(!chk){
	            alert("全ての必須規約をチェックしてください。");
	            return false;
	         }else{
	     			
	        		 	var Y  =  'Y';
  						var N  =  'N';
	     			if($("#prop").is(":checked")){
	     				$("#YN").val('Y');
	     				location.href="join.do?prop="+Y;
	     				}else{
	     				$("#YN").val('N');
	     				location.href="join.do?prop="+N;
	     				}
	     	
	         }
	      })
	      
	   $("#all").on("click", function(){
		   var chkall = $("input[type=checkbox]");
		   
			if($(this).is(":checked")){
				chkall.prop("checked",true);
			}else{
				chkall.prop("checked",false);
			}
		})
	         
       $("#agree1, #agree2, #prop").on("click", function(){
			if($("#agree1").is(":checked") == true && $("#agree2").is(":checked") == true && $("#prop").is(":checked") == true){
				$("#all").prop("checked",true);
			}else{
				$("#all").prop("checked",false);
			}	
		})
		
	});
</script>
<%-- <%@ include file="../footer.jsp" %> --%>