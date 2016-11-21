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
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/plugins/brand-buttons/brand-buttons.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/plugins/brand-buttons/brand-buttons-inversed.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/plugins/sky-forms-pro/skyforms/css/sky-forms.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/plugins/sky-forms-pro/skyforms/custom/custom-sky-forms.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/pages/shortcode_timeline2.css">

<!-- CSS Theme -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/theme-colors/default.css" id="style_color">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/theme-skins/dark.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/custom.css">

<!-- DayPilot Themes -->
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/plugins/DayPilotLiteJavaScript-1.3.215/demo/themes/calendar_transparent.css" />    
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/plugins/DayPilotLiteJavaScript-1.3.215/demo/themes/calendar_white.css" />    
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/plugins/DayPilotLiteJavaScript-1.3.215/demo/themes/calendar_green.css" />    

<!-- 사용자 정의 CSS -->
<link rel="stylesheet" href="makeplan.css">

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
					<li class="active"><a href="makeplan.jsp">일정만들기</a></li>
				</ul>
			</div>
		</div>
		<!--=== 사이트맵 끝 ===-->
		
		<!-- 일정 만들기 헤더 include -->
		<%@include file="include/planHeader.jsp"%>

		<!--=== 내용 ===-->
		<div id="writeTourPlan" ng-app="TourPlanApp" ng-controller="MakePlanController">
			<div id="leftMenu">
			
				<!-- 저장 / 취소 -->
				<div id="controllers">
					<div class="bg-light">
						<button class="btn rounded btn-evernote-inversed" style="width: 49%;" ng-click="">
							<i class="fa fa-floppy-o"></i> 저장하기
						</button>
						<button class="btn rounded btn-evernote" style="width: 49%;" ng-click="">
							<i class="fa fa-times"></i> 취소
						</button>
					</div>
				</div>
				
				<!-- 일정 정보 -->
				<div id="status" style="font-size: 14px;">
					<ul class="list-group sidebar-nav-v1" >
						<li id="notification_menu" class="list-group-item">
							<span class="badge" style="background: white; color: gray; font-size: 12px;">곳</span>
							<span class="badge badge-u rounded" style="font-size: 12px;">9</span>
							<a href="#"><i class="fa fa-map-marker"></i> 관광지</a>
						</li>
						<li id="notification_menu" class="list-group-item">
							<span class="badge" style="background: white; color: gray; font-size: 12px;">원</span>
							<span class="badge badge-u rounded" style="font-size: 12px;">100,000,000</span>
							<a href="#"><i class="fa fa-money"></i> 예산</a>
						</li>
						<li id="notification_menu" class="list-group-item">
							<span class="badge" style="background: white; color: gray; font-size: 12px;">개</span>
							<span class="badge badge-u rounded" style="font-size: 12px;">10</span>
							<a href="#"><i class="fa fa-book"></i> 여행기</a>
						</li>
					</ul>
				</div>
				
				<!-- 일정 클릭시 나오는 장소 탭  -->
				<div id="attractionTab">
					
					<div class="tab-v2">
					
						<!-- 탭 버튼 -->
						<ul class="nav nav-tabs">
							<li class="active" style="width:50%; text-align: center;">
								<a href="#searchTab" data-toggle="tab"><span class="fa fa-search"></span> 검색</a>
							</li>
							<li style="width:50%; text-align: center;">
								<a href="#bookmarkTab" data-toggle="tab"><span class="fa fa-bookmark-o"></span> 북마크</a>
							</li>
						</ul>
						
						<!-- 탭 내용 -->
						<div class="tab-content">
						
							<!-- 검색 -->						
							<div class="tab-pane fade in active" id="searchTab">
								
								<!-- 검색창 제어 -->
								<div id="searchHeader">
									
									<!-- 검색 -->
									<div class="bg-light" style="text-align: center;">
										<!-- 검색 텍스트 -->
										<input type="text" class="form-control margin-bottom-10" placeholder="검색할 장소이름" ng-model="searchParams.word">
										<!-- 검색 카테고리 -->
										<div class="btn-group" data-toggle="buttons" style="width:100%;">
										  <label class="btn rounded btn-tumblr" style="width:22%; margin: 3px;">
										    <input type="radio" name="searchOptions" ng-model="searchOption1">
										    <i class="fa fa-bars"></i>
										  </label>
										  <label class="btn rounded btn-amazon" style="width:22%; margin: 3px;">
										    <input type="radio" name=""searchOptions"">
										    <i class="fa fa-binoculars"></i>
										  </label>
										  <label class="btn rounded btn-twitter" style="width:22%; margin: 3px;">
										    <input type="radio" name=""searchOptions"" >
										    <i class="fa fa-cutlery"></i>
										  </label>
										  <label class="btn rounded btn-evernote" style="width:22%; margin: 3px;">
										    <input type="radio" name=""searchOptions"">
										    <i class="fa fa-bed"></i>
										  </label>
										</div>
									</div>
								</div>
								
								<div class="row" style="border-top: 1px solid lightgray; height: 1px;"></div>
								
								<!-- 검색창 결과물 -->
								<div id="searchContent">
									<!-- 결과 카드 -->
									<div id="eachContent" class="row" draggable="true" style="height: 100px; margin-top: 2px; margin-bottom: 2px;">
										<div id="listImage" style="float: left;">
											<img draggable="false" src="http://lorempixel.com/400/200" style="height: 100px; width: 100px;">
										</div>
										<div id="listContent" style="float: left; padding: 5px; width: 160px; height: 100px; overflow: hidden; color: gray;">
											<b>카테고리</b><br>
											<h5><strong>이름</strong></h5>
											<b>설명</b><br>
											<b>도시</b> <b>추천수</b>
										</div>
									</div>
									<!-- 결과 카드 -->
									<div id="eachContent" class="row" draggable="true" style="height: 100px; margin-top: 2px; margin-bottom: 2px;">
										<div id="listImage" style="float: left;">
											<img draggable="false" src="http://lorempixel.com/400/200" style="height: 100px; width: 100px;">
										</div>
										<div id="listContent" style="float: left; padding: 5px; width: 160px; height: 100px; overflow: hidden; color: gray;">
											<b>카테고리</b><br>
											<h5><strong>이름</strong></h5>
											<b>설명</b><br>
											<b>도시</b> <b>추천수</b>
										</div>
									</div>
									<!-- 결과 카드 -->
									<div id="eachContent" class="row" draggable="true" style="height: 100px; margin-top: 2px; margin-bottom: 2px;">
										<div id="listImage" style="float: left;">
											<img draggable="false" src="http://lorempixel.com/400/200" style="height: 100px; width: 100px;">
										</div>
										<div id="listContent" style="float: left; padding: 5px; width: 160px; height: 100px; overflow: hidden; color: gray;">
											<b>카테고리</b><br>
											<h5><strong>이름</strong></h5>
											<b>설명</b><br>
											<b>도시</b> <b>추천수</b>
										</div>
									</div>
									<!-- 결과 카드 -->
									<div id="eachContent" class="row" draggable="true" style="height: 100px; margin-top: 2px; margin-bottom: 2px;">
										<div id="listImage" style="float: left;">
											<img draggable="false" src="http://lorempixel.com/400/200" style="height: 100px; width: 100px;">
										</div>
										<div id="listContent" style="float: left; padding: 5px; width: 160px; height: 100px; overflow: hidden; color: gray;">
											<b>카테고리</b><br>
											<h5><strong>이름</strong></h5>
											<b>설명</b><br>
											<b>도시</b> <b>추천수</b>
										</div>
									</div>
									<!-- 결과 카드 -->
									<div id="eachContent" class="row" draggable="true" style="height: 100px; margin-top: 2px; margin-bottom: 2px;">
										<div id="listImage" style="float: left;">
											<img draggable="false" src="http://lorempixel.com/400/200" style="height: 100px; width: 100px;">
										</div>
										<div id="listContent" style="float: left; padding: 5px; width: 160px; height: 100px; overflow: hidden; color: gray;">
											<b>카테고리</b><br>
											<h5><strong>이름</strong></h5>
											<b>설명</b><br>
											<b>도시</b> <b>추천수</b>
										</div>
									</div>
									<!-- 결과 카드 -->
									<div id="eachContent" class="row" draggable="true" style="height: 100px; margin-top: 2px; margin-bottom: 2px;">
										<div id="listImage" style="float: left;">
											<img draggable="false" src="http://lorempixel.com/400/200" style="height: 100px; width: 100px;">
										</div>
										<div id="listContent" style="float: left; padding: 5px; width: 160px; height: 100px; overflow: hidden; color: gray;">
											<b>카테고리</b><br>
											<h5><strong>이름</strong></h5>
											<b>설명</b><br>
											<b>도시</b> <b>추천수</b>
										</div>
									</div>
									<!-- 결과 카드 -->
									<div id="eachContent" class="row" draggable="true" style="height: 100px; margin-top: 2px; margin-bottom: 2px;">
										<div id="listImage" style="float: left;">
											<img draggable="false" src="http://lorempixel.com/400/200" style="height: 100px; width: 100px;">
										</div>
										<div id="listContent" style="float: left; padding: 5px; width: 160px; height: 100px; overflow: hidden; color: gray;">
											<b>카테고리</b><br>
											<h5><strong>이름</strong></h5>
											<b>설명</b><br>
											<b>도시</b> <b>추천수</b>
										</div>
									</div>
									<!-- 결과 카드 -->
									<div id="eachContent" class="row" draggable="true" style="height: 100px; margin-top: 2px; margin-bottom: 2px;">
										<div id="listImage" style="float: left;">
											<img draggable="false" src="http://lorempixel.com/400/200" style="height: 100px; width: 100px;">
										</div>
										<div id="listContent" style="float: left; padding: 5px; width: 160px; height: 100px; overflow: hidden; color: gray;">
											<b>카테고리</b><br>
											<h5><strong>이름</strong></h5>
											<b>설명</b><br>
											<b>도시</b> <b>추천수</b>
										</div>
									</div>
									<!-- 결과 카드 -->
									<div id="eachContent" class="row" draggable="true" style="height: 100px; margin-top: 2px; margin-bottom: 2px;">
										<div id="listImage" style="float: left;">
											<img draggable="false" src="http://lorempixel.com/400/200" style="height: 100px; width: 100px;">
										</div>
										<div id="listContent" style="float: left; padding: 5px; width: 160px; height: 100px; overflow: hidden; color: gray;">
											<b>카테고리</b><br>
											<h5><strong>이름</strong></h5>
											<b>설명</b><br>
											<b>도시</b> <b>추천수</b>
										</div>
									</div>
									<!-- 결과 카드 -->
									<div id="eachContent" class="row" draggable="true" style="height: 100px; margin-top: 2px; margin-bottom: 2px;">
										<div id="listImage" style="float: left;">
											<img draggable="false" src="http://lorempixel.com/400/200" style="height: 100px; width: 100px;">
										</div>
										<div id="listContent" style="float: left; padding: 5px; width: 160px; height: 100px; overflow: hidden; color: gray;">
											<b>카테고리</b><br>
											<h5><strong>이름</strong></h5>
											<b>설명</b><br>
											<b>도시</b> <b>추천수</b>
										</div>
									</div>
									<!-- 결과 카드 -->
									<div id="eachContent" class="row" draggable="true" style="height: 100px; margin-top: 2px; margin-bottom: 2px;">
										<div id="listImage" style="float: left;">
											<img draggable="false" src="http://lorempixel.com/400/200" style="height: 100px; width: 100px;">
										</div>
										<div id="listContent" style="float: left; padding: 5px; width: 160px; height: 100px; overflow: hidden; color: gray;">
											<b>카테고리</b><br>
											<h5><strong>이름</strong></h5>
											<b>설명</b><br>
											<b>도시</b> <b>추천수</b>
										</div>
									</div>
									<!-- 결과 카드 -->
									<div id="eachContent" class="row" draggable="true" style="height: 100px; margin-top: 2px; margin-bottom: 2px;">
										<div id="listImage" style="float: left;">
											<img draggable="false" src="http://lorempixel.com/400/200" style="height: 100px; width: 100px;">
										</div>
										<div id="listContent" style="float: left; padding: 5px; width: 160px; height: 100px; overflow: hidden; color: gray;">
											<b>카테고리</b><br>
											<h5><strong>이름</strong></h5>
											<b>설명</b><br>
											<b>도시</b> <b>추천수</b>
										</div>
									</div>
									<!-- 결과 카드 -->
									<div id="eachContent" class="row" draggable="true" style="height: 100px; margin-top: 2px; margin-bottom: 2px;">
										<div id="listImage" style="float: left;">
											<img draggable="false" src="http://lorempixel.com/400/200" style="height: 100px; width: 100px;">
										</div>
										<div id="listContent" style="float: left; padding: 5px; width: 160px; height: 100px; overflow: hidden; color: gray;">
											<b>카테고리</b><br>
											<h5><strong>이름</strong></h5>
											<b>설명</b><br>
											<b>도시</b> <b>추천수</b>
										</div>
									</div>
									<!-- 결과 카드 -->
									<div id="eachContent" class="row" draggable="true" style="height: 100px; margin-top: 2px; margin-bottom: 2px;">
										<div id="listImage" style="float: left;">
											<img draggable="false" src="http://lorempixel.com/400/200" style="height: 100px; width: 100px;">
										</div>
										<div id="listContent" style="float: left; padding: 5px; width: 160px; height: 100px; overflow: hidden; color: gray;">
											<b>카테고리</b><br>
											<h5><strong>이름</strong></h5>
											<b>설명</b><br>
											<b>도시</b> <b>추천수</b>
										</div>
									</div>
									<!-- 결과 카드 -->
									<div id="eachContent" class="row" draggable="true" style="height: 100px; margin-top: 2px; margin-bottom: 2px;">
										<div id="listImage" style="float: left;">
											<img draggable="false" src="http://lorempixel.com/400/200" style="height: 100px; width: 100px;">
										</div>
										<div id="listContent" style="float: left; padding: 5px; width: 160px; height: 100px; overflow: hidden; color: gray;">
											<b>카테고리</b><br>
											<h5><strong>이름</strong></h5>
											<b>설명</b><br>
											<b>도시</b> <b>추천수</b>
										</div>
									</div>
							
								
									
								</div>
								
							</div><!-- 검색 끝 -->
							
							<!-- 북마크 -->
							<div class="tab-pane fade in" id="bookmarkTab">
								<!-- 북마크 결과물 -->
								<div></div>
							</div><!-- 북마크 끝 -->
							
						</div><!-- 탭 내용 끝 -->
						
					</div><!-- 탭버전2 끝 -->
				
				</div><!-- 탭 전체 끝 -->
				
			</div><!-- left Menu 끝  -->
			
			
			<div id="rightContents">
			
				<!-- 콘텐츠 헤더 -->
				<div id="contentHeader">
					<form class="sky-form">
						<fieldset>
							<section>
								<label class="input"> 
									<i class="icon-prepend fa fa-pencil-square-o"></i>
									<input type="text" placeholder="소제목을 입력해 주세요" ng-model="writeTourPlan.strapline">
								</label>
							</section>
							<section>
								<label class="textarea">
									<textarea rows="5" placeholder="일정에 대한 간략한 소개글을 입력해 주세요" ng-model="writeTourPlan.introduce"></textarea>
								</label>
							</section>
							<section>
								<div class="row">
									<section class="col col-5">
										<label class="label" style="margin-bottom: 0px;"><strong>여행시작일</strong></label>
										<label class="input" style="margin-bottom: 0px;">
											<i class="icon-prepend fa fa-calendar"></i>
											<input type="date" ng-model="writeTourPlan.departureDate">
										</label>
									</section>
									<section class="col col-5">
										<label class="label" style="margin-bottom: 0px;"><strong>여행종료일</strong></label>
										<label class="input" style="margin-bottom: 0px;">
											<i class="icon-prepend fa fa-calendar"></i>
											<input type="date" ng-model="writeTourPlan.arriveDate">
										</label>
									</section>
									<section class="col col-2">
										<label class="label" style="margin-bottom: 0px;"><strong>여행기간</strong></label>
										<label class="input" style="margin-bottom: 0px;">
											<input type="text" ng-model="writeTourPlan.period" readonly>
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
								<div id="map"></div>
								
								<!-- 일정표 버튼 -->
								<div id="dpControl">
									<p>====================</p>
									<p>버튼들</p>
									<p>====================</p>
								</div>	

								<!-- 일정표 DIV -->
								<div id="dp"></div>
								
							</div><!-- 일정/맵 끝 -->
							
							
							<!-- 스토리 -->
							<div class="tab-pane fade in" id="tourStoryTab">
							
								<ul class="timeline-v2">
									
									<li class="equal-height-columns" ng-repeat="schedule in scheduleList | orderBy: 'start'">
										<div class="cbp_tmtime equal-height-column"><span>2016년 11월 16일</span> <span>수요일</span></div>
										<i class="cbp_tmicon rounded-x hidden-xs"></i>
										<div class="cbp_tmlabel equal-height-column">
											<h2>{{schedule.text}}</h2>
											<div class="row">
												<div class="col-md-4">
													<img class="img-responsive" src="${pageContext.request.contextPath}/resources/favicon/trollface/trollface-64-236195.png" alt="">
													<div class="md-margin-bottom-20">
													</div>
												</div>
												<div class="col-md-8">
													<p>일정 UID : {{schedule.id}}</p>
													<p>시작 시간  : {{schedule.start}}</p>
													<p>끝나는 시간 : {{schedule.end}}</p>
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
				<div id=tourPlanComment>
				</div>
				
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
	
	<!-- 메뉴 -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/menu.js"></script>

	<!-- INIT APP -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/initApp.js"></script>
	
	<!-- DayPilot -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/plugins/DayPilotLiteJavaScript-1.3.215/scripts/src/daypilot-common.src.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/plugins/DayPilotLiteJavaScript-1.3.215/scripts/src/daypilot-calendar.src.js"></script>

	<!-- 사용자 정의 Java Script 작성이 완료되면 외부파일로 뺄것 -->
	<script type="text/javascript" src="js/tourPlanApp.js"></script><!-- 앵귤러 모듈 및 라우터 선언 -->
	<script type="text/javascript" src="js/tourPlanFilters.js"></script><!-- 앵귤러 사용자정의 필터 선언 -->
	<script type="text/javascript" src="js/tourPlanServices.js"></script><!-- 앵귤러 모듈 및 라우터 선언 -->
	<script type="text/javascript" src="makeplan.js"></script>
	

</body>
</html>
