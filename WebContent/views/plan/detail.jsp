<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->

<head>
<title>일정</title>

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
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/plugins/brand-buttons/brand-buttons.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/plugins/brand-buttons/brand-buttons-inversed.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/plugins/sky-forms-pro/skyforms/css/sky-forms.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/plugins/sky-forms-pro/skyforms/custom/custom-sky-forms.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/pages/shortcode_timeline2.css">

<!-- CSS Theme -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/theme-colors/default.css" id="style_color">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/theme-skins/dark.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/custom.css">

<!-- Full Calendar -->
<link rel='stylesheet' href='${pageContext.request.contextPath}/resources/plugins/fullcalendar-3.0.1/fullcalendar.css' />

<!-- Sweet Alert -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/plugins/sweetalert/dist/sweetalert.css">

<!-- Jquery Toast Plugin -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/plugins/jquery-toast-plugin/dist/jquery.toast.min.css">    

<!-- 사용자 정의 CSS -->
<link rel="stylesheet" href="makeplan.css">

</head>

<body class="header-fixed header-fixed-space-default" ng-app="TourPlanApp" ng-controller="DetailController">
	<div class="wrapper">

		<!-- 헤더 include -->
		<%@include file="/resources/include/header.jsp"%>

		<!--=== 사이트맵 ===-->
		<div class="breadcrumbs">
			<div class="container">
				<ul class="pull-left breadcrumb">
					<li><a href="${pageContext.request.contextPath}/views/main.jsp"><i class="fa fa-home"></i></a></li>
					<li class="active"><a href="makeplan.jsp">일정만들기</a></li>
				</ul>
			</div>
		</div>
		<!--=== 사이트맵 끝 ===-->
		
		<!-- 일정 만들기 헤더 include -->
		<%@include file="include/planHeaderDetail.jsp"%>

		<!--=== 내용 ===-->
		<div id="writeTourPlan">
			
			<!-- 여행장소 디테일 모달 -->
			<%@include file="include/detailTourSpotModal.jsp"%>
			
			<div id="leftMenu">
			
				<!-- 저장 / 취소 -->
				<div id="controllers" ng-show="isWriter">
					<div class="bg-light">
						<button class="btn rounded btn-evernote-inversed" style="width: 49%;" ng-click="modTourPlan();">
							<i class="fa fa-pencil-square-o"></i> 수정
						</button>
						<button class="btn rounded btn-evernote-inversed" style="width: 49%;" ng-click="togglePrivateTourPlan();" ng-if="tourPlan.isOpen == 2">
							<i class="fa fa-key"></i> 비공 <i class="fa fa-arrow-right"></i> 공개
						</button>
						<button class="btn rounded btn-evernote" style="width: 49%;" ng-click="togglePrivateTourPlan();" ng-if="tourPlan.isOpen == 1">
							<i class="fa fa-key"></i> 공개 <i class="fa fa-arrow-right"></i> 비공
						</button>
					</div>
				</div>
				
				<!-- 작성자 프로필 -->
				<div id="writerProfile" style="padding: 20px; text-align: center; background-image:url('{{writer.bgPhotoUrl}}'); background-size: cover; color: lightgray; text-shadow: -1px 0 black, 0 1px black, 1px 0 black, 0 -1px black;" >
