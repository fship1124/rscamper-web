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
<meta name="description" content="">
<meta name="author" content="">

<!-- Favicon -->
<link rel="shortcut icon" href="/rscamper-web/favicon.ico">

<!-- Web Fonts -->
<link rel='stylesheet' type='text/css' href='//fonts.googleapis.com/css?family=Open+Sans:400,300,600&amp;subset=cyrillic,latin'>

<!-- CSS Global Compulsory -->
<link rel="stylesheet" href="/rscamper-web/assets/plugins/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="/rscamper-web/assets/css/style.css">

<!-- CSS Header and Footer -->
<link rel="stylesheet" href="/rscamper-web/assets/css/headers/header-default.css">
<link rel="stylesheet" href="/rscamper-web/assets/css/footers/footer-v3.css">

<!-- CSS Implementing Plugins -->
<link rel="stylesheet" href="/rscamper-web/assets/plugins/animate.css">
<link rel="stylesheet" href="/rscamper-web/assets/plugins/line-icons/line-icons.css">
<link rel="stylesheet" href="/rscamper-web/assets/plugins/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet" href="/rscamper-web/assets/plugins/parallax-slider/css/parallax-slider.css">
<link rel="stylesheet" href="/rscamper-web/assets/plugins/owl-carousel/owl-carousel/owl.carousel.css">
<link rel="stylesheet" href="/rscamper-web/assets/plugins/login-signup-modal-window/css/style.css">

<!-- CSS Theme -->
<link rel="stylesheet" href="/rscamper-web/assets/css/theme-colors/default.css" id="style_color">
<link rel="stylesheet" href="/rscamper-web/assets/css/theme-skins/dark.css">

<!-- 사용자 정의 CSS -->
<link rel="stylesheet" href="main.css">

</head>

<body class="header-fixed header-fixed-space-default">
	<div class="wrapper">

		<!-- 헤더 include -->
		<%@include file="/resources/include/header.jsp"%>

		<!-- ================================================================ -->

		<!--=== 사이트맵 ===-->
		<div class="breadcrumbs">
			<div class="container">
				<ul class="pull-left breadcrumb">
					<li><a href="/rscamper-web/views/main.jsp"><i class="fa fa-home"></i></a></li>
				</ul>
			</div>
		</div>

		<!-- Comment -->
		<div class="container content-md" style="height: 450px; background: #F6F6F6">
			<div>
				<label for="comment">Comment:</label>
				<div class="input-group margin-bottom-20">
					<span class="input-group-addon"><i class="fa fa-plug"></i></span> 
					<input type="text" id="inputComment" placeholder="content" class="form-control" style="width: 1000px;">
					<button type="button" id="commentBtn" class="btn btn-success">등록</button>
				</div>
			</div>
			<!-- Comment List -->
			<div id="comment-list" style="height: 280px; overflow: auto;"></div>
		</div>
		<!-- End Comment -->

		<!--=== Content ===-->
		<div class="container content-md">
			<div class="bigHeader" style="line-height:37px; font-size: 24px; font-weight: 700; border-bottom:2px solid black;">
                	추천 콘텐츠
            </div>
			<div class="conts-box-list" style="margin-top: 20px; height: 500px; border: 1px solid blue;">
            </div>
            <a class="btn-more" href="/city?serviceType=global&amp;tab=hotdeal" style="margin: 0 auto;">
            <span>추천 콘텐츠</span> 더보기 +</a>
		
			<br><br>
			<div class="bigHeader" style="line-height:37px; font-size: 24px; font-weight: 700; border-bottom:2px solid black;">
                	여행 꿀팁
            </div>
            <div class="conts-box-list" style="margin-top: 20px; height: 500px; border: 1px solid blue;">
            </div>
            <a class="btn-more" href="/city?serviceType=global&amp;tab=hotdeal" style="margin: 0 auto;">
            <span>여행 꿀팁</span> 더보기 +</a>
			<br><br>
			<div class="bigHeader" style="line-height:37px; font-size: 24px; font-weight: 700; border-bottom:2px solid black;">
                	커뮤니티
            </div>
            <div class="conts-box-list" style="margin-top: 20px; height: 500px; border: 1px solid blue;">
            </div>
            <a class="btn-more" href="/city?serviceType=global&amp;tab=hotdeal" style="margin: 0 auto;">
            <span>커뮤니티</span> 더보기 +</a>

		</div>
		<!--=== End Content ===-->
		<!-- ================================================================ -->



		<!-- 푸터 include -->
		<%@include file="/resources/include/footer.jsp"%>

	</div>
	
	<!-- 로그인 모달 include -->
	<%@include file="/resources/include/userModal.jsp"%>

	<!-- JS Global Compulsory -->
	<script type="text/javascript" src="/rscamper-web/assets/plugins/jquery/jquery.min.js"></script>
	<script type="text/javascript" src="/rscamper-web/assets/plugins/jquery/jquery-migrate.min.js"></script>
	<script type="text/javascript" src="/rscamper-web/assets/plugins/bootstrap/js/bootstrap.min.js"></script>

	<!-- JS Implementing Plugins -->
	<script type="text/javascript" src="/rscamper-web/assets/plugins/back-to-top.js"></script>
	<script type="text/javascript" src="/rscamper-web/assets/plugins/smoothScroll.js"></script>
	<script type="text/javascript" src="/rscamper-web/assets/plugins/parallax-slider/js/modernizr.js"></script>
	<script type="text/javascript" src="/rscamper-web/assets/plugins/parallax-slider/js/jquery.cslider.js"></script>
	<script type="text/javascript" src="/rscamper-web/assets/plugins/owl-carousel/owl-carousel/owl.carousel.js"></script>
	<script type="text/javascript" src="/rscamper-web/assets/plugins/modernizr.js"></script>
	<script type="text/javascript" src="/rscamper-web/assets/plugins/login-signup-modal-window/js/main.js"></script>

	<!-- JS Page Level -->
	<script type="text/javascript" src="/rscamper-web/assets/js/app.js"></script>
	<script type="text/javascript" src="/rscamper-web/assets/js/plugins/owl-carousel.js"></script>
	<script type="text/javascript" src="/rscamper-web/assets/js/plugins/parallax-slider.js"></script>

	<!--[if lt IE 9]>
	<script src="/rscamper-web/assets/plugins/respond.js"></script>
	<script src="/rscamper-web/assets/plugins/html5shiv.js"></script>
	<script src="/rscamper-web/assets/plugins/placeholder-IE-fixes.js"></script>
	<![endif]-->

	<!-- 파이어베이스 -->
	<script type="text/javascript" src="https://www.gstatic.com/firebasejs/3.5.1/firebase.js"></script>
	<script type="text/javascript" src="/rscamper-web/resources/js/firebaseInit.js"></script>
	<script type="text/javascript" src="/rscamper-web/resources/js/firebaseAuth.js"></script>
	
	<!-- 메뉴 -->
	<script type="text/javascript" src="/rscamper-web/resources/js/menu.js"></script>
	
	<!-- INIT APP -->
	<script type="text/javascript" src="/rscamper-web/resources/js/initApp.js"></script>
	
	<!-- 사용자 정의 Java Script 작성이 완료되면 외부파일로 뺄것 -->
	<script type="text/javascript" src="main.js"></script>
	
</body>
</html>
