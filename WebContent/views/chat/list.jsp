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
<meta name="description" content="">
<meta name="author" content="">

<!-- Favicon -->
<link rel="shortcut icon" href="../../favicon.ico">

<!-- Web Fonts -->
<link rel='stylesheet' type='text/css' href='//fonts.googleapis.com/css?family=Open+Sans:400,300,600&amp;subset=cyrillic,latin'>

<!-- CSS Global Compulsory -->
<link rel="stylesheet" href="../../assets/plugins/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="../../assets/css/style.css">

<!-- CSS Header and Footer -->
<link rel="stylesheet" href="../../assets/css/headers/header-default.css">
<link rel="stylesheet" href="../../assets/css/footers/footer-v3.css">

<!-- CSS Implementing Plugins -->
<link rel="stylesheet" href="../../assets/plugins/animate.css">
<link rel="stylesheet" href="../../assets/plugins/line-icons/line-icons.css">
<link rel="stylesheet" href="../../assets/plugins/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet" href="../../assets/plugins/parallax-slider/css/parallax-slider.css">
<link rel="stylesheet" href="../../assets/plugins/owl-carousel/owl-carousel/owl.carousel.css">
<link rel="stylesheet" href="../../assets/plugins/login-signup-modal-window/css/style.css">

<!-- CSS Theme -->
<link rel="stylesheet" href="../../assets/css/theme-colors/default.css" id="style_color">
<link rel="stylesheet" href="../../assets/css/theme-skins/dark.css">
<link rel="stylesheet" href="../../assets/css/custom.css">

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
					<li><a href="javascript:history.back()">chat</a></li>
				</ul>
			</div>
		</div>

		<!--=== 내용 ===-->
			<!--=== Content ===-->
		<div class="container content-md" style="padding: 20px;">
			
			<div>
				<table class="table" style="width: 60%;">
					<thead>
						<th colspan="4">지역별 채팅</th>
					</thead>
					
					<tbody>
						<tr>
							<td><a href="#">서울</a></td>
							<td><a href="#">인천</a></td>
							<td><a href="#">대전</a></td>
							<td><a href="#">대구</a></td>
						</tr>
						<tr>
							<td><a href="#">광주</a></td>
							<td><a href="#">부산</a></td>
							<td><a href="#">울산</a></td>
							<td><a href="#">세종시</a></td>
						</tr>
						<tr>
							<td><a href="#">경기도</a></td>
							<td><a href="#">강원도</a></td>
							<td><a href="#">충청북도</a></td>
							<td><a href="#">충청남도</a></td>
						</tr>
						<tr>
							<td><a href="#">경상북도</a></td>
							<td><a href="#">경상남도</a></td>
							<td><a href="#">전라북도</a></td>
							<td><a href="#">전라남도</a></td>
						</tr>
						<tr>
							<td><a href="#">제주도</a></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
					</tbody>		
				</table>
			</div>

			<div class="input-group margin-bottom-20" style="margin-left: 0px;">
				<select title="지역 선택" class="select" name="locationid">
					<option value="" selected="selected">지역선택</option>
					<option value="1">서울</option>
					<option value="2">인천</option>
					<option value="3">대전</option>
					<option value="4">대구</option>
					<option value="5">광주</option>
					<option value="6">부산</option>
					<option value="7">울산</option>
					<option value="8">세종시</option>
					<option value="31">경기도</option>
					<option value="32">강원도</option>
					<option value="33">충청북도</option>
					<option value="34">충청남도</option>
					<option value="35">경상북도</option>
					<option value="36">경상남도</option>
					<option value="37">전라북도</option>
					<option value="38">전라남도</option>
					<option value="39">제주도</option>
				</select> 
					<span class="input-group-addon"><i class="fa fa-plug"></i></span> 
					<input type="text" id="inputRoomTitle" placeholder="title"
					class="form-control" style="width: 90%;">
				<button type="button" id="createRoomBtn" class="btn btn-success">방만들기</button>
			</div>


			<div class="content" style="height: 800px; padding: 0px;">
				<table class="table" style="width: 100%; height: 100%; margin : 0;">
					<thead style="height: 10%;">
						<tr><th>지역</th><th>제목</th><th>인원수</th></tr>
					</thead>
				</table>
				<div style="height: 760px; overflow: auto;">
				<table class="table" style="width: 100%; height: 100%;">
					<tbody class="tbody" id="room-list">
					</tbody>
				</table>
				</div>
			</div>
		</div>
		<!--=== End Content ===-->
		<!-- ================================================================ -->

		<!-- 푸터 include -->
		<%@include file="/resources/include/footer.jsp"%>

	</div>
	
	<!-- 로그인 모달 include -->
	<%@include file="/resources/include/userModal.jsp"%>

	<!-- JS Global Compulsory -->
	<script type="text/javascript" src="../../assets/plugins/jquery/jquery.min.js"></script>
	<script type="text/javascript" src="../../assets/plugins/jquery/jquery-migrate.min.js"></script>
	<script type="text/javascript" src="../../assets/plugins/bootstrap/js/bootstrap.min.js"></script>

	<!-- JS Implementing Plugins -->
	<script type="text/javascript" src="../../assets/plugins/back-to-top.js"></script>
	<script type="text/javascript" src="../../assets/plugins/smoothScroll.js"></script>
	<script type="text/javascript" src="../../assets/plugins/parallax-slider/js/modernizr.js"></script>
	<script type="text/javascript" src="../../assets/plugins/parallax-slider/js/jquery.cslider.js"></script>
	<script type="text/javascript" src="../../assets/plugins/owl-carousel/owl-carousel/owl.carousel.js"></script>
	<script type="text/javascript" src="../../assets/plugins/modernizr.js"></script>
	<script type="text/javascript" src="../../assets/plugins/login-signup-modal-window/js/main.js"></script>

	<!-- JS Page Level -->
	<script type="text/javascript" src="../../assets/js/app.js"></script>
	<script type="text/javascript" src="../../assets/js/plugins/owl-carousel.js"></script>
	<script type="text/javascript" src="../../assets/js/plugins/parallax-slider.js"></script>

	<!--[if lt IE 9]>
	<script src="../../assets/plugins/respond.js"></script>
	<script src="../../assets/plugins/html5shiv.js"></script>
	<script src="../../assets/plugins/placeholder-IE-fixes.js"></script>
	<![endif]-->

	<!-- 파이어베이스 -->
	<script type="text/javascript" src="https://www.gstatic.com/firebasejs/3.5.1/firebase.js"></script>
	<script type="text/javascript" src="../../resources/js/firebaseInit.js"></script>
	<script type="text/javascript" src="../../resources/js/firebaseAuth.js"></script>
	
	<!-- 메뉴 -->
	<script type="text/javascript" src="../../resources/js/menu.js"></script>
	
	<!-- INIT APP -->
	<script type="text/javascript" src="../../resources/js/initApp.js"></script>
	
	
	
	<!---------------------여기서부터수정------------------------------------------------------------------------------------>
	
	<!-- 사용자 정의 Java Script 작성이 완료되면 외부파일로 뺄것 -->
	<script type="text/javascript" src="list.js"></script>
	
</body>
</html>