<!-- 					<br><span ng-bind="writer.userUid"></span><br> -->
					<img class="img-bordered rounded-x" src="{{writer.photoUrl}}" style="width: 120px; height: 120px; margin: 10px; ">
					<br><br><strong><span ng-bind="writer.displayName" style="font-size: 18px;"></span></strong>
					<br><br><strong><span ng-bind="writer.introduce"></span></strong>
				</div>
				
				<!-- 추천 / 북마크  -->
				<div id="writerProfile" ng-hide="isWriter">
					<ul class="list-inline badge-lists badge-box-v2" style="text-align: center;">
						<li>
							<a class="rounded-2x" href="javascript:void(0);" ng-click="likeTourPlan();" ng-show="tourPlanCheckSet.scheduleLike"><i class="fa fa-thumbs-o-up"></i>좋아요</a>
							<a class="rounded-2x" style="color:#72c02c; border-color:#72c02c;" href="javascript:void(0);" ng-click="likeTourPlan();" ng-hide="tourPlanCheckSet.scheduleLike"><i class="fa fa-thumbs-o-up"></i>좋아요</a>
							<span class="badge badge-dark rounded-x" ng-bind="tourPlan.likeCnt" ></span>
						</li>
						<li>
							<a class="rounded-2x" href="javascript:void(0);" ng-click="bookmarkTourPlan();" ng-show="tourPlanCheckSet.bookMark"><i class="fa fa-bookmark-o"></i>북마크</a>
							<a class="rounded-2x" style="color:#72c02c; border-color:#72c02c;" href="javascript:void(0);" ng-click="bookmarkTourPlan();" ng-hide="tourPlanCheckSet.bookMark"><i class="fa fa-bookmark-o"></i>북마크</a>
							<span class="badge badge-dark rounded-x" ng-bind="tourPlan.bookmarkCnt"></span>
						</li>
						<li>
							<a class="rounded-2x" href="javascript:void(0);" ng-click="customizingTourPlan();" ng-show="tourPlanCheckSet.customizing"><i class="fa fa-clone"></i>일정복사</a>
							<a class="rounded-2x" style="color:#72c02c; border-color:#72c02c;" href="javascript:void(0);" ng-click="customizingTourPlan();" ng-hide="tourPlanCheckSet.customizing"><i class="fa fa-clone"></i>일정복사</a>
							<span class="badge badge-dark rounded-x" ng-bind="tourPlan.customCnt"></span>
						</li>
					</ul>
				</div>
				
				<!-- 추천 / 북마크  -->
				<div id="writerProfile" ng-show="isWriter">
					<ul class="list-inline badge-lists badge-box-v2" style="text-align: center;">
						<li>
							<a class="rounded-2x" href="javascript:void(0);" ng-click="myselfAlert();" ng-show="tourPlanCheckSet.scheduleLike"><i class="fa fa-thumbs-o-up"></i>좋아요</a>
							<a class="rounded-2x" style="color:#72c02c; border-color:#72c02c;" href="javascript:void(0);" ng-click="myselfAlert();" ng-hide="tourPlanCheckSet.scheduleLike"><i class="fa fa-thumbs-o-up"></i>좋아요</a>
							<span class="badge badge-dark rounded-x" ng-bind="tourPlan.likeCnt" ></span>
						</li>
						<li>
							<a class="rounded-2x" href="javascript:void(0);" ng-click="myselfAlert();" ng-show="tourPlanCheckSet.bookMark"><i class="fa fa-bookmark-o"></i>북마크</a>
							<a class="rounded-2x" style="color:#72c02c; border-color:#72c02c;" href="javascript:void(0);" ng-click="myselfAlert();" ng-hide="tourPlanCheckSet.bookMark"><i class="fa fa-bookmark-o"></i>북마크</a>
							<span class="badge badge-dark rounded-x" ng-bind="tourPlan.bookmarkCnt"></span>
						</li>
						<li>
							<a class="rounded-2x" href="javascript:void(0);" ng-click="myselfAlert();" ng-show="tourPlanCheckSet.customizing"><i class="fa fa-clone"></i>일정복사</a>
							<a class="rounded-2x" style="color:#72c02c; border-color:#72c02c;" href="javascript:void(0);" ng-click="myselfAlert();" ng-hide="tourPlanCheckSet.customizing"><i class="fa fa-clone"></i>일정복사</a>
							<span class="badge badge-dark rounded-x" ng-bind="tourPlan.customCnt"></span>
						</li>
					</ul>
				</div>
				
				<!-- 일정 정보 -->
				<div id="status" style="font-size: 14px;">
					<ul class="list-group sidebar-nav-v1" >
						<li id="notification_menu" class="list-group-item">
							<span class="badge" style="background: white; color: gray; font-size: 12px;">곳</span>
							<span class="badge badge-u rounded" style="font-size: 12px;" ng-bind="allTourSpotEvent.length"></span>
							<a href="javascript:void(0);"><i class="fa fa-map-marker"></i> 관광지</a>
						</li>
						<li id="notification_menu" class="list-group-item">
							<span class="badge" style="background: white; color: gray; font-size: 12px;">개</span>
							<span class="badge badge-u rounded" style="font-size: 12px;" ng-bind="tourPlan.postCnt">0</span>
							<a href="javascript:void(0);"><i class="fa fa-book"></i> 여행기</a>
						</li>
						<li id="notification_menu" class="list-group-item">
							<span class="badge" style="background: white; color: gray; font-size: 12px;">원</span>
							<span class="badge badge-u rounded" style="font-size: 12px;">100,000,000</span>
							<a href="javascript:void(0);" ng-click="tourPlanBudget();"><i class="fa fa-money"></i> 여행 예산</a>
						</li>
					</ul>
				</div>
				
			</div><!-- left Menu 끝  -->
			
			
			<div id="rightContents">
			
				<!-- 콘텐츠 헤더 -->
				<div id="contentHeader">
					<form class="sky-form">
						<fieldset>
							<section>
								<label class="input"> 
									<i class="icon-prepend fa fa-pencil-square-o"></i>
									<input type="text" ng-model="tourPlan.strapline" readonly>
								</label>
							</section>
							<section>
								<label class="textarea">
									<textarea rows="5" ng-model="tourPlan.introduce" readonly></textarea>
								</label>
							</section>
							<section>
								<div class="row">
									<section class="col col-5">
										<label class="label" style="margin-bottom: 0px;"><strong>여행시작일</strong></label>
										<label class="input" style="margin-bottom: 0px;">
											<i class="icon-prepend fa fa-calendar"></i>
											<input id="departureDate" type="date" ng-model="tourPlan.departureDate" readonly>
										</label>
									</section>
									<section class="col col-5">
										<label class="label" style="margin-bottom: 0px;"><strong>여행종료일</strong></label>
										<label class="input" style="margin-bottom: 0px;">
											<i class="icon-prepend fa fa-calendar"></i>
											<input id="arriveDate" type="date" ng-model="tourPlan.arriveDate" readonly>
										</label>
									</section>
									<section class="col col-2">
										<label class="label" style="margin-bottom: 0px;"><strong>여행기간</strong></label>
										<label class="input" style="margin-bottom: 0px;">
											<input type="text" ng-model="tourPlan.period" readonly>
										</label>
									</section>
								</div>
							</section>
						</fieldset>
					</form>
				</div>
				
				<!-- 콘텐츠 탭 -->
				<div id="contentTab">
					<div class="tab-v2">
					
						<!-- 탭 버튼 -->
						<ul class="nav nav-tabs">
							<li class="active" style="width:50%; text-align: center; font-size: 16px;">
								<a href="#tourPlanTab" data-toggle="tab"><span class="fa fa-map-o"></span> 일정/맵</a>
							</li>
							<li style="width:50%; text-align: center; font-size: 16px;">
								<a href="#tourStoryTab" data-toggle="tab"><span class="fa fa-book"></span> 스토리</a>
							</li>
						</ul>
						
						<!-- 탭 내용 -->
						<div class="tab-content">
						
							<!-- 일정/맵 -->						
							<div class="tab-pane fade in active" id="tourPlanTab">
								
								<!-- 구글맵 -->
								<div id="map" style="height: 400px;"></div>
								
								<!-- Full Calendar -->
								<div id="calendar">
								</div>
								
							</div><!-- 일정/맵 끝 -->
							
							
							<!-- 스토리 -->
							<div class="tab-pane fade in" id="tourStoryTab">
							
								<ul class="timeline-v2">
									
									<li class="equal-height-columns" ng-repeat="tourSpotEvent in allTourSpotEvent">
										<div class="cbp_tmtime equal-height-column">
										<span>DAY {{tourSpotEvent.tourDate}}</span>
										</div>
										<i class="cbp_tmicon rounded-x hidden-xs"></i>
										<div class="cbp_tmlabel equal-height-column">
											<h2 ng-click="openDetailTourSpot(tourSpotEvent.contentId, tourSpotEvent.contentTypeId);">{{tourSpotEvent.title}}</h2>
											<div class="row">
												<div class="col-md-4">
													<img class="img-responsive" src="{{tourSpotEvent.imageUrl}}" alt="{{tourSpotEvent.title}}" ng-show="tourSpotEvent.imageUrl">
													<img class="img-responsive" src="${pageContext.request.contextPath}/resources/img/404/yaoming.png" alt="{{tourSpotEvent.title}}" ng-hide="tourSpotEvent.imageUrl">
													<div class="md-margin-bottom-20">
													</div>
												</div>
												<div class="col-md-8">
