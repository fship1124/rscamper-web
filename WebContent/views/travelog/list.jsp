<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
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
<!--     <link rel='stylesheet' type='text/css' href='//fonts.googleapis.com/css?family=Open+Sans:400,300,600&amp;subset=cyrillic,latin'> -->

<!-- CSS Global Compulsory -->
<link rel="stylesheet"
	href="../../assets/plugins/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="../../assets/css/style.css">

<!-- CSS Header and Footer -->
<link rel="stylesheet" href="../../assets/css/headers/header-default.css">
<link rel="stylesheet" href="../../assets/css/footers/footer-v3.css">

<!-- CSS Implementing Plugins -->
<link rel="stylesheet" href="../../assets/plugins/animate.css">
<link rel="stylesheet" href="../../assets/plugins/line-icons/line-icons.css">
<link rel="stylesheet"
	href="../../assets/plugins/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet"
	href="../../assets/plugins/parallax-slider/css/parallax-slider.css">
<link rel="stylesheet"
	href="../../assets/plugins/owl-carousel/owl-carousel/owl.carousel.css">
<link rel="stylesheet"
	href="../../assets/plugins/login-signup-modal-window/css/style.css">

<!-- CSS Theme -->
<link rel="stylesheet" href="../../assets/css/theme-colors/default.css"
	id="style_color">
<link rel="stylesheet" href="../../assets/css/theme-skins/dark.css">

<!-- CSS Customization -->
<link rel="stylesheet" href="../../assets/css/custom.css">
<script type="text/javascript" src="../../resources/se/js/HuskyEZCreator.js" charset="utf-8"></script>

<style type="text/css" media="all">
	@import "widgEditor/css/main.css";
	@import "widgEditor/css/widgEditor.css";
</style>
<script type="text/javascript" src="widgEditor/scripts/widgEditor.js"></script> 

</head>

<body class="header-fixed header-fixed-space-default">


	<div class="wrapper">

		<!--=== Header ===-->
		<div class="header header-sticky">
			<div class="container">
				<!-- Logo -->
				<a class="logo" href="index.html"> <img
					src="../../assets/img/logo1.png" style="width:50px; height: 50px;" alt="Logo">
				</a>
				<!-- End Logo -->

				<!-- Topbar -->
				<div class="topbar">
					<ul class="loginbar pull-right">
						<li><a href="#"><i class="fa fa-info"></i> HELP</a></li>
						<li class="topbar-devider"></li>
						<li id="loginBtn" class="cd-log_reg"><a class="cd-signin"
							href="javascript:void(0);"><i class="fa fa-lock"></i> Login</a></li>
						<li id="logoutBtn" style="display: none;"><a
							href="javascript:void(0);" onclick="signout();"><i
								class="fa fa-unlock-alt"></i> Logout</a></li>
					</ul>
				</div>
				<!-- End Topbar -->

				<!-- Toggle get grouped for better mobile display -->
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-responsive-collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="fa fa-bars"></span>
				</button>
				<!-- End Toggle -->
			</div>
			<!--/end container-->

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div
				class="collapse navbar-collapse mega-menu navbar-responsive-collapse">
				<div class="container">
					<ul class="nav navbar-nav" id="start">
						<!-- Search Block -->
						<li><i class="search fa fa-search search-btn"></i>
							<div class="search-open">
								<div class="input-group animated fadeInDown">
									<input type="text" class="form-control" placeholder="Search">
									<span class="input-group-btn">
										<button class="btn-u" type="button">Go</button>
									</span>
								</div>
							</div></li>
						<!-- End Search Block -->

					</ul>
				</div>
				<!--/end container-->
			</div>
			<!--/navbar-collapse-->
		</div>
		<!--=== End Header ===-->

		<!-- ================================================================ -->

		<!--=== Breadcrumbs 사이트맵 ===-->
		<div class="breadcrumbs">
			<div class="container">
				<ul class="breadcrumb pull-left">
					<li><a href="http://localhost:8081"><i class="fa fa-home"></i></a></li>
					<li><a href="javascript:history.back()">travelog</a></li>
				</ul>
			</div>
			<!--/container-->
		</div>
		<!--/breadcrumbs-->
		<!--=== End Breadcrumbs ===-->


		<!--=== Content ===-->
		
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
				        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
