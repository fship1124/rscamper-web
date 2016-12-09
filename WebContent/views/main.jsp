<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="ko" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="ko" class="ie9"> <![endif]-->
<!--[if !IE]><!-->
<html lang="ko">
<!--<![endif]-->

<head>
<title>메인</title>

<!-- Meta -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="rscamper">
<meta name="author" content="rscamper">

<!-- Favicon -->
<link rel="shortcut icon" href="${pageContext.request.contextPath}/favicon.ico">

<!-- Web Fonts -->
<link rel='stylesheet' type='text/css' href='//fonts.googleapis.com/css?family=Open+Sans:400,300,600&amp;subset=cyrillic,latin'>

<!-- CSS Global Compulsory -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/plugins/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/js/jquery-ui-1.12.1/jquery-ui.css">
<%-- <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/js/jquery-ui-1.12.1/jquery-ui.js"> --%>

<!-- CSS Header and Footer -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/headers/header-default.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/footers/footer-v3.css">

<!-- CSS Implementing Plugins -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/plugins/animate.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/plugins/line-icons/line-icons.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/plugins/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/plugins/parallax-slider/css/parallax-slider.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/plugins/owl-carousel/owl-carousel/owl.carousel.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/plugins/login-signup-modal-window/css/style.css">

<!-- CSS Theme -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/theme-colors/default.css" id="style_color">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/theme-skins/dark.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/custom.css">

<!-- 사용자 정의 CSS -->
<link rel="stylesheet" href="main.css">
<%-- <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/include/css/header.css"> --%>
<link rel="stylesheet" href="assets/plugins/sky-forms-pro/skyforms/css/sky-forms.css">
<link rel="stylesheet" href="assets/plugins/sky-forms-pro/skyforms/custom/custom-sky-forms.css">
<!-- 달력 css -->
<link rel="stylesheet" href="../assets/css/shiping.style.css">	
<style>
.row{
	width: 1140px;
}
.col-md-4{
	width: 228px;
}
.col-md-5{
	width: 380px;
}
.title-v4{
	width: 370px;
}
#carousel-example-generic{
	width: 650px;
	height: 300px;
}
.form-inline{
	width: 100%;
	height: 300px;
}


.checkbox[type=radio] {display:none;}
label.input-label { 
  display: inline-block;
  font-size: 13px;
  cursor: pointer;
  }
label.input-label::before {
  display: inline-block;
  margin:0 10px;
  font-family: FontAwesome;
  font-size: 20px;
  color: rgba(4, 120, 193,0.2);
  -webkit-transition: transform 0.2s ease-out, color 0.2s ease;
  -moz-transition: transform 0.2s ease-out, color 0.2s ease;
  -ms-transition: transform 0.2s ease-out, color 0.2s ease;
  -o-transition: transform 0.2s ease-out, color 0.2s ease;
  transition: transform 0.2s ease-out, color 0.2s ease;
  -webkit-transform: scale3d(0.8,0.8,1);
  -moz-transform: scale3d(0.8,0.8,1);
  -ms-transform: scale3d(0.8,0.8,1);
  -o-transform: scale3d(0.8,0.8,1);
  transform: scale3d(0.8,0.8,1);
}
label.input-label.checkbox::before {
  content: "\f0c8";
}
label.input-label.radio::before {
  content: "\f111";
}
input.checkbox + label.input-label:hover::before {
  -webkit-transform: scale3d(1,1,1);
  -moz-transform: scale3d(1,1,1);
  -ms-transform: scale3d(1,1,1);
  -o-transform: scale3d(1,1,1);
  transform: scale3d(1,1,1);
}

input.checkbox + label.input-label:active::before {
  -webkit-transform: scale3d(1.5,1.5,1);
  -moz-transform: scale3d(1.5,1.5,1);
  -ms-transform: scale3d(1.5,1.5,1);
  -o-transform: scale3d(1.5,1.5,1);
  transform: scale3d(1.5,1.5,1);
}

