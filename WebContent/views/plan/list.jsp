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
						<div class="col-sm-6 news-v3" style="padding-bottom: 30px;">
							<img class="img-responsive" src="https://thumb-wishbeen.akamaized.net/4gcif2bWPwTIpoWZ1rVOOrBJl8I=/448x170/smart/filters:no_upscale()/img-wishbeen.akamaized.net/plan/1462948625627_cover.jpg">
							<div class="news-v3-in-sm no-padding">
								<ul class="list-inline posted-info">
									<li>오똑똑</li>
									<li>여행일정</li>
									<li>2015년 11월 16일</li>
								</ul>
								<h2><a href="#">제주 핵심 명소 78곳 1분 요약</a></h2>
								<p>여행 기간은 한정적인데 가고 싶은 곳은 너무 많아서 뭘 어디서부터 어떻게 해야 될지 모르겠다면 집중! 가고 싶은 제주 여행지들을 모두 모으고, 지도에 싹 다 찍었다! 눈에 보기 쉬운 제주 위시리스트 78곳 총정리.</p>
								<ul class="post-shares">
									<li><a href="#"><i class="rounded-x icon-like"></i><span>10</span></a></li>
									<li><a href="#"><i class="rounded-x icon-speech"></i><span>5</span></a></li>
									<li><a href="#"><i class="rounded-x icon-flag"></i><span>5</span></a></li>
								</ul>
							</div>
						</div>
						<!-- 리스트 한개 -->
						<div class="col-sm-6 news-v3" style="padding-bottom: 30px;">
							<img class="img-responsive" src="https://thumb-wishbeen.akamaized.net/4gcif2bWPwTIpoWZ1rVOOrBJl8I=/448x170/smart/filters:no_upscale()/img-wishbeen.akamaized.net/plan/1462948625627_cover.jpg">
							<div class="news-v3-in-sm no-padding">
								<ul class="list-inline posted-info">
									<li>오똑똑</li>
									<li>여행일정</li>
									<li>2015년 11월 16일</li>
								</ul>
								<h2><a href="#">제주 핵심 명소 78곳 1분 요약</a></h2>
								<p>여행 기간은 한정적인데 가고 싶은 곳은 너무 많아서 뭘 어디서부터 어떻게 해야 될지 모르겠다면 집중! 가고 싶은 제주 여행지들을 모두 모으고, 지도에 싹 다 찍었다! 눈에 보기 쉬운 제주 위시리스트 78곳 총정리.</p>
								<ul class="post-shares">
									<li><a href="#"><i class="rounded-x icon-like"></i><span>10</span></a></li>
									<li><a href="#"><i class="rounded-x icon-speech"></i><span>5</span></a></li>
									<li><a href="#"><i class="rounded-x icon-flag"></i><span>5</span></a></li>
								</ul>
							</div>
						</div>
						<!-- 리스트 한개 -->
						<div class="col-sm-6 news-v3" style="padding-bottom: 30px;">
							<img class="img-responsive" src="https://thumb-wishbeen.akamaized.net/4gcif2bWPwTIpoWZ1rVOOrBJl8I=/448x170/smart/filters:no_upscale()/img-wishbeen.akamaized.net/plan/1462948625627_cover.jpg">
							<div class="news-v3-in-sm no-padding">
								<ul class="list-inline posted-info">
									<li>오똑똑</li>
									<li>여행일정</li>
									<li>2015년 11월 16일</li>
								</ul>
								<h2><a href="#">제주 핵심 명소 78곳 1분 요약</a></h2>
								<p>여행 기간은 한정적인데 가고 싶은 곳은 너무 많아서 뭘 어디서부터 어떻게 해야 될지 모르겠다면 집중! 가고 싶은 제주 여행지들을 모두 모으고, 지도에 싹 다 찍었다! 눈에 보기 쉬운 제주 위시리스트 78곳 총정리.</p>
								<ul class="post-shares">
									<li><a href="#"><i class="rounded-x icon-like"></i><span>10</span></a></li>
									<li><a href="#"><i class="rounded-x icon-speech"></i><span>5</span></a></li>
									<li><a href="#"><i class="rounded-x icon-flag"></i><span>5</span></a></li>
								</ul>
							</div>
						</div>
						<!-- 리스트 한개 -->
						<div class="col-sm-6 news-v3" style="padding-bottom: 30px;">
							<img class="img-responsive" src="https://thumb-wishbeen.akamaized.net/4gcif2bWPwTIpoWZ1rVOOrBJl8I=/448x170/smart/filters:no_upscale()/img-wishbeen.akamaized.net/plan/1462948625627_cover.jpg">
							<div class="news-v3-in-sm no-padding">
								<ul class="list-inline posted-info">
									<li>오똑똑</li>
									<li>여행일정</li>
									<li>2015년 11월 16일</li>
								</ul>
								<h2><a href="#">제주 핵심 명소 78곳 1분 요약</a></h2>
								<p>여행 기간은 한정적인데 가고 싶은 곳은 너무 많아서 뭘 어디서부터 어떻게 해야 될지 모르겠다면 집중! 가고 싶은 제주 여행지들을 모두 모으고, 지도에 싹 다 찍었다! 눈에 보기 쉬운 제주 위시리스트 78곳 총정리.</p>
								<ul class="post-shares">
									<li><a href="#"><i class="rounded-x icon-like"></i><span>10</span></a></li>
									<li><a href="#"><i class="rounded-x icon-speech"></i><span>5</span></a></li>
									<li><a href="#"><i class="rounded-x icon-flag"></i><span>5</span></a></li>
								</ul>
							</div>
						</div>
						<!-- 리스트 한개 -->
						<div class="col-sm-6 news-v3" style="padding-bottom: 30px;">
							<img class="img-responsive" src="https://thumb-wishbeen.akamaized.net/4gcif2bWPwTIpoWZ1rVOOrBJl8I=/448x170/smart/filters:no_upscale()/img-wishbeen.akamaized.net/plan/1462948625627_cover.jpg">
							<div class="news-v3-in-sm no-padding">
								<ul class="list-inline posted-info">
									<li>오똑똑</li>
									<li>여행일정</li>
									<li>2015년 11월 16일</li>
								</ul>
								<h2><a href="#">제주 핵심 명소 78곳 1분 요약</a></h2>
								<p>여행 기간은 한정적인데 가고 싶은 곳은 너무 많아서 뭘 어디서부터 어떻게 해야 될지 모르겠다면 집중! 가고 싶은 제주 여행지들을 모두 모으고, 지도에 싹 다 찍었다! 눈에 보기 쉬운 제주 위시리스트 78곳 총정리.</p>
								<ul class="post-shares">
									<li><a href="#"><i class="rounded-x icon-like"></i><span>10</span></a></li>
									<li><a href="#"><i class="rounded-x icon-speech"></i><span>5</span></a></li>
									<li><a href="#"><i class="rounded-x icon-flag"></i><span>5</span></a></li>
								</ul>
							</div>
						</div>
						<!-- 리스트 한개 -->
						<div class="col-sm-6 news-v3" style="padding-bottom: 30px;">
							<img class="img-responsive" src="https://thumb-wishbeen.akamaized.net/4gcif2bWPwTIpoWZ1rVOOrBJl8I=/448x170/smart/filters:no_upscale()/img-wishbeen.akamaized.net/plan/1462948625627_cover.jpg">
							<div class="news-v3-in-sm no-padding">
								<ul class="list-inline posted-info">
									<li>오똑똑</li>
									<li>여행일정</li>
									<li>2015년 11월 16일</li>
								</ul>
								<h2><a href="#">제주 핵심 명소 78곳 1분 요약</a></h2>
								<p>여행 기간은 한정적인데 가고 싶은 곳은 너무 많아서 뭘 어디서부터 어떻게 해야 될지 모르겠다면 집중! 가고 싶은 제주 여행지들을 모두 모으고, 지도에 싹 다 찍었다! 눈에 보기 쉬운 제주 위시리스트 78곳 총정리.</p>
								<ul class="post-shares">
									<li><a href="#"><i class="rounded-x icon-like"></i><span>10</span></a></li>
									<li><a href="#"><i class="rounded-x icon-speech"></i><span>5</span></a></li>
									<li><a href="#"><i class="rounded-x icon-flag"></i><span>5</span></a></li>
								</ul>
							</div>
						</div>
						<!-- 리스트 한개 -->
						<div class="col-sm-6 news-v3" style="padding-bottom: 30px;">
							<img class="img-responsive" src="https://thumb-wishbeen.akamaized.net/4gcif2bWPwTIpoWZ1rVOOrBJl8I=/448x170/smart/filters:no_upscale()/img-wishbeen.akamaized.net/plan/1462948625627_cover.jpg">
							<div class="news-v3-in-sm no-padding">
								<ul class="list-inline posted-info">
									<li>오똑똑</li>
									<li>여행일정</li>
									<li>2015년 11월 16일</li>
								</ul>
								<h2><a href="#">제주 핵심 명소 78곳 1분 요약</a></h2>
								<p>여행 기간은 한정적인데 가고 싶은 곳은 너무 많아서 뭘 어디서부터 어떻게 해야 될지 모르겠다면 집중! 가고 싶은 제주 여행지들을 모두 모으고, 지도에 싹 다 찍었다! 눈에 보기 쉬운 제주 위시리스트 78곳 총정리.</p>
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
						<input class="form-control margin-bottom-20" type="range">
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
