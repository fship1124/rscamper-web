<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
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
<link rel="stylesheet"
	href="../../assets/css/headers/header-default.css">
<link rel="stylesheet" href="../../assets/css/footers/footer-v3.css">

<!-- CSS Implementing Plugins -->
<link rel="stylesheet" href="../../assets/plugins/animate.css">
<link rel="stylesheet"
	href="../../assets/plugins/line-icons/line-icons.css">
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
						<li id="logoutBtn" style="display: none;">
						<a href="javascript:void(0);" onclick="signout();">
						<i class="fa fa-unlock-alt"></i> Logout</a></li>
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
					<li><a href="javascript:history.back()">tour</a></li>
				</ul>
			</div>
			<!--/container-->
		</div>
		<!--/breadcrumbs-->
		<!--=== End Breadcrumbs ===-->


		<!--=== Content ===-->
		<div class="container content-md">
			<div class="table">
				<table class="table bbsSearch">
				<tbody>
					<tr>
						<th scope="row">관광타입</th>
						<td><select title="타입 선택" name="contenttypeid" onchange="typeChange(this)">
								<option value="" selected="selected">타입선택</option>
								<option value="12">관광지</option>
								<option value="14">문화시설</option>
								<option value="15">축제공연행사</option>
								<option value="25">여행코스</option>
								<option value="28">레포츠</option>
								<option value="32">숙박</option>
								<option value="38">쇼핑</option>
								<option value="39">음식점</option>
						</select></td>
					</tr>

					<tr>
						<th scope="row">서비스분류</th>
						<td class="dataSearch">
							<div>
								<span> 
								<select title="대분류" name="cat1" onchange="getCat2List(this);">
										<option value="">대분류</option>
										<option value="A01">자연</option>
										<option value="A02">인문(문화/예술/역사)</option>
										<option value="A03">레포츠</option>
										<option value="A04">쇼핑</option>
										<option value="A05">음식</option>
										<option value="B02">숙박</option>
										<option value="C01">추천코스</option>
								</select> 
								<select name="cat2" onchange="getCat3List(this);" title="중분류">
										<option value="">중분류</option>
								</select> 
								<select name="cat3" style="width: 308px;" title="소분류">
										<option value="">소분류</option>
								</select>
								</span> 
							</div>
						</td>
					</tr>
					<tr>
						<th scope="row">지역</th>
						<td><select title="지역선택" name="areacode">
								<option value="" selected="selected">지역선택</option>
								<option value="1">서울</option>
								<option value="2">인천</option>
								<option value="3">대전</option>
								<option value="4">대구</option>
								<option value="5">광주</option>
								<option value="6">부산</option>
								<option value="7">울산</option>
								<option value="8">세종특별자치시</option>
								<option value="31">경기도</option>
								<option value="32">강원도</option>
								<option value="33">충청북도</option>
								<option value="34">충청남도</option>
								<option value="35">경상북도</option>
								<option value="36">경상남도</option>
								<option value="37">전라북도</option>
								<option value="38">전라남도</option>
								<option value="39">제주도</option>
						</select> <select name="sigungucode" title="시군구선택">
								<option value="" selected="selected">시군구 선택</option>
								<option value="1">광산구</option>
								<option value="1">중구</option>
								<option value="1">강남구</option>
								<option value="1">강서구</option>
								<option value="1">강릉시</option>
								<option value="1">괴산군</option>
								<option value="1">가평군</option>
								<option value="1">강진군</option>
								<option value="1">공주시</option>
								<option value="1">강화군</option>
								<option value="1">고창군</option>
								<option value="1">남제주군</option>
								<option value="1">대덕구</option>
								<option value="1">세종특별자치시</option>
								<option value="1">남구</option>
								<option value="1">경산시</option>
								<option value="1">거제시</option>
								<option value="2">고성군</option>
								<option value="2">거창군</option>
								<option value="2">북제주군</option>
								<option value="2">금산군</option>
								<option value="2">군산시</option>
								<option value="2">단양군</option>
								<option value="2">경주시</option>
								<option value="2">동구</option>
								<option value="2">계양구</option>
								<option value="2">달서구</option>
								<option value="2">남구</option>
								<option value="2">강동구</option>
								<option value="2">고양시</option>
								<option value="2">고흥군</option>
								<option value="2">금정구</option>
								<option value="3">남구</option>
								<option value="3">곡성군</option>
								<option value="3">서귀포시</option>
								<option value="3">김제시</option>
								<option value="3">고령군</option>
								<option value="3">동구</option>
								<option value="3">과천시</option>
								<option value="3">동해시</option>
								<option value="3">기장군</option>
								<option value="3">달성군</option>
								<option value="3">서구</option>
								<option value="3">고성군</option>
								<option value="3">논산시</option>
								<option value="3">보은군</option>
								<option value="3">강북구</option>
								<option value="4">구미시</option>
								<option value="4">당진시</option>
								<option value="4">유성구</option>
								<option value="4">강서구</option>
								<option value="4">영동군</option>
								<option value="4">남구</option>
								<option value="4">북구</option>
								<option value="4">광양시</option>
								<option value="4">남동구</option>
								<option value="4">제주시</option>
								<option value="4">남원시</option>
								<option value="4">광명시</option>
								<option value="4">김해시</option>
								<option value="4">동구</option>
								<option value="4">삼척시</option>
								<option value="5">동구</option>
								<option value="5">관악구</option>
								<option value="5">보령시</option>
								<option value="5">군위군</option>
								<option value="5">남해군</option>
								<option value="5">옥천군</option>
								<option value="5">울주군</option>
								<option value="5">구례군</option>
								<option value="5">속초시</option>
								<option value="5">서구</option>
								<option value="5">중구</option>
								<option value="5">북구</option>
								<option value="5">무주군</option>
								<option value="5">광주시</option>
								<option value="6">동래구</option>
								<option value="6">구리시</option>
								<option value="6">김천시</option>
								<option value="6">광진구</option>
								<option value="6">마산시</option>
								<option value="6">나주시</option>
								<option value="6">부평구</option>
								<option value="6">음성군</option>
								<option value="6">양구군</option>
								<option value="6">서구</option>
								<option value="6">부안군</option>
								<option value="6">부여군</option>
								<option value="7">구로구</option>
								<option value="7">담양군</option>
								<option value="7">군포시</option>
								<option value="7">수성구</option>
								<option value="7">서산시</option>
								<option value="7">부산진구</option>
								<option value="7">문경시</option>
								<option value="7">서구</option>
								<option value="7">밀양시</option>
								<option value="7">제천시</option>
								<option value="7">순창군</option>
								<option value="7">양양군</option>
								<option value="8">금천구</option>
								<option value="8">서천군</option>
								<option value="8">사천시</option>
								<option value="8">영월군</option>
								<option value="8">봉화군</option>
								<option value="8">중구</option>
								<option value="8">목포시</option>
								<option value="8">완주군</option>
								<option value="8">김포시</option>
								<option value="8">연수구</option>
								<option value="8">진천군</option>
								<option value="8">북구</option>
								<option value="9">원주시</option>
								<option value="9">상주시</option>
								<option value="9">아산시</option>
								<option value="9">사상구</option>
								<option value="9">산청군</option>
								<option value="9">무안군</option>
								<option value="9">남양주시</option>
								<option value="9">노원구</option>
								<option value="9">청원군</option>
								<option value="9">옹진군</option>
								<option value="9">익산시</option>
								<option value="10">청주시</option>
								<option value="10">동두천시</option>
								<option value="10">보성군</option>
								<option value="10">양산시</option>
								<option value="10">성주군</option>
								<option value="10">임실군</option>
								<option value="10">중구</option>
								<option value="10">인제군</option>
								<option value="10">도봉구</option>
								<option value="10">사하구</option>
								<option value="11">부천시</option>
								<option value="11">장수군</option>
								<option value="11">예산군</option>
								<option value="11">정선군</option>
								<option value="11">안동시</option>
								<option value="11">서구</option>
								<option value="11">순천시</option>
								<option value="11">동대문구</option>
								<option value="11">충주시</option>
								<option value="12">천안시</option>
								<option value="12">성남시</option>
								<option value="12">동작구</option>
								<option value="12">철원군</option>
								<option value="12">수영구</option>
								<option value="12">영덕군</option>
								<option value="12">신안군</option>
								<option value="12">의령군</option>
								<option value="12">전주시</option>
								<option value="12">증평군</option>
								<option value="13">정읍시</option>
								<option value="13">진주시</option>
								<option value="13">수원시</option>
								<option value="13">청양군</option>
								<option value="13">마포구</option>
								<option value="13">영양군</option>
								<option value="13">연제구</option>
								<option value="13">춘천시</option>
								<option value="13">여수시</option>
								<option value="14">서대문구</option>
								<option value="14">태안군</option>
								<option value="14">영도구</option>
								<option value="14">시흥시</option>
								<option value="14">진안군</option>
								<option value="14">영주시</option>
								<option value="14">진해시</option>
								<option value="14">태백시</option>
								<option value="15">창녕군</option>
								<option value="15">중구</option>
								<option value="15">홍성군</option>
								<option value="15">서초구</option>
								<option value="15">영천시</option>
								<option value="15">안산시</option>
								<option value="15">평창군</option>
								<option value="16">안성시</option>
								<option value="16">영광군</option>
								<option value="16">홍천군</option>
								<option value="16">예천군</option>
								<option value="16">해운대구</option>
								<option value="16">성동구</option>
								<option value="16">창원시</option>
								<option value="16">계룡시</option>
								<option value="17">화천군</option>
								<option value="17">통영시</option>
								<option value="17">성북구</option>
								<option value="17">울릉군</option>
								<option value="17">안양시</option>
								<option value="17">영암군</option>
								<option value="18">하동군</option>
								<option value="18">양주시</option>
								<option value="18">울진군</option>
								<option value="18">송파구</option>
								<option value="18">횡성군</option>
								<option value="18">완도군</option>
								<option value="19">의성군</option>
								<option value="19">함안군</option>
								<option value="19">양천구</option>
								<option value="19">장성군</option>
								<option value="19">양평군</option>
								<option value="20">함양군</option>
								<option value="20">장흥군</option>
								<option value="20">영등포구</option>
								<option value="20">여주시</option>
								<option value="20">청도군</option>
								<option value="21">연천군</option>
								<option value="21">용산구</option>
								<option value="21">진도군</option>
								<option value="21">청송군</option>
								<option value="21">합천군</option>
								<option value="22">오산시</option>
								<option value="22">은평구</option>
								<option value="22">칠곡군</option>
								<option value="22">함평군</option>
								<option value="23">용인시</option>
								<option value="23">해남군</option>
								<option value="23">종로구</option>
								<option value="23">포항시</option>
								<option value="24">화순군</option>
								<option value="24">중구</option>
								<option value="24">의왕시</option>
								<option value="25">중랑구</option>
								<option value="25">의정부시</option>
								<option value="26">이천시</option>
								<option value="27">파주시</option>
								<option value="28">평택시</option>
								<option value="29">포천시</option>
								<option value="30">하남시</option>
								<option value="31">화성시</option>
						</select></td>

					</tr>
				</tbody>
			</table>
			<button type="button" onclick="tourList()">검색</button>
			</div>
			
			<div class="title-v1" id="list"></div>
			
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
						<input type="checkbox" id="accept-terms"> 
						<label for="accept-terms"> 본 사이트의 약관에 동의합니다. 
						<a href="page_terms.html">약관보기</a></label>
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
	<script type="text/javascript"
		src="../../assets/plugins/back-to-top.js"></script>
	<script type="text/javascript"
		src="../../assets/plugins/smoothScroll.js"></script>
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
	<script type="text/javascript"
		src="../../assets/js/plugins/owl-carousel.js"></script>
	<script type="text/javascript"
		src="../../assets/js/plugins/style-switcher.js"></script>
	<script type="text/javascript"
		src="../../assets/js/plugins/parallax-slider.js"></script>
	<script type="text/javascript">
		jQuery(document).ready(function() {
			App.init();
			OwlCarousel.initOwlCarousel();
			StyleSwitcher.initStyleSwitcher();
			ParallaxSlider.initParallaxSlider();
			menuCreate();
		});
		

		function typeChange(contenttypeid, cat1Value){
			var index =$("select[name=contenttypeid]").index(contenttypeid);
			var typeid = $(contenttypeid).val();	
		    var params = {"contenttypeid":typeid ,"langtype":"KOR"};
			
		    $.ajax({
		    	url : "http://api.visitkorea.or.kr/guide/typeServiceCodeAjax.do",
		        type: "post",
		        dataType: "json",
		        data : params,
		        success:function(data){
		    		console.dir(data);
		        	$("select[name=cat1]:eq("+index+")").empty();	        	
		        	$("select[name=cat1]:eq("+index+")").append("<option value=''>대분류</option>");
		        	
		        	for(var  i = 0;  i < data.list.length; i ++){	        		
		        		if(cat1Value == data.list[i].cat1){
		        			$("select[name=cat1]:eq("+index+")").append("<option value='"+data.list[i].cat1+"' selected>"+ data.list[i].catname1 +"</option>");
		        		}else{
		        			$("select[name=cat1]:eq("+index+")").append("<option value='"+data.list[i].cat1+"'>"+ data.list[i].catname1 +"</option>");
		        		}
		        	}
		    
		        },
				error:function(args){
					alert("dateserviceCodeAjax:error:"+request+"status:"+status+"error:"+error);
				}
		    });
		}
		
		
		
		function getCat2List(cat1 , initFlag, cat2Value, cat3Value){
			var index = $("select[name=cat1]").index(cat1);		
		    var params = {"cat1":$(cat1).val() ,"langtype":"KOR"};	    
		    
		    if( $(cat1).val() == ""){
		    	$("select[name=cat2]:eq("+index+")").empty();	        	
	        	$("select[name=cat2]:eq("+index+")").append("<option value=''>중분류</option>");
	        	
	        	$("select[name=cat3]:eq("+index+")").empty();
	        	$("select[name=cat3]:eq("+index+")").append("<option value=''>소분류</option>");
		    	return;
		    }
		    
		    $.ajax({
		    	url : "http://api.visitkorea.or.kr/guide/serviceCodeAjax.do",
		        type: "post",
		        dataType: "json",
		        data : params,
		        success:function(data){	        	
		        	$("select[name=cat2]:eq("+index+")").empty();	        	
		        	$("select[name=cat2]:eq("+index+")").append("<option value=''>중분류</option>");
		        	
		        	$("select[name=cat3]:eq("+index+")").empty();
		        	$("select[name=cat3]:eq("+index+")").append("<option value=''>소분류</option>");
		        	
		        	
		        	for(var  i = 0;  i < data.list.length; i ++){	        		
		        		if(cat2Value == data.list[i].cat2){
		        			$("select[name=cat2]:eq("+index+")").append("<option value='"+data.list[i].cat2+"' selected>"+ data.list[i].catname2 +"</option>");
		        		}else{
		        			$("select[name=cat2]:eq("+index+")").append("<option value='"+data.list[i].cat2+"'>"+ data.list[i].catname2 +"</option>");
		        		}
		        	}
		        		    
		        	if( initFlag == "N") {	        		
			    		getCat3List(	$("select[name=cat2]:eq("+index+")") , initFlag, cat3Value);
		        	}else{
		        		getCat3List(	$("select[name=cat2]:eq("+index+")") , initFlag, cat3Value);
		        	}
		        },
				error:function(args){
					   alert("serviceCodeAjax:error:"+request+"status:"+status+"error:"+error);
				}
		    });
		}
		
		
		// 서비스 분류 소분류
		function getCat3List(cat2, initFlag, selectedValue){
			var index = $("select[name=cat2]").index(cat2);
		    var params = {"cat2":$(cat2).val() ,"langtype":"KOR"};	    		
		    
		    if( $(cat2).val() == ""){        	
	        	$("select[name=cat3]:eq("+index+")").empty();
	        	$("select[name=cat3]:eq("+index+")").append("<option value=''>소분류</option>");
		    	return;
		    }
		    
		    $.ajax({
		    	url : "http://api.visitkorea.or.kr/guide/serviceCodeAjax.do",
		        type: "post",
		        dataType: "json",
		        data : params,
		        success:function(data){
		        	$("select[name=cat3]:eq("+index+")").empty();	        	
		        	$("select[name=cat3]:eq("+index+")").append("<option value=''>소분류</option>");
		        	
		        	for(var  i = 0;  i < data.list.length; i ++){	        		
		        		if (selectedValue == data.list[i].cat3) {
		        			$("select[name=cat3]:eq("+index+")").append("<option value='"+data.list[i].cat3+"' selected>"+ data.list[i].catname3 +"</option>");
		        		} else {
		        			$("select[name=cat3]:eq("+index+")").append("<option value='"+data.list[i].cat3+"'>"+ data.list[i].catname3 +"</option>");
		        		}
		        	}
		        	
		        	if( initFlag == "N") {
		        	}else{
		        		$("select[name=cat3]:eq("+index+") > option").each(function(){	    				
		    				if( $(this).val() == selectedValue){
		    					$(this).attr("selected","selected");	    	
		    				}
		    			});	
		        	}	        	
		        },
				error:function(args){
					alert("serviceCodeAjax2:error:"+request+"status:"+status+"error:"+error);
				}
		    });
		}		
		
		
		function tourList(e) {
			var contenttypeid = $("select[name=contenttypeid]").val();
			var areaCode = $("select[name=areaCode]").val();
			var sigunguCode = $("select[name=sigunguCode]").val();
			var cat1 = $("select[name=cat1]").val();
			var cat2 = $("select[name=cat2]").val();
			var cat3 = $("select[name=cat3]").val();
			var pageNo = e;
			
			var params = new Object();
			params.contentTypeid = contenttypeid;
			params.areaCode = areaCode;
			params.sigunguCode = sigunguCode;
			params.cat1 = cat1;
			params.cat2 = cat2;
			params.cat3 = cat3;
			params.pageNo = e;
			
		    $.ajax({
		    	url : "http://localhost:8081/tour/api/list",
		        type: "get",
		        dataType: "json",
		        data : params,
		        success:function(data){
		        	console.dir(data);
		        	
		        	var data = JSON.parse(data);
		        	listPrint(data)
		        	
		        	pageing(data);
		        },
				error:function(args){
					alert("serviceCodeAjax2:error:"+request+"status:"+status+"error:"+error);
				}
		    });
		};
		
		
		function pageing(data) {
			var body = data.response.body;
			var totalCount = body.totalCount;
			console.log("totalCount : " + totalCount);
			
			var displayPageNum = 10;
			var page = body.pageNo;
			var numOfRows = body.numOfRows;
			var endPage = Math.ceil(page / displayPageNum) * displayPageNum;
			var startPage = (endPage - displayPageNum) + 1;
			
			var tempEndPage = Math.ceil(totalCount / numOfRows);
			
			if (endPage > tempEndPage) {
				endPage = tempEndPage;
			}
			
			var prev = startPage == 1? false : true;
			var next = endPage * numOfRows >= totalCount ? false : true;
			console.log("displayPageNum : " + displayPageNum);
			console.log("page : " + page);
			console.log("endPage : " + endPage);
			console.log("prev : " + prev);
			console.log("next : " + next);
			
			html = "";
			var pageination = $(".pagination");
			
 			if (prev) {
				html += "<li class='page-item'>";
				html += "<a class='page-link' href='#' aria-label='Previous'>";
				html += "<span aria-hidden='true' onclick=previousNextFn('P') >&laquo;</span>";
				html += "<span class='sr-only'>Previous</span>";
				html += "</a>";
				html += "</li>";
			}

			for (var i = startPage; i <= endPage; i++) {
				html += "<li class='page-item'>";
				html += "<a href='#' onclick= tourList(this.text)>" + i + "</a>";
				html += "</li>";
			}

			if (next && endPage > 0) {
				html += "<li class='page-item'>";
				html += "<a class='page-link' href='#' aria-label='Next'>";
				html += "<span aria-hidden='true' onclick=previousNextFn('N') >&raquo;</span>";
				html += "<span class='sr-only'>Next</span>";
				html += "</a>";
				html += "</li>";
			}
			pageination.html(html);
		} 
		
		
		function listPrint(data) {
			console.log("in listPrint");
			console.dir(data);
			
			var item = data.response.body.items.item;
			var list = $("#list");
			
			
			var html = "";
			for (var i = 0; i < item.length; i++) {
				var v = item[i];
				if (i % 4 == 0) {
					console.log(i);
					html += "<ul class='list-unstyled row'>";
				}
				
				html += "<li class='col-sm-3 col-xs-6 md-margin-bottom-30'>";
				html += "<div class='team-img'>";
				html += "<a href='#' onclick='goDetail(this)' data-value1='" + v.contentid + "' data-value2='" + v.contenttypeid + "'>";
				html += "<img class='img-responsive' src='" + v.firstimage2 + "' alt=''  style='width:263px; height:174px'>";
				html += "</a>";
				html += "</div>";
				html += "<h3>" + v.title + "</h3>";
				html += "<h4>" + v.addr1 + "</h4>";
				html += "</li>";
				
				if (i % 4 == 3) { html += "</ul>";}
			}
			
			list.html(html);
		}


		function goDetail(e) {
			console.log(e.getAttribute("data-value1"));
			console.log(e.getAttribute("data-value2"));
			
			var url = "http://localhost:80/rscamper-web/views/tour/detail.jsp?contentid=" + e.getAttribute("data-value1") + "&contenttypeid=" + e.getAttribute("data-value2");
			$(e).attr('href', url);
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
	<script src="../../resources/js/tour.js"></script>
</body>
</html>
