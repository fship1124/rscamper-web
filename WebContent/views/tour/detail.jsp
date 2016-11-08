<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<head>
<title>관광지</title>

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
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">

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

<!-- CSS Customization -->
<link rel="stylesheet" href="../../assets/css/custom.css">
<link rel="stylesheet" href="../../resources/css/content.css">
<link rel="stylesheet" href="../../resources/css/bxslider.css">
<link rel="stylesheet" href="../../resources/css/common.css">
</head>

<body class="header-fixed header-fixed-space-default">
	<div class="wrapper">

		<!--=== Header ===-->
		<div class="header header-sticky">
			<div class="container">
				<!-- Logo -->
				<a class="logo" href="index.html"> 
					<img src="../../assets/img/logo1.png" style="width:50px; height: 50px;" alt="Logo">
				</a>
				<!-- End Logo -->

				<!-- Topbar -->
				<div class="topbar">
					<ul class="loginbar pull-right">
						<li><a href="#"><i class="fa fa-info"></i> HELP</a></li>
						<li class="topbar-devider"></li>
						<li id="loginBtn" class="cd-log_reg">
						<a class="cd-signin" href="javascript:void(0);"><i class="fa fa-lock"></i> Login</a></li>
						<li id="logoutBtn" style="display: none;">
						<a href="javascript:void(0);" onclick="signout();">
						<i class="fa fa-unlock-alt"></i> Logout</a></li>
					</ul>
				</div>
				<!-- End Topbar -->

				<!-- Toggle get grouped for better mobile display -->
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-responsive-collapse">
					<span class="sr-only">Toggle navigation</span> 
					<span class="fa fa-bars"></span>
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
					<li><a href="javascript:history.back()">tour</a></li>
					<li class="active">New</li>
				</ul>
			</div>
		</div>
		<!--=== End Breadcrumbs ===-->

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
	<script src="../../assets/plugins/login-signup-modal-window/js/main.js"></script>
	<!-- 모달 컨트롤 -->

	<!-- JS Customization -->
	<script type="text/javascript" src="../../assets/js/custom.js"></script>
	<!-- JS Page Level -->
	<script type="text/javascript" src="../../assets/js/app.js"></script>
	<script type="text/javascript" src="../../assets/js/plugins/owl-carousel.js"></script>
	<script type="text/javascript" src="../../assets/js/plugins/style-switcher.js"></script>
	<script type="text/javascript" src="../../assets/js/plugins/parallax-slider.js"></script>
	<script type="text/javascript">
		jQuery(document).ready(function() {
			App.init();
			OwlCarousel.initOwlCarousel();
			StyleSwitcher.initStyleSwitcher();
			ParallaxSlider.initParallaxSlider();
			menuCreate();
			apiAjax();
		});

		
		function apiAjax() {
			var obj = new Object();
			obj.contentid = ${param.contentid};
			obj.contenttypeid = ${param.contenttypeid};
			$.ajax({
				type : "GET",
				url : "http://localhost:8081/tour/api/detail",
				dataType : 'json',
				data : obj,
				error : function(err) {
					alert("에러");
				},
				success : function(result) {
					console.log("apiAjax");
					console.log(result);
					
 					var data = JSON.parse(result);
					console.dir(data);
					contentCreate(data);
				}
			});
		}
		
		
		function contentCreate(data) {
			console.log("contentCreate");
			var data1 = JSON.parse(data[0]);
			var data2 = JSON.parse(data[1]);
			var data3 = JSON.parse(data[2]);
			var data4 = JSON.parse(data[3]);
			
			console.dir(data1);
			console.dir(data2);
			console.dir(data3);
			console.dir(data4);
			
			var item1 = data1.response.body.items.item;
			var item2 = data2.response.body.items.item;
			var item3 = data3.response.body.items.item;
			var item4 = data4.response.body.items.item;
			
			var content = $(".content");
			content.find("h4").html(item1.title);
			
			var tab1 = $(".tab1");
			var tab2 = $(".tab2");
			var tab3 = $(".tab3");
			var tab4 = $(".tab4");
			var content2 = $(".content2");
			
			var html = "";
			html += "<li><strong>우편번호 : </strong>" + item1.zipcode + "</li>";
			html += "<li><strong>주소 : </strong>" + item1.addr1 + " " + item1.addr2 + "</li>";
			tab1.html(html);
			
			html = "";
			html += "<li>" + item2.expguide + "</li>";
			html += "<li>" + item2.infocenter + "</li>";
			tab2.html(html);
			
			html = "";
			html += "<li>" + item1.homepage + "</li>";
			tab3.html(html);
			
			html = "";
			html += "<li>" + item3.infoname + "</li>";
			html += "<li>" + item3.infotext + "</li>";
			tab4.html(html);
			content2.find("h2").html(item1.title);
			content2.find("p").html(item1.overview);
			content2.find(".panel-body").html(item1.overview);
			
			// 이미지 동적 생성
			imageProcess(item4);
			
		}
		
		var endpage = 0;
		
		function imageProcess(item) {
			var mainImg = $(".ms-brd");
			var panel = $(".bottom_slider_panel");
			var html = "";
			
			var widthPx = item.length * 120;
			panel.css("width", widthPx + "px");
			
			for (var i = 0; i < item.length; i++) {
				var m = item[i];
				if (i == 0) { mainImg.attr("src", m.originimgurl); }
				
				html += "<img src='" + m.originimgurl + "' class='bottom_slider_image' onclick='imageFnc(this)' style='width: 100px; height: 75px; float: left; margin: 5px 5px'>";
			}
			
			var portion = parseInt(item.length / 4);
			
			if (item.length % 4 != 0) {
				portion += 1;
			}
			
			endpage = portion;
			panel.html(html);
		}
		
		
		var locationVal = 1;
		
		function bottomMove(flag) {
			var w = 0;
			if (flag == 1) {
				if (locationVal == 1) {
					locationVal = 1;
				} else {
					locationVal -= 1;
				}
				w = - (locationVal - 1) * 430; 
			} else {
				if (locationVal == endpage) {
					locationVal = endpage;
				} else {
					locationVal += 1;
				}
				w = - (locationVal - 1) * 430; 
			}
			
			$('.bottom_slider_panel').animate({ left: w}, 'slow');
		}
		
		function imageFnc(e) {
			 $(".ms-brd").attr("src", e.src); 
		}
		
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
