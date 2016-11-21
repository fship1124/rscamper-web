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
				<h1 class="pull-left">Butterfly Train</h1>
				<ul class="pull-right breadcrumb">
					<li class="active"><a href="main.jsp">home</a></li>
				</ul>
			</div>
		</div>

		<!-- Comment -->
		<div class="container content-md" style="height: 450px; background: #F6F6F6; padding: 20px;">
			<div>
				<label for="comment">Comment:</label>
				<div class="input-group margin-bottom-20">
					<span class="input-group-addon"><i class="fa fa-plug"></i></span> 
					<input type="text" id="inputComment" placeholder="content" class="form-control" style="width: 90%;">
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
			
			<br><br>
			<div class="bigHeader" style="line-height:37px; font-size: 24px; font-weight: 700; border-bottom:2px solid black;">
                	관광지 맛집 숙소
            </div>
            <div class="conts-box-list" style="margin-top: 20px; height: 500px; border: 1px solid blue;">
            </div>
            <a class="btn-more" href="/city?serviceType=global&amp;tab=hotdeal" style="margin: 0 auto;">
            <span>관광지 맛집 숙소</span> 더보기 +</a>
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
	<script type="text/javascript" src="main.js"></script>
	
</body>
</html>
