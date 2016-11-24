<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->

<head>
<title>여행기 커뮤니티</title>

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
<link rel="stylesheet" href="list.css">

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
					<li><a href="javascript:history.back()">travelog</a></li>
				</ul>
			</div>
		</div>
		

		<!--=== 내용 ===-->
		<div class="container content-md"
			style="border: 1px solid red; height: 700px">
			
			<div>
			<!--============= Button trigger modal =============-->
			<div align="right" >
			<button  type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target=".bs-example-modal-lg"  >포스트 작성</button>
			</div>
			<br>
				<!--============ Modal ============-->
				<div class="modal fade bs-example-modal-lg" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
				  <div class="modal-dialog modal-lg">
				    <div class="modal-content">
				      <div class="modal-header">
<!-- 				        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button> -->
<!-- 				        <h4 class="modal-title" id="myModalLabel">새로운 여행기 작성</h4> -->
					                제목 : <input type="text" name="title" id="title" style="width:800px; height:30px; " />
				      </div>
				      
				      <form action="http://localhost:8081/travelog/register" method="post" enctype="multipart/form-data" >
					      <div class="modal-body">
    							<textarea name="smarteditor" id="smarteditor" rows="10" cols="100" style="width:850px; height:412px;"></textarea>
					      </div>
					      
					      <div class="modal-footer">
					        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					        <button id="submit-btn" type="button" class="btn btn-primary" >Save</button>
					      </div>
				      </form>
				      
				    </div>
				  </div><!-- /.modal-content -->
				</div><!-- /.modal-dialog -->
			</div><!-- /.modal -->

		
		    <!-- 
				<div>
					<button type="button" id="postRegisterBtn" class="btn btn-success">포스트 작성</button>
				</div> -->
				
			
			<!-- travelog List -->
			<table class="table" border='1'>
				<thead>
					<th>이미지</th>
					<th>게시판이름</th>
					<th>제목</th>
					<th>날짜</th>
					<th>조회수</th>
				</thead>	
				<tbody>
				</tbody>
			</table>

			
		<div class="text-center">
			<ul class="pagination pagination-lg"></ul>
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
	
	<!-- 스마트에디터 -->
	<script type="text/javascript" src="../../resources/se/js/HuskyEZCreator.js" charset="utf-8"></script>
	
	<!-- 사용자 정의 Java Script 작성이 완료되면 외부파일로 뺄것 -->
	<script type="text/javascript" src="list.js"></script>
	
</body>
</html>