<!-- 													<p>일정시작시간 : {{tourSpotEvent.start | date: "yyyy-MM-dd HH:mm:ss" }}</p> -->
													<p>카테고리 : {{tourSpotEvent.contentTypeId | tourSpotCategory }}</p>
													<p>전화번호 : {{tourSpotEvent.tel}}</p>
													<p>주소 : {{tourSpotEvent.addr1}}</p>
												</div>
											</div>
										</div>
									</li>
									
								</ul>
								
							</div><!-- 스토리 끝 -->
							
						</div>
						
					</div>
				</div>
				
				<!-- 댓글 -->
				<div id="tourPlanComment">
				
					<div id="writeCommentForm">
						<form class="sky-form">
							<fieldset>
								<section>
									<strong style="font-size: 18px;">댓글 ({{tourPlanCommentList.length}})</strong>
									<strong style="float: right; font-size: 18px;">/200</strong><strong style="float: right; font-size: 18px;" ng-bind="tourPlanCommentForm.content.length">0</strong>
									<label class="textarea">
										<textarea rows="2" ng-model="tourPlanCommentForm.content" ng-keyup="commentLengthCheck();"> </textarea>
										<button style="float: right;" class="btn btn-evernote-inversed" type="button" ng-click="writeComment();"><i class="fa fa-tags"></i> 댓글 등록</button>
									</label>
								</section>
							</fieldset>
						</form>
					</div>
					
					<div id="commentList" style="background-color:#f4f4f4;">
					
						<div class="row blog-comments margin-bottom-10" ng-repeat="tourPlanComment in tourPlanCommentList">
							<div class="col-sm-2 sm-margin-bottom-40">
								<img class="rounded-2x bordered" src="{{tourPlanComment.photoUrl}}">
							</div>
							<div class="col-sm-10">
								<div class="comments-itself">
									<h4>
										{{tourPlanComment.displayName}}
										<span style="margin-left: 5px; margin-right: 5px;" ng-if="tourPlanComment.userUid == user.userUid">
											<button class="btn rounded btn-xs btn-evernote-inversed fa-fixed" style="padding-right:2px;" ng-click="removeComment(tourPlanComment.commentNo);">
												<i class="fa fa-times"></i>
											</button>
										</span>
										<span style="margin-left: 5px;" ng-if="tourPlanComment.userUid == user.userUid">
											<button class="btn rounded btn-xs btn-evernote-inversed fa-fixed" style="padding-right:1px;" ng-click="modifyComment();">
												<i class="fa fa-pencil-square-o"></i>
											</button>
										</span>
										<span ng-bind="tourPlanComment.regDate | timesince : 'kr'"></span>
									</h4>
									<pre ng-bind="tourPlanComment.content" style="white-space:pre-wrap;"></pre>
								</div>
							</div>
						</div>
						
					</div>
					
				</div><!-- 댓글 끝 -->
				
			</div>
		</div>
		<!--=== 내용 끝 ===-->
		
		<!-- 푸터 include -->
		<%@include file="/resources/include/footer.jsp"%>

	</div>

	<!-- 로그인 모달 include -->
	<%@include file="/resources/include/userModal.jsp"%>

	<!-- JS Global Compulsory -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/assets/plugins/jquery/jquery.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/plugins/fullcalendar-3.0.1/lib/jquery-ui.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/assets/plugins/jquery/jquery-migrate.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/lib/angular-1.5.8/angular.min.js"></script>

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
	
	<!-- Full Calendar -->
	<script src='${pageContext.request.contextPath}/resources/plugins/fullcalendar-3.0.1/lib/moment.min.js'></script>
	<script src='${pageContext.request.contextPath}/resources/plugins/fullcalendar-3.0.1/fullcalendar.js'></script>

	<!-- Sweet Alert -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/plugins/sweetalert/dist/sweetalert.min.js"></script>
	<!-- JQuery Toast Plugin -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/plugins/jquery-toast-plugin/dist/jquery.toast.min.js"></script>
	
	<!-- Googla Map API -->
 	<script src="//maps.googleapis.com/maps/api/js?key=AIzaSyDIb6fCe7x5lHU_GJozbyb2WjS293g6eY4"></script>
	
	<!-- 메뉴 -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/menu.js"></script>
	
	<!-- INIT APP -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/initApp.js"></script>
	
	<!-- 사용자 정의 Java Script 작성이 완료되면 외부파일로 뺄것 -->
	<script type="text/javascript" src="js/ng-simple-upload.js"></script>
	<script type="text/javascript" src="js/tourPlanApp.js"></script><!-- 앵귤러 모듈 및 라우터 선언 -->
	<script type="text/javascript" src="js/tourPlanFilters.js"></script><!-- 앵귤러 사용자정의 필터 선언 -->
	<script type="text/javascript" src="js/tourPlanServices.js"></script><!-- 앵귤러 사용자정의 서비스 선언 -->
	<script type="text/javascript" src="js/tourPlanDirectives.js"></script><!-- 앵귤러 사용자정의 지시자 선언 -->
	<script type="text/javascript" src="detail.js"></script>
	
</body>
</html>
