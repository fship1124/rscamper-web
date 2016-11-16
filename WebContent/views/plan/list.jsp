<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->

<head>
<title>일정만들기</title>

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
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/plugins/fancybox/source/jquery.fancybox.css">
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

<!-- CSS Theme -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/theme-colors/default.css" id="style_color">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/theme-skins/dark.css">

<!-- 사용자 정의 CSS -->
<link rel="stylesheet" href="list.css">

</head>

<body class="header-fixed header-fixed-space-default">
	<div class="wrapper">

		<!-- 헤더 include -->
		<%@include file="/resources/include/header.jsp"%>

		<!--=== 사이트맵 ===-->
		<div class="breadcrumbs">
			<div class="container">
				<ul class="pull-left breadcrumb">
					<li><a href="${pageContext.request.contextPath}/views/main.jsp"><i class="fa fa-home"></i></a></li>
					<li class="active"><a href="list.jsp">여행일정</a></li>
				</ul>
			</div>
		</div>
		<!--=== 사이트맵 끝 ===-->

		<!--=== 내용 ===-->
				<!--=== Blog Posts ===-->
		<div class="container content-md">
		
			<div class="row">
				<!-- 리스트 컨탠츠 -->
				<div class="col-md-9">
					
					<div class="row">
					
						<!-- 리스트 한개 -->
						<div class="col-sm-6 news-v3" style="padding:10px; padding-top: 0px; padding-bottom: 30px;">
							<img class="img-responsive" src="">
							<div class="news-v3-in-sm" style="border: 1px solid lightgray;">
								<ul class="list-inline posted-info">
									<li>아이디</li>
									<li>카테고리</li>
									<li>작성일자</li>
								</ul>
								<h2><a href="#" style="white-space: nowrap; text-overflow: ellipsis; overflow: hidden; display: block;">일정제목</a></h2>
								<div style="height:100px; overflow:hidden;">
									요약
								</div>
								<ul class="post-shares">
									<li><a href="#"><i class="rounded-x icon-like"></i><span>좋아요카운트</span></a></li>
									<li><a href="#"><i class="rounded-x icon-speech"></i><span>댓글카운트</span></a></li>
									<li><a href="#"><i class="rounded-x icon-flag"></i><span>장소카운트</span></a></li>
								</ul>
							</div>
						</div>
						
						
						<!-- 리스트 한개 -->
						<div class="col-sm-6 news-v3" style="padding:10px; padding-top: 0px; padding-bottom: 30px;">
							<img class="img-responsive" src="https://thumb-wishbeen.akamaized.net/oHYq83t5yv8DeMJ3OhAuLPtEdTY=/448x170/smart/filters:no_upscale()/img-wishbeen.akamaized.net/plan/1460703895209_5386658122_c4ac5fdfe3_b.jpg">
							<div class="news-v3-in-sm" style="border: 1px solid lightgray; overflow: hidden;">
								<ul class="list-inline posted-info">
									<li>오똑똑</li>
									<li>여행일정</li>
									<li>2015년 11월 16일</li>
								</ul>
								<h2><a href="#" style="white-space: nowrap; text-overflow: ellipsis; overflow: hidden; display: block;">제주 핵심 명소 78곳 1분 요약</a></h2>
								<div style="height:100px; overflow:hidden;">
								여행 기간은 한정적인데 가고 싶은 곳은 너무 많아서 뭘 어디서부터 어떻게 해야 될지 모르겠다면 집중! 가고 싶은 제주 여행지들을 모두 모으고, 지도에 싹 다 찍었다! 눈에 보기 쉬운 제주 위시리스트 78곳 총정리.
								</div>
								<ul class="post-shares">
									<li><a href="#"><i class="rounded-x icon-like"></i><span>10</span></a></li>
									<li><a href="#"><i class="rounded-x icon-speech"></i><span>5</span></a></li>
									<li><a href="#"><i class="rounded-x icon-flag"></i><span>5</span></a></li>
								</ul>
							</div>
						</div>
						<!-- 리스트 한개 -->
						<div class="col-sm-6 news-v3" style="padding:10px; padding-top: 0px; padding-bottom: 30px;">
							<img class="img-responsive" src="https://thumb-wishbeen.akamaized.net/6EHuODnpVF0_5rJvtbp44AKj9jA=/448x170/smart/filters:no_upscale()/img-wishbeen.akamaized.net/plan/1411550254627_%EC%9C%84%EC%8B%9C%EB%B9%88_%ED%94%BD_%ED%8C%8C%EB%A6%AC2.jpg">
							<div class="news-v3-in-sm" style="border: 1px solid lightgray;">
								<ul class="list-inline posted-info">
									<li>오똑똑</li>
									<li>여행일정</li>
									<li>2015년 11월 16일</li>
								</ul>
								<h2><a href="#" style="white-space: nowrap; text-overflow: ellipsis; overflow: hidden; display: block;">짧은 시간동안 파리를 간략하게 훑을 수 있는 플랜</a></h2>
								<div style="height:100px; overflow:hidden;">
									파리를 제대로 보려면 일주일로도 부족하다.
									하지만 이번 여행에서 우리에게 주어진 시간은 단 4박 5일!
									파리의 핵심만 쏙쏙 골라 여행하는 플랜! :)
									
									비용은 4인 중심으로 정리했다. 그룹할인을 받은 경우는 거의 없으니 4등분하여도 거의 무방할 것.
									숙박비용이 포함되어 있고, 한인 민박을 이용할 경우 조금 더 저렴할 수 있다.
									
									파리를 처음 가보는데, 시간이 촉박하다거나
									부모님을 모시고 주요 포인트만 관광하는 방식의 여행을 하는 사람들에게 추천!
									
									*포함되어 있는 비용
									- 각종 입장료, 주요 교통비 (시내 교통비 제외), 식비, 숙박비
									
									*제외된 비용
									- 비행기 티켓값, 시내교통비, 에펠탑과 개선문은 올라가지 않았기 때문에 비용에서 제외.
								</div>
								<ul class="post-shares">
									<li><a href="#"><i class="rounded-x icon-like"></i><span>10</span></a></li>
									<li><a href="#"><i class="rounded-x icon-speech"></i><span>5</span></a></li>
									<li><a href="#"><i class="rounded-x icon-flag"></i><span>5</span></a></li>
								</ul>
							</div>
						</div>
						
					</div><!--/end row-->
					<!-- End News v3 -->
					
					<!-- 페이징 -->
					<div class="text-center">
					<ul class="pagination">
						<li><a href="#">«</a></li>
						<li><a href="#">1</a></li>
						<li><a href="#">2</a></li>
						<li class="active"><a href="#">3</a></li>
						<li><a href="#">»</a></li>
					</ul>
					</div><!-- 페이징 끝 -->
					
				</div><!-- 일정 리스트 끝 -->

				
				
				<div class="col-md-3 "><!-- Blog Sidebar -->
					<div class="bg-light">
						<h4><i class="fa fa-sliders"></i>검색범위</h4>
						<select name="search" class="form-control margin-bottom-20">
							<option value="1" selected>전체</option>
							<option value="2">최근1년</option>
							<option value="3">최근1달</option>
							<option value="4">최근1주</option>
							<option value="5">최근1일</option>
						</select>
						
						<h4><i class="fa fa-align-justify"></i>정렬방식</h4>
						<select name="search" class="form-control margin-bottom-20">
							<option value="1" selected>정렬방식</option>
							<option value="2">정렬방식</option>
							<option value="3">정렬방식</option>
						</select>
						
						<h4><i class="fa fa-calendar"></i>여행기간</h4>
						<input type="text" id="day-range-value" readonly style="border: 0; color: #f6931f; font-weight: bold;">
						<div id="day-range" class="margin-bottom-20"></div>
						
						<button>검색적용</button>

					</div>

				</div><!-- End Blog Sidebar -->
				
			</div>
		</div>
		<!--=== End Blog Posts ===-->
		<!--=== 내용 끝 ===-->
		

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
	<script type="text/javascript" src="${pageContext.request.contextPath}/assets/plugins/fancybox/source/jquery.fancybox.pack.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

	<!-- JS Page Level -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/app.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/plugins/fancy-box.js"></script>
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
	<script type="text/javascript" src="list.js"></script>
	
</body>
</html>
