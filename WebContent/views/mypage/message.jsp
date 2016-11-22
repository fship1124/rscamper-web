<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->

<head>
<title>프로필</title>

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

<!-- CSS Implementing Plugins -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/plugins/scrollbar/css/jquery.mCustomScrollbar.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/plugins/sky-forms-pro/skyforms/css/sky-forms.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/plugins/sky-forms-pro/skyforms/custom/custom-sky-forms.css">

<!-- CSS Page Style -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/pages/profile.css">

<!-- CSS Theme -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/theme-colors/default.css" id="style_color">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/theme-skins/dark.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/custom.css">

<!-- 사용자 정의 CSS -->
<link rel="stylesheet" href="message.css">

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
					<li><a href="${pageContext.request.contextPath}/views/mypage/profile.jsp">MYPAGE</a></li>
					<li class="active"><a href="${pageContext.request.contextPath}/views/mypage/message.jsp">MESSAGE</a></li>
				</ul>
			</div>
		</div>
		<!--=== 사이트맵 끝 ===-->

		<!--=== 내용 ===-->
		<div class="container content profile" style="padding-top: 20px;" ng-app="myApp" ng-controller="MyController">
		
			<!-- 배경 사진 업로드 모달 -->
			<%@include file="include/BGUploadFormModal.jsp"%>
			
			<!-- 프로필 사진 업로드 모달 -->
			<%@include file="include/profileUploadFormModal.jsp"%>
		
			<!-- 사용자 사진 및 배경사진 include -->
			<%@include file="include/userPhoto.jsp"%>
			
			<div class="row" style="margin-top: 30px;">
			
				<!--Left Sidebar-->
				<%@include file="include/left_sidebar.jsp"%>
				
				<div class="col-md-9">
					<div class="profile-body margin-bottom-20">
						<div class="tab-v1">
							<ul class="nav nav-justified nav-tabs">
								<li class="active"><a data-toggle="tab" href="#profile">받은 쪽지</a></li>
								<!-- ngIf: user.providerName == 'password' -->
								<li><a data-toggle="tab" href="#settings">보낸 쪽지</a></li>
							</ul>
							<div class="tab-content">

								<div id="profile" class="profile-edit tab-pane fade in active">
									<div id="listBtnMenu" class="mailListBtn">
										<div class="row">
											<div class="col-md-7">
												<button class="btn btn-default">읽지않은상태로표시</button>
												<button class="btn btn-default">스팸신고</button>
												<button class="btn btn-default">삭제</button>
											</div>
											<div class="col-md-5">
												<div class="has-success has-feedback col-md-8">
													<input type="text" class="form-control" id="inputSuccess4"
														aria-describedby="inputSuccess4Status" placeholder="search"> 
														<span class="glyphicon glyphicon-search form-control-feedback"
														aria-hidden="true" style="margin-right: 20px;"></span> 
														<span id="inputSuccess4Status" class="sr-only">(success)</span>
												</div>
												<div class="col-md-4">
													<button class="btn btn-default">+ 새 쪽지</button>
												</div>
											</div>
										</div>
										<div class="row" style="margin-top: 20px;">
											<div class="col-md-8">
												<div class="layoutSelect">
													<span class="check_mail primary _c1(mlCore|toggleCheckAll)">
														<label for="mailCheckAll" class="blind">선택: </label>
													</span> 
													<a title="메일 목록 보기" href="javascript:;">
														<span class="spr _c1(myCore|showViewTypeLayer) _ccr(clt.viewType) _stopDefault">
														<span class="blind">모든 쪽지, </span>
														</span>
													</a>
													<p id="trash_list_notice_msg" class="notice_msg"
														style="display: none;"></p>
													<a title="목록/본문 보기" href="javascript:;">
														<span>
															<span class="blind">읽은 쪽지, </span>
														</span>
													</a> 
													<a title="인쇄" href="#">
														<span class="spr l8">
															<span class="blind">선택 취소</span>
														</span>
													</a>
												</div>
											</div>


											<div class="col-md-4" style="padding-left:40px; padding-right: 0px;">
												<span class="check_mail primary _c1(mlCore|toggleCheckAll)">
														<p>
														<label for="mailCheckAll" class="blind">보기: </label>
  <button type="button" class="btn btn-primary btn-sm active">모든 쪽지</button>
  <button type="button" class="btn btn-default btn-sm">읽지않은쪽지</button>
</p>
												</span> 
											</div>
										</div>




									</div>
								</div>



								<div id="settings" class="profile-edit tab-pane fade">
									<dl class="dl-horizontal">
										<dt><strong>UID</strong></dt>
										<dd ng-bind="user.userUid" class="ng-binding">XhYKEtss94gRsy1OfhNqwk3mEE43</dd>
										<hr>
									</dl>
								</div>
							</div>
						</div>
					</div>
				</div>































				
				
			</div><!--/end row-->
		</div>
		<!--=== End Profile ===-->
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
	<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.8/angular.min.js"></script>

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
	<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
	<script src="${pageContext.request.contextPath}/assets/plugins/sky-forms-pro/skyforms/js/sky-forms-ie8.js"></script>
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
	<script type="text/javascript" src="js/ng-simple-upload.js"></script>
	<script type="text/javascript" src="message.js"></script>
	
</body>
</html>
