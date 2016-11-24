<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
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
<link rel="stylesheet" href="default.css">

</head>

<body class="header-fixed header-fixed-space-default">
	<div class="wrapper">

		<!-- 헤더 include -->
		<%@include file="/resources/include/header.jsp"%>

		<!--=== 사이트맵 ===-->
		<div class="breadcrumbs">
			<div class="container">
				<ul class="breadcrumb pull-left">
					<li><a href="http://localhost:8081"><i class="fa fa-home"></i></a></li>
					<li><a href="javascript:history.back()">tour</a></li>
					<li class="active">New</li>
				</ul>
			</div>
		</div>

		<!--=== 내용 ===-->
		<!--=== Content ===-->
		<div class="container content-md content">
			<h4></h4>
			<div class="row">
					<div class="col-md-6 md-margin-bottom-50">
						<div class="ms-showcase2-template" style="position: relative;">
						<!-- Master Slider -->
						<div class="master-slider ms-skin-default ms-wk" id="masterslider"
							style="visibility: visible; opacity: 1; margin: 0px;">
							<div class="ms-container">
								<div class="ms-inner-controls-cont" style="max-width: 550px;">
									<div class="ms-view ms-fade-view ms-grab-cursor"
										style="width: 550px; height: 550px;">
										<div class="ms-slide-container">
											<div class="ms-slide ms-sl-selected" style="width: 550px; height: 550px; opacity: 1;">
												<div class="ms-slide-bgcont" style="height: 100%; opacity: 1;">
													<img class="ms-brd" src="" alt="lorem ipsum dolor sit" style="width: 550px; height: 550px; margin-left: 0px;">
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>

							<div class="image_container" style="margin-top: 20px;  width: 550px; height: 130px;">
								<div style="margin: 0 auto; width: 545px; height: 130px;">
								<button type="button" class="bottom_Move" onclick="bottomMove(1)" style="margin: 30px 10px; float: left; width: 25px; height: 25px; display: inline-block; ">◀</button>
								<div class="bottom_slider_canvas" style="float: left; width: 445px; height: 100px; margin: 0 auto; display: inline-block; overflow: hidden;">
									<div class="bottom_slider_panel" style="float:left; margin: 0 auto; position: relative; border: 1px solid black;"></div>
								</div>
								<button type="button" class="bottom_Move" onclick="bottomMove(2)" style="margin: 30px 10px; float: left; width: 25px; height: 25px; display: inline-block; ">▶</button>
								</div>
							</div>

							<div class="bx-controls bx-has-pager bx-has-controls-direction">
							</div>
						</div>
					</div>
					</div>

				<div class="col-md-6 content1">
					<ul id="myTab" class="nav nav-tabs" role="tablist">
						<li role="presentation" class="active"><a data-target="#home"
							id="home-tab" role="tab" data-toggle="tab" aria-controls="home"
							aria-expanded="true">기본 정보</a></li>
						<li role="presentation" class=""><a data-target="#profile"
							role="tab" id="profile-tab" data-toggle="tab"
							aria-controls="profile" aria-expanded="false">이용 안내</a></li>
						<li role="presentation" class="dropdown">
							<a data-target="#" id="myTabDrop1" class="dropdown-toggle" data-toggle="dropdown" aria-controls="myTabDrop1-contents">상세 정보 
								<span class="caret"></span>
							</a>
							<ul class="dropdown-menu" role="menu" aria-labelledby="myTabDrop1" id="myTabDrop1-contents">
								<li><a data-target="#dropdown1" tabindex="-1" role="tab" id="dropdown1-tab" data-toggle="tab" aria-controls="dropdown1">홈페이지</a></li>
								<li><a data-target="#dropdown2" tabindex="-1" role="tab" id="dropdown2-tab" data-toggle="tab" aria-controls="dropdown2">상세 정보</a></li>
							</ul>
						</li>
					</ul>
					
					
	

					<div id="myTabContent" class="tab-content">
						<div role="tabpanel" class="tab-pane fade active in" id="home" aria-labelledby="home-tab">
							<div id="content1" class="tabCon" style="display: block;">
								<ul class="txtCon tab1" tabindex="0"></ul>
							</div>
						</div>
						<div role="tabpanel" class="tab-pane fade" id="profile"	aria-labelledby="profile-tab">
							<div id="content2" class="tabCon" style="display: block;">
								<ul class="txtCon tab2" tabindex="0"></ul>
							</div>
						</div>
						<div role="tabpanel" class="tab-pane fade tab3" id="dropdown1" aria-labelledby="dropdown1-tab"></div>
						<div role="tabpanel" class="tab-pane fade tab4" id="dropdown2" aria-labelledby="dropdown2-tab"></div>
					</div>
				</div>
			</div>

			<div class="row content2">
				<div class="news-v3-in">
					<ul class="list-inline posted-info">
						<li>By Luke Etheridge</li>
						<li>In <a href="#">Design</a></li>
						<li>Posted January 24, 2015</li>
					</ul>
					<h2></h2>
					<p>Nullam elementum tincidunt massa, a pulvinar leo ultricies
						ut. Ut fringilla lectus tellus, imperdiet molestie est volutpat
						at. Sed viverra cursus nibh, sed consectetur ipsum sollicitudin
						sed. Cras erat est, euismod id congue sed, sollicitudin sed odio.
						Nullam non metus in mi rhoncus efficitur...</p>
					<ul class="post-shares">
						<li><a href="#"> <i class="rounded-x icon-speech"></i> <span>5</span>
						</a></li>
						<li><a href="#"><i class="rounded-x icon-share"></i></a></li>
						<li><a href="#"><i class="rounded-x icon-heart"></i></a></li>
					</ul>
				</div>
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
	
	
	
	<!---------------------여기서부터수정------------------------------------------------------------------------------------>
	
	<!-- 사용자 정의 Java Script 작성이 완료되면 외부파일로 뺄것 -->
	<script type="text/javascript" src="detail.js"></script>
	<script type="text/javascript">
		var obj = new Object();
		obj.contentid = ${param.contentid};
		obj.contenttypeid = ${param.contenttypeid};
		
		apiAjax(obj);
	</script>
</body>
</html>