<!-- 				        <h4 class="modal-title" id="myModalLabel">새로운 여행기 작성</h4> -->
					                제목 : <input type="text" name="title" style="width:800px; height:30px; " />
				      </div>
				      
				      <form action="http://localhost:8081/travelog/register?categoryNo=1;" method="post" enctype="multipart/form-data" >
					      <div class="modal-body">
    							<textarea name="smarteditor" id="smarteditor" rows="10" cols="100" style="width:850px; height:412px;"></textarea>
					      </div>
					      
					      <div class="modal-footer">
					        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					        <button type="submit" class="btn btn-primary">Save</button>
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
				</thead>	
				<tbody>
				</tbody>
			</table>

			
		<div class="text-center">
			<ul class="pagination pagination-lg"></ul>
		</div>
			
		</div>
		
		<!--=== End Content ===-->
		<!-- ================================================================ -->
		
		

		<!--=== Footer v3 ===-->
		<div id="footer-v3" class="footer-v3">
			<div class="footer">
				<div class="container">
					<div class="row">
						<!-- About -->
						<div class="col-sm-3 md-margin-bottom-40">
							<a href="index.html"><img id="logo-footer"
								class="footer-logo" src="assets/img/logo2-default.png" alt=""></a>
							<p>About Unify dolor sit amet, consectetur adipiscing elit.
								Maecenas eget nisl id libero tincidunt sodales.</p>
						</div>
						<!--/col-md-3-->
						<!-- End About -->

						<!-- Simple List -->
						<div class="col-sm-3 md-margin-bottom-40">
							<div class="thumb-headline">
								<h2>About Unify</h2>
							</div>
							<ul class="list-unstyled simple-list margin-bottom-20">
								<li><a href="#">About Us</a></li>
								<li><a href="#">Forum</a></li>
								<li><a href="#">Careers</a></li>
								<li><a href="#">Community</a></li>
								<li><a href="#">Stories</a></li>
								<li><a href="#">Contact Us</a></li>
							</ul>
						</div>
						<!--/col-md-3-->

						<div class="col-sm-3">
							<div class="thumb-headline">
								<h2>Topics</h2>
							</div>
							<ul class="list-unstyled simple-list margin-bottom-20">
								<li><a href="#">Bootstrap</a></li>
								<li><a href="#">Font Awesome</a></li>
								<li><a href="#">WordPress</a></li>
								<li><a href="#">Favicon</a></li>
								<li><a href="#">Javascript</a></li>
								<li><a href="#">iOS</a></li>
							</ul>
						</div>
						<!--/col-md-3-->

						<div class="col-sm-3">
							<div class="thumb-headline">
								<h2>Developers</h2>
							</div>
							<ul class="list-unstyled simple-list margin-bottom-20">
								<li><a href="#">Web Development</a></li>
								<li><a href="#">Web Design</a></li>
								<li><a href="#">Android Development</a></li>
								<li><a href="#">PHP Development</a></li>
								<li><a href="#">Programmer</a></li>
								<li><a href="#">Start-up</a></li>
							</ul>
						</div>
						<!--/col-md-3-->
						<!-- End Simple List -->
					</div>
				</div>
			</div>
			<!--/footer-->

			<div class="copyright">
				<div class="container">
					<div class="row">
						<!-- Terms Info-->
						<div class="col-md-6">
							<p>
								2015 &copy; All Rights Reserved. Unify Theme by <a
									target="_blank" href="https://twitter.com/htmlstream">Htmlstream</a>
								| <a href="#">Privacy Policy</a> | <a href="#">Terms of
									Service</a>
							</p>
						</div>
						<!-- End Terms Info-->

						<!-- Social Links -->
						<div class="col-md-6">
							<ul class="social-icons pull-right">
								<li><a href="#" data-original-title="Facebook"
									class="rounded-x social_facebook"></a></li>
								<li><a href="#" data-original-title="Twitter"
									class="rounded-x social_twitter"></a></li>
								<li><a href="#" data-original-title="Goole Plus"
									class="rounded-x social_googleplus"></a></li>
								<li><a href="#" data-original-title="Linkedin"
									class="rounded-x social_linkedin"></a></li>
								<li><a href="#" data-original-title="Pinterest"
									class="rounded-x social_pintrest"></a></li>
							</ul>
						</div>
						<!-- End Social Links -->
					</div>
				</div>
			</div>
			<!--/copyright-->
		</div>
		<!--=== End Footer v3 ===-->

	</div>
	<!--/wrapper-->

	<div class="cd-user-modal">
		<!-- this is the entire modal form, including the background -->
		<div class="cd-user-modal-container">
			<!-- this is the container wrapper -->
			<ul class="cd-switcher">
				<li><a href="javascript:void(0);">로그인</a></li>
				<li><a href="javascript:void(0);">회원가입</a></li>
			</ul>

			<div id="cd-login">
				<!-- log in form -->
				<form id="signin-email-form" class="cd-form">
					<p class="social-login">
						<span class="social-login-facebook"><a href="#"
							onclick="signinProvider('facebook');"><i
								class="fa fa-facebook"></i> Facebook</a></span> <span
							class="social-login-google"><a href="#"
							onclick="signinProvider('google');"><i class="fa fa-google"></i>
								Google</a></span> <span class="social-login-twitter"><a href="#"
							onclick="signinProvider('twitter');"><i class="fa fa-twitter"></i>
								Twitter</a></span>
					</p>

					<div class="lined-text">
						<span>이메일 계정으로 로그인</span>
						<hr>
					</div>

					<p class="fieldset">
						<label class="image-replace cd-email" for="signin-email">E-mail</label>
						<input class="full-width has-padding has-border" id="signin-email"
							type="email" placeholder="E-mail" required> <span
							class="cd-error-message">Error message here!</span>
					</p>

					<p class="fieldset">
						<label class="image-replace cd-password" for="signin-password">Password</label>
						<input class="full-width has-padding has-border"
							id="signin-password" type="password" placeholder="Password"
							required> <a href="javascript:void(0);"
							class="hide-password">Show</a> <span id="signin-email-error"
							class="cd-error-message">Error message here!</span>
					</p>

					<p class="fieldset">
						<input type="checkbox" id="remember-me"> <label
							for="remember-me">로그인 유지하기</label>
					</p>

					<p class="fieldset">
						<input id="signin-email-btn" class="full-width" type="button"
							value="로그인">
					</p>
				</form>

				<p class="cd-form-bottom-message">
					<a href="javascript:void(0);" onclick="">비밀번호를 잊으셨나요?</a>
				</p>
				<a href="javascript:void(0);" class="cd-close-form">Close</a>
			</div>
			<!-- cd-login -->

			<div id="cd-signup">
				<!-- sign up form -->
				<form id="signup-email-form" class="cd-form">
					<p class="social-login">
						<span class="social-login-facebook"><a href="#"
							onclick="signinProvider('facebook');"><i
								class="fa fa-facebook"></i> Facebook</a></span> <span
							class="social-login-google"><a href="#"
							onclick="signinProvider('google');"><i class="fa fa-google"></i>
								Google</a></span> <span class="social-login-twitter"><a href="#"
							onclick="signinProvider('twitter');"><i class="fa fa-twitter"></i>
								Twitter</a></span>
					</p>

					<div class="lined-text">
						<span>새로운 이메일 계정 등록하기</span>
						<hr>
					</div>

					<p class="fieldset">
						<label class="image-replace cd-username" for="signup-username">Username</label>
						<input class="full-width has-padding has-border"
							id="signup-username" type="text" placeholder="Username" required>
						<span class="cd-error-message">Error message here!</span>
					</p>

					<p class="fieldset">
						<label class="image-replace cd-email" for="signup-email">E-mail</label>
						<input class="full-width has-padding has-border" id="signup-email"
							type="email" placeholder="E-mail" required> <span
							class="cd-error-message">Error message here!</span>
					</p>

					<p class="fieldset">
						<label class="image-replace cd-password" for="signup-password">Password</label>
						<input class="full-width has-padding has-border"
							id="signup-password" type="password" placeholder="Password"
							required> <a href="javascript:void(0);"
							class="hide-password">Show</a> <span id="signup-email-error"
							class="cd-error-message">Error message here!</span>
					</p>

					<p class="fieldset">
						<input type="checkbox" id="accept-terms"> <label
							for="accept-terms"> 본 사이트의 약관에 동의합니다. <a
							href="page_terms.html">약관보기</a></label>
					</p>

					<p class="fieldset">
						<input id="signup-email-btn" class="full-width has-padding"
							type="button" value="회원 가입하기">
					</p>
				</form>

				<!-- <a href="javascript:void(0);" class="cd-close-form">Close</a> -->
			</div>
			<!-- cd-signup -->

			<div id="cd-reset-password">
				<!-- reset password form -->
				<p class="cd-form-message">이메일 주소를 입력해 주세요. 당신의 이메일로 비밀번호 초기화
					메일이 발송될것 입니다.</p>

				<form id="reset-email-form" class="cd-form">
					<p class="fieldset">
						<label class="image-replace cd-email" for="reset-email">E-mail</label>
						<input class="full-width has-padding has-border" id="reset-email"
							type="email" placeholder="E-mail"> <span
							id="reset-email-error" class="cd-error-message">오류발생!</span>
					</p>

					<p class="fieldset">
						<input id="reset-password-btn" class="full-width has-padding"
							type="button" value="비밀번호 초기화">
					</p>
				</form>

				<p class="cd-form-bottom-message">
					<a href="javascript:void(0);">로그인창으로</a>
				</p>
			</div>
			<!-- cd-reset-password -->
			<a href="javascript:void(0);" class="cd-close-form">Close</a>
		</div>
		<!-- cd-user-modal-container -->
	</div>
	<!-- cd-user-modal -->


	<!-- JS Global Compulsory -->
	<script type="text/javascript"
		src="../../assets/plugins/jquery/jquery.min.js"></script>
	<script type="text/javascript"
		src="../../assets/plugins/jquery/jquery-migrate.min.js"></script>
	<script type="text/javascript"
		src="../../assets/plugins/bootstrap/js/bootstrap.min.js"></script>

	<!-- JS Implementing Plugins -->
	<script type="text/javascript" src="../../assets/plugins/back-to-top.js"></script>
	<script type="text/javascript" src="../../assets/plugins/smoothScroll.js"></script>
	<script type="text/javascript"
		src="../../assets/plugins/parallax-slider/js/modernizr.js"></script>
	<script type="text/javascript"
		src="../../assets/plugins/parallax-slider/js/jquery.cslider.js"></script>
	<script type="text/javascript"
		src="../../assets/plugins/owl-carousel/owl-carousel/owl.carousel.js"></script>
	<script type="text/javascript" src="../../assets/plugins/modernizr.js"></script>
	<script src="../../assets/plugins/login-signup-modal-window/js/main.js"></script>
	<!-- 모달 컨트롤 -->

	<!-- JS Customization -->
	<script type="text/javascript" src="../../assets/js/custom.js"></script>
	<!-- JS Page Level -->
	<script type="text/javascript" src="../../assets/js/app.js"></script>
	<script type="text/javascript" src="../../assets/js/plugins/owl-carousel.js"></script>
	<script type="text/javascript" src="../../assets/js/plugins/style-switcher.js"></script>
	<script type="text/javascript" src="../../assets/js/plugins/parallax-slider.js"></script>
	<script type="text/javascript" src="../../resources/se/js/HuskyEZCreator.js" charset="utf-8"></script>
	<script type="text/javascript">
		jQuery(document).ready(function() {
			App.init();
			OwlCarousel.initOwlCarousel();
			StyleSwitcher.initStyleSwitcher();
			ParallaxSlider.initParallaxSlider();
			menuCreate();
			travelogList();
			
			var editor_object = [];
		     
		    nhn.husky.EZCreator.createInIFrame({
		        oAppRef: editor_object,
		        elPlaceHolder: "smarteditor",
		        sSkinURI: "../../resources/se/SmartEditor2Skin.html", 
		        htParams : {
		            // 툴바 사용 여부 (true:사용/ false:사용하지 않음)
		            bUseToolbar : true,             
		            // 입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음)
		            bUseVerticalResizer : true,     
		            // 모드 탭(Editor | HTML | TEXT) 사용 여부 (true:사용/ false:사용하지 않음)
		            bUseModeChanger : true, 
		        }
		    });
		});
		
		
		var oEditors = [];
		nhn.husky.EZCreator.createInIFrame({
		 oAppRef: oEditors,
		 elPlaceHolder: "ir1",
		 sSkinURI: "../../resources/se/SmartEditor2Skin.html",
		 fCreator: "createSEditorInIFrame"
		});
		
		var page;
		
		function travelogList(e) {
 			console.log("in travelogList")
 			console.log(e);
 			console.dir(e);
 			var obj = new Object();
 			obj.page = e;
 			
 			$.ajax({
				type : "GET",
				url : "http://localhost:8081/travelog/list",
				dataType : 'json',
				data : obj,
				error : function (err) {
					alert("에러");
				},
				success : function(result) {
					console.dir(result);
					listCreate(result);
				}
 			})
 		}
		
		
 		$.ajax({
			type : "GET",
			url : "http://localhost:8081/menu/list",
			dataType : 'json',
			error : function (err) {
				alert("에러");
			},
			success : function(result) {
//  				alert("성공");
				
				$("#start").empty();
				var html = "";
				for(var i = 0; i < result.length; i++) {
					var data = result[i];
					if(data.parentMenuNo == 0) {
						html += "<li class='dropdown' id="+ data.menuNo +">";
						html += 	"<a href='javascript:void(0);' class='dropdown-toggle' data-toggle='dropdown'>";
						html += data.title;
						html += "	</a>";
					}
				}
				
				// 삽입 부분
					html += "<li class='dropdown' id='mypage' style='display: none;'>";
					html += "		<a href='javascript:void(0);' class='dropdown-toggle' data-toggle='dropdown' id='mypageTitle'>";
					html += "			마이페이지";
					html += "		</a>";
					html += "<ul class='dropdown-menu'>";
					html += "		<li><a href='javascript:void(0);'><i class='fa fa-bell'></i> 알림</a></li>";
					html += "		<li><a href='javascript:void(0);'><i class='fa fa-envelope-square'></i> 쪽지</a></li>";
					html += "		<li><a href='javascript:void(0);'><i class='fa fa-calendar'></i> 여행일정</a></li>";
					html += "		<li><a href='http://localhost:8081/post/home;'><i class='fa fa-pencil'></i> 포스트</a></li>";
					html += "<li class='dropdown-submenu'>";
					html += "	<a href='javascript:void(0);''><i class='fa fa-cog'></i> 회원정보변경</a>";
					html += "	<ul class='dropdown-menu'>";
					html += "		<li><a href='#'><i class='fa fa-user'></i> 프로필수정</a></li>";
					html += "		<li><a href='#'><i class='fa fa-lock'></i> 비밀번호변경</a></li>";
					html += "		<li><a href='#'><i class='fa fa-bell'></i> 알림설정</a></li>";
					html += "		<li><a href='#'><i class='fa fa-unlock'></i> 회원탈퇴</a></li>";
					html += "	</ul>";
					html += "</li>";
					html += "<li onclick='signout();'><a href='javascript:void(0);'><i class='fa fa-unlock'></i> 로그아웃</a></li>";
					html += "</ul>";
					html += "</li>";
					
				$("#start").html($("#start").html() + html);
				
				for (var i = 0; i < result.length; i++) {
					var data = result[i];
					if(data.parentMenuNo != 0) {
						if($("#" + data.parentMenuNo).find("ul").length > 0) {
							$("#ul-" + data.parentMenuNo).html($("#ul-" + data.parentMenuNo).html() + "<li><a href='" + data.url + "'>"+ data.title +"</a></li>");
						}
						else{
							$("#" + data.parentMenuNo).html($("#" + data.parentMenuNo).html() + "<ul class='dropdown-menu' id=ul-" + data.parentMenuNo + "><li><a href='" + data.url + "'>"+ data.title +"</a></li></ul>");
						}
					}
				}
			}
		});	
 		
 		function listCreate(data) {
 			console.dir(data);
 			var p = data.page;
 			var pageMaker = data.pageMaker;
 			page = pageMaker.endPage;
 			var list = $("tbody");
 			var html = "";
 			for (var i = 0; i < p.length; i++) {
 				var v = p[i];
 				var d = new Date(v.regDate);
 				var mon = d.getMonth() + 1;
 				html += "<tr>";
 				html += "<td>" + "" + "</td>";
 				html += "<td>" + v.categoryName + "</td>";
 				html += "<td>";
 				html += "<a href='http://localhost:8081/travelog/" + v.boardNo + "'>";
 				html += v.title + "</a>";
 				html += "<td>" + d.getFullYear() + "-" + prependZero(mon, 2) + "-" + prependZero(d.getDate(), 2) + " " + d.toLocaleTimeString() + "</td>";
 				html += "</tr>";
 			}
 			
 			list.html(html);
 			html = "";
 			
 			var pageination = $(".pagination");
 			console.dir(pageMaker.prev);
 			if (pageMaker.prev) {
				html += "<li class='page-item'>";
				html += "<a class='page-link' href='#' aria-label='Previous'>";
				html += "<span aria-hidden='true' onclick=previousNextFn('P') >&laquo;</span>";
				html += "<span class='sr-only'>Previous</span>";
				html += "</a>";
				html += "</li>";
			}

			for (var i = pageMaker.startPage; i <= pageMaker.endPage; i++) {
				html += "<li class='page-item'>";
				html += "<a href='#' onclick= travelogList(this.text)>" + i + "</a>";
				html += "</li>";
			}

			if (pageMaker.next && pageMaker.endPage > 0) {
				html += "<li class='page-item'>";
				html += "<a class='page-link' href='#' aria-label='Next'>";
				html += "<span aria-hidden='true' onclick=previousNextFn('N') >&raquo;</span>";
				html += "<span class='sr-only'>Next</span>";
				html += "</a>";
				html += "</li>";
			}
			pageination.html(html);
		}
 		
 		
 		
 		

		function prependZero(num, len) {
			while (num.toString().length < len) {
				num = "0" + num;
			}
			return num;
		}

		function previousNextFn(val) {
			console.log(val);
			console.log("page : " + page);

			if (val == 'N') {
				page = page + 1;
			} else {
				page = page - 19;
			}

			togetherList(page);
		}
 		
/*====  	Modal     ====*/
// 		$('#myModal').on('shown.bs.modal', function () {
// 			  $('#myInput').focus()
// 			})
		$('.bs-example-modal-lg').on('shown.bs.modal', function () {
			  $('#myInput').focus()
			})
			
		
	</script>
	<!--[if lt IE 9]>
    <script src="assets/plugins/respond.js"></script>
    <script src="assets/plugins/html5shiv.js"></script>
    <script src="assets/plugins/placeholder-IE-fixes.js"></script>
    <![endif]-->

	<!-- firebase 로그인 -->
	<script src="https://www.gstatic.com/firebasejs/3.5.1/firebase.js"></script>
	<script src="../../resources/js/firebaseInit.js"></script>
	<script src="../../resources/js/firebaseAuth.js"></script>
	<script src="../../resources/js/menu.js"></script>

</body>
</html>