input.checkbox:checked + label.input-label::before {
  display: inline-block; 
  font-family: FontAwesome; 
  color:#0478c1;
  -webkit-transform: scale3d(1,1,1);
  -moz-transform: scale3d(1,1,1);
  -ms-transform: scale3d(1,1,1);
  -o-transform: scale3d(1,1,1);
  transform: scale3d(1,1,1);
}
input.checkbox:checked + label.input-label.checkbox::before {
    content:"\f14a";
}
input.checkbox:checked + label.input-label.radio::before {
    content:"\f058";
}
.time-div div {
	padding: 0;
	text-align: left;
}
#train-search-btn {
	background-color: orange;
}
#train-search-btn:hover {
	background-color: #b36b00;
}


</style>
</head>

<body class="header-fixed header-fixed-space-default">
	<div class="wrapper">

		<!-- 헤더 include -->
		<%@include file="/resources/include/header.jsp"%>

		<!-- ================================================================ -->

		<!--=== 사이트맵 ===-->
		<div class="breadcrumbs">
			<div class="container">
				<ul class="pull-right breadcrumb">
					<li class="active"><a href="main.jsp">home</a></li>
				</ul>
			</div>
		</div>

		<!--=== Content ===-->
		<!-- 광고 부분 -->
		
		<div class="container content-md">
		<div class="row">
		<div class="col col-lg-8">
			<div id="carousel-example-generic" style="width: 100%;" class="carousel slide" data-ride="carousel">
			  <!-- Indicators -->
			  <ol class="carousel-indicators">
			    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
			    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
			    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
			    <li data-target="#carousel-example-generic" data-slide-to="3"></li>
			    <li data-target="#carousel-example-generic" data-slide-to="4"></li>
			  </ol>
			
			  <!-- Wrapper for slides -->
			  <div class="carousel-inner" style="width: 100%;" role="listbox">
			    <div class="item active">
			      <img src="train1.jpg" alt="..." style="width: 100%; height: 300px;">
			    </div>
			    <div class="item">
			      <img src="train66.jpg" alt="..." style="width: 100%; height: 300px;">
			    </div>
			    <div class="item">
			      <img src="train77.png" alt="..." style="width: 100%; height: 300px;">
			    </div>
			    <div class="item">
			      <img src="train44.png" alt="..." style="width: 100%; height: 300px;">
			    </div>
			    <div class="item">
			      <img src="train2.jpg" alt="..." style="width: 100%; height: 300px;">
			    </div>
			  </div>
			
			  <!-- Controls -->
			  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
			    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
			    <span class="sr-only">Previous</span>
			  </a>
			  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
			    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			    <span class="sr-only">Next</span>
			  </a>
			
			</div>
		</div>
		<div class="col col-lg-4">
			<!-- 시간조회 -->
			  <form class="shipping-form" id="mainTimeList" style="padding: 0; float: right; width: 340px;">
				<div class="wrap">
					<div class="row time-div" style="width: 100%;">
						<div class="col col-lg-4">
							<input type="radio" name="radio" id="radio0" value="01" class="checkbox">
		  						<label for="radio0" class="input-label radio">새마을</label>
						</div>
						<div class="col col-lg-4">
							<input type="radio" name="radio" id="radio1" value="02" class="checkbox">
		  						<label for="radio1" class="input-label radio">무궁화</label>
						</div>
						<div class="col col-lg-4">
							<input type="radio" name="radio" id="radio2" value="03" class="checkbox">
		  						<label for="radio2" class="input-label radio">통근열차</label> 
						</div>
					</div>
					<div class="row time-div" style="width: 100%;">
						<div class="col col-lg-4">
							<input type="radio" name="radio" id="radio3" value="04" class="checkbox">
		  						<label for="radio3" class="input-label radio">누리로</label> 
						</div>
						<div class="col col-lg-4">
							<input type="radio" name="radio" id="radio4" value="09" class="checkbox">
	  							<label for="radio4" class="input-label radio">ITX-청춘</label>
						</div>
						<div class="col col-lg-4">
							<input type="radio" name="radio" id="radio5" value="08" class="checkbox">
		  						<label for="radio5" class="input-label radio">ITX-새마을</label>
						</div>
					</div>
				</div>
					
				<div class="form-group g-mb-20">
					<input type="text" id="startStation" name="depPlaceId" class="form-control rounded g-mb-20" placeholder="출발역">
					<input type="hidden" id="startStation-id">
					<input type="text" id="arriveStation" name="arrPlaceId" class="form-control rounded g-mb-20" placeholder="도착역">
					<input type="hidden" id="arriveStation-id">
					<input type="date" class="form-control rounded" name="depPlandTime">
					<input type="hidden" name="numOfRows"> 
					<input type="hidden" name="pageNo"> 
					<input type="hidden" name="startPage"> 
					<input type="hidden" name="pageSize">
				</div>
				<a id="train-search-btn" class="btn-u btn-u-lg btn-u-upper rounded" onclick="mainTimeSearch();">조회하기</a>
			  </form>
		</div>
	</div>
	<br><br>
			<!-- 스케줄관리 -->
			<div class="bigHeader row" style="line-height:37px; font-size: 24px; font-weight: 700; border-bottom:3px solid black;">
                	일정스케줄
            	<div class="content-tabs">
            	
            	</div>
			</div>


			<div class="col-md-9">
				<div class="row" id="tourPlanList"></div>
			</div>


			<hr class="margin-bottom-30"/>
		              	
		   <!-- 추천콘텐츠 -->
		   <div class="bigHeader" style="line-height:37px; font-size: 24px; font-weight: 700; border-bottom:3px solid black;">
                	전국혜택
            	<div class="content-tabs"></div>
           </div>
		   <div class="col-md-9">
		   		<div class="row" id="benefitList"></div>
		   </div>
		
		
			<!-- 관광지, 숙소, 맛집-->  
		   <div class="col-md-5">
		   		<h2 class="title-v4">관광지</h2>
		   		<div id="touristList" style="width:350px; height:850px;"></div>
		   	</div> 
		   	
		   <!-- 맛집 -->            	
		   <div class="col-md-5">
		   		<h2 class="title-v4">맛집</h2>
		   		<div id="foodList" style="width:350px; height:850px;"></div>
		
		    </div>  
		          	
			<!-- 숙소 --> 
             <div class="col-md-5">
		   		<h2 class="title-v4">숙소</h2>
		   		<div id="lodegeList" style="width:350px; height:850px;"></div> 
              
               </div>      
		</div>
		
		
		<!--=== End Content ===-->


		<!-- 푸터 include -->
		<%@include file="/resources/include/footer.jsp"%>

	</div>
	
	<!-- 로그인 모달 include -->
	<%@include file="/resources/include/userModal.jsp"%>

	<!-- JS Global Compulsory -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/assets/plugins/jquery/jquery.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/assets/plugins/jquery/jquery-migrate.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/assets/plugins/bootstrap/js/bootstrap.min.js"></script>

	<!-- JS Implementing Plugins -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/assets/plugins/back-to-top.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/assets/plugins/smoothScroll.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/assets/plugins/parallax-slider/js/modernizr.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/assets/plugins/parallax-slider/js/jquery.cslider.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/assets/plugins/owl-carousel/owl-carousel/owl.carousel.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/assets/plugins/modernizr.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/assets/plugins/login-signup-modal-window/js/main.js"></script>

	<!-- JS Page Level -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/app.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/plugins/owl-carousel.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/plugins/parallax-slider.js"></script>

	<!--[if lt IE 9]>
	<script src="${pageContext.request.contextPath}/assets/plugins/respond.js"></script>
	<script src="${pageContext.request.contextPath}/assets/plugins/html5shiv.js"></script>
	<script src="${pageContext.request.contextPath}/assets/plugins/placeholder-IE-fixes.js"></script>
	<![endif]-->

	<!-- 파이어베이스 -->
	<script type="text/javascript" src="https://www.gstatic.com/firebasejs/3.5.1/firebase.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/firebaseInit.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/firebaseAuth.js"></script>
	
	<!-- 메뉴 -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/menu.js"></script>
	
	<!-- INIT APP -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/initApp.js"></script>
	
	<!-- 사용자 정의 Java Script 작성이 완료되면 외부파일로 뺄것 -->
	<script src="http://code.jquery.com/ui/1.12.1/jquery-ui.js" type="text/javascript"></script>
<%-- 	<script src="${pageContext.request.contextPath}/resources/include/js/header.js"></script> --%>
	<script type="text/javascript" src="main.js"></script>
	<script type="text/javascript" src="main_sub.js"></script>
	
</body>
</html>
