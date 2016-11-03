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



</head>

<body class="header-fixed header-fixed-space-default">

	<div class="wrapper">

		<!--=== Header ===-->
		<div class="header header-sticky">
			<div class="container">
				<!-- Logo -->
				<a class="logo" href="index.html"> 
					<img src="../../assets/img/logo1-default.png" alt="Logo">
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
					<li><a href="#">tour</a></li>
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
											<div class="ms-slide ms-sl-selected"
												style="width: 550px; height: 550px; opacity: 1;">


												<div class="ms-slide-bgcont"
													style="height: 100%; opacity: 1;">
													<img class="ms-brd"
														src="http://tong.visitkorea.or.kr/cms/resource/05/196005_image2_1.jpg"
														alt="lorem ipsum dolor sit"
														style="width: 550px; height: 560px; margin-top: -5px; margin-left: 0px;">
												</div>
											</div>
											<div class="ms-slide"
												style="width: 550px; height: 550px; opacity: 0; visibility: hidden;">


												<div class="ms-slide-bgcont"
													style="height: 100%; opacity: 1;">
													<img src="assets/img/blog/29.jpg"
														alt="lorem ipsum dolor sit"
														style="width: 550px; height: 560px; margin-top: -5px; margin-left: 0px;">
												</div>
											</div>
											<div class="ms-slide"
												style="width: 550px; height: 550px; opacity: 0; visibility: hidden;">


												<div class="ms-slide-bgcont"
													style="height: 100%; opacity: 1;">
													<img src="assets/img/blog/30.jpg"
														alt="lorem ipsum dolor sit"	style="width: 550px; height: 560px; margin-top: -5px; margin-left: 0px;">
												</div>
											</div>
										</div>
									</div>
									<div class="ms-nav-next ms-ctrl-hide" style="opacity: 0;">
									</div>
									<div class="ms-nav-prev ms-ctrl-hide" style="opacity: 0;">
									</div>
								</div>
							</div>

							<div class="ms-thumb-list ms-dir-h ms-align-bottom"
								style="margin-top: 5px; position: relative; height: 170px;">
								<div class="ms-thumbs-cont"
									style="width: 555px; transform: translateX(0px) translateZ(0px);">
									<div class="ms-thumb-frame ms-thumb-frame-selected"
										style="float: left; list-style: none; position: relative; width: 180px; height: 170px; margin-right: 5px;">
										<img class="ms-thumb"
											src="http://tong.visitkorea.or.kr/cms/resource/99/195999_image3_1.jpg"
											alt="thumb">
										<div class="ms-thumb-ol"></div>
									</div>
									<div class="ms-thumb-frame"
										style="float: left; list-style: none; position: relative; width: 180px; height: 170px; margin-right: 5px;">
										<img class="ms-thumb"
											src="http://tong.visitkorea.or.kr/cms/resource/05/196005_image3_1.jpg"
											alt="thumb">
										<div class="ms-thumb-ol"></div>
									</div>
									<div class="ms-thumb-frame"
										style="float: left; list-style: none; position: relative; width: 180px; height: 170px; margin-right: 5px;">
										<img class="ms-thumb"
											src="http://tong.visitkorea.or.kr/cms/resource/98/195998_image3_1.jpg"
											alt="thumb">
										<div class="ms-thumb-ol"></div>
									</div>
								</div>
							</div>
						</div>
						<!-- End Master Slider -->
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
							<a data-target="#" id="myTabDrop1" class="dropdown-toggle" data-toggle="dropdown" aria-controls="myTabDrop1-contents">상세 정보 <span class="caret"></span>
							</a>
							<ul class="dropdown-menu" role="menu" aria-labelledby="myTabDrop1" id="myTabDrop1-contents">
								<li><a data-target="#dropdown1" tabindex="-1" role="tab" id="dropdown1-tab" data-toggle="tab" aria-controls="dropdown1">@fat</a></li>
								<li><a data-target="#dropdown2" tabindex="-1" role="tab" id="dropdown2-tab" data-toggle="tab" aria-controls="dropdown2">@mdo</a></li>
							</ul>
						</li>
					</ul>
					<div id="myTabContent" class="tab-content">
						<div role="tabpanel" class="tab-pane fade active in" id="home" aria-labelledby="home-tab">
							<p>Raw denim you probably haven't heard of them jean shorts
								Austin. Nesciunt tofu stumptown aliqua, retro synth master
								cleanse. Mustache cliche tempor, williamsburg carles vegan
								helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher
								synth. Cosby sweater eu banh mi, qui irure terry richardson ex
								squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis
								cardigan american apparel, butcher voluptate nisi qui.</p>
						</div>
						<div role="tabpanel" class="tab-pane fade" id="profile"	aria-labelledby="profile-tab">
							<p>Food truck fixie locavore, accusamus mcsweeney's marfa
								nulla single-origin coffee squid. Exercitation +1 labore velit,
								blog sartorial PBR leggings next level wes anderson artisan four
								loko farm-to-table craft beer twee. Qui photo booth letterpress,
								commodo enim craft beer mlkshk aliquip jean shorts ullamco ad
								vinyl cillum PBR. Homo nostrud organic, assumenda labore
								aesthetic magna delectus mollit. Keytar helvetica VHS salvia yr,
								vero magna velit sapiente labore stumptown. Vegan fanny pack
								odio cillum wes anderson 8-bit, sustainable jean shorts beard ut
								DIY ethical culpa terry richardson biodiesel. Art party
								scenester stumptown, tumblr butcher vero sint qui sapiente
								accusamus tattooed echo park.</p>
						</div>
						<div role="tabpanel" class="tab-pane fade" id="dropdown1" aria-labelledby="dropdown1-tab">
							<p>Etsy mixtape wayfarers, ethical wes anderson tofu before
								they sold out mcsweeney's organic lomo retro fanny pack lo-fi
								farm-to-table readymade. Messenger bag gentrify pitchfork
								tattooed craft beer, iphone skateboard locavore carles etsy
								salvia banksy hoodie helvetica. DIY synth PBR banksy irony.
								Leggings gentrify squid 8-bit cred pitchfork. Williamsburg banh
								mi whatever gluten-free, carles pitchfork biodiesel fixie etsy
								retro mlkshk vice blog. Scenester cred you probably haven't
								heard of them, vinyl craft beer blog stumptown. Pitchfork
								sustainable tofu synth chambray yr.</p>
						</div>
						<div role="tabpanel" class="tab-pane fade" id="dropdown2" aria-labelledby="dropdown2-tab">
							<p>Trust fund seitan letterpress, keytar raw denim keffiyeh
								etsy art party before they sold out master cleanse gluten-free
								squid scenester freegan cosby sweater. Fanny pack portland
								seitan DIY, art party locavore wolf cliche high life echo park
								Austin. Cred vinyl keffiyeh DIY salvia PBR, banh mi before they
								sold out farm-to-table VHS viral locavore cosby sweater. Lomo
								wolf viral, mustache readymade thundercats keffiyeh craft beer
								marfa ethical. Wolf salvia freegan, sartorial keffiyeh echo park
								vegan.</p>
						</div>
					</div>
				</div>
			</div>
				
				
				
				<div class="row content2">
					<p></p>
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

	<!--=== Style Switcher ===-->
	<i class="style-switcher-btn fa fa-cogs hidden-xs"></i>
	<div class="style-switcher animated fadeInRight">
		<div class="style-swticher-header">
			<div class="style-switcher-heading">Style Switcher</div>
			<div class="theme-close">
				<i class="icon-close"></i>
			</div>
		</div>

		<div class="style-swticher-body">
			<!-- Theme Colors -->
			<div class="style-switcher-heading">Theme Colors</div>
			<ul class="list-unstyled">
				<li class="theme-default theme-active" data-style="default"
					data-header="light"></li>
				<li class="theme-blue" data-style="blue" data-header="light"></li>
				<li class="theme-orange" data-style="orange" data-header="light"></li>
				<li class="theme-red" data-style="red" data-header="light"></li>
				<li class="theme-light" data-style="light" data-header="light"></li>
				<li class="theme-purple last" data-style="purple"
					data-header="light"></li>
				<li class="theme-aqua" data-style="aqua" data-header="light"></li>
				<li class="theme-brown" data-style="brown" data-header="light"></li>
				<li class="theme-dark-blue" data-style="dark-blue"
					data-header="light"></li>
				<li class="theme-light-green" data-style="light-green"
					data-header="light"></li>
				<li class="theme-dark-red" data-style="dark-red" data-header="light"></li>
				<li class="theme-teal last" data-style="teal" data-header="light"></li>
			</ul>

			<!-- Theme Skins -->
			<div class="style-switcher-heading">Theme Skins</div>
			<div class="row no-col-space margin-bottom-20 skins-section">
				<div class="col-xs-6">
					<button data-skins="default"
						class="btn-u btn-u-xs btn-u-dark btn-block active-switcher-btn handle-skins-btn">Light</button>
				</div>
				<div class="col-xs-6">
					<button data-skins="dark"
						class="btn-u btn-u-xs btn-u-dark btn-block skins-btn">Dark</button>
				</div>
			</div>

			<hr>

			<!-- Layout Styles -->
			<div class="style-switcher-heading">Layout Styles</div>
			<div class="row no-col-space margin-bottom-20">
				<div class="col-xs-6">
					<a href="javascript:void(0);"
						class="btn-u btn-u-xs btn-u-dark btn-block active-switcher-btn wide-layout-btn">Wide</a>
				</div>
				<div class="col-xs-6">
					<a href="javascript:void(0);"
						class="btn-u btn-u-xs btn-u-dark btn-block boxed-layout-btn">Boxed</a>
				</div>
			</div>
		</div>
		<!--/style-switcher-->

	</div>
	<!--=== End Style Switcher ===-->

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
					console.log(result);

					var data = JSON.parse(result);
					contentCreate(data);
				}
			});
		}

		function contentCreate(data) {
			console.dir(data);
			var item = data.response.body.items.item;
			var content = $(".content");
			var content1 = $(".content1");
			var content2 = $(".content2");
			var content1_right = $(".content1-right");
			content.find("h4").html(item.title);
			content2.find("p").html(item.overview);
			content1_right.find("p").html(item.overview);
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