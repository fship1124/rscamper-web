<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>




<!--=== Header ===-->
<div class="header header-sticky">


	<div class="container">

		<!-- 알림 팝오버 -->
		<div class="last-noti-list mynotice dropdown-menu" role="menu"
			aria-labelledby="dLabel">
			<div class="noti-tri"></div>
			<h5 class="noti-title">알림</h5>
			<a id="nav-my-notice-confirm-all" class="noti-check-on">읽은 상태로 표시</a>
			<ul id="my-notice-list">
				<!--   <li data-id="05dd80646296182b" data-type="8" data-link-key="d3358b3b6597e8ca"> -->
				<!--     <div></div> -->
				<!--       <div class="noti-img-wrap"><img src="https://thumb-wishbeen.akamaized.net/PybH0GP01LB_RNCiCw6PNdrBTD4=/60x60/smart/filters:no_upscale()/img-wishbeen.akamaized.net/profile/1479603117113_108862383047950917579_orgin_.jpg"></div> -->
				<!--       <div class="noti-contents"> -->
				<!--         <h5><i class="fa comment"></i> <span><span style="color:#ff8000;">jun heo</span>님이 <span style="color:#ff8000;">호동이의 부산 여행기</span>에 댓글을 남겼습니다.</span> <span class="noti-new">N</span></h5> -->
				<!--         <p class="date">2016.11.20 09:52</p> -->
				<!--         <p>태종대공원 등대네요^^</p> -->
				<!--       </div> -->
				<!--   </li> -->
				<!--   <li data-id="a81fbead7a1418ec" data-type="8" data-link-key="d3358b3b6597e8ca"> -->
				<!--     <div></div> -->
				<!--       <div class="noti-img-wrap"><img src="https://thumb-wishbeen.akamaized.net/lGYogGsIlxXDZKyfSyHRGhPf614=/60x60/smart/filters:no_upscale()/img-wishbeen.akamaized.net/profile/1421204442933_thumb_600.jpg"></div> -->
				<!--       <div class="noti-contents"> -->
				<!--         <h5><i class="fa comment"></i> <span><span style="color:#ff8000;">Nocturne</span>님이 <span style="color:#ff8000;">호동이의 부산 여행기</span>에 댓글을 남겼습니다.</span> <span class="noti-new">N</span></h5> -->
				<!--         <p class="date">2016.11.16 16:32</p> -->
				<!--         <p>여기가 어디에요? -->
				<!-- </p> -->
				<!--       </div> -->

				<!--   </li> -->


				<!--   <li data-id="214c08a87de16882" data-type="8" data-link-key="d3358b3b6597e8ca"> -->
				<!--     <div></div> -->
				<!--       <div class="noti-img-wrap"><img src="https://thumb-wishbeen.akamaized.net/yu_1TO7L3zh4KdVm3_Y7MlgkTZA=/60x60/smart/filters:no_upscale()/img-wishbeen.akamaized.net/profile/1478940385120_110353417415994405115_orgin_.jpg"></div> -->
				<!--       <div class="noti-contents"> -->
				<!--         <h5><i class="fa comment"></i> <span><span style="color:#ff8000;">좀비고등학교심영우</span>님이 <span style="color:#ff8000;">호동이의 부산 여행기</span>에 댓글을 남겼습니다.</span> <span class="noti-new">N</span></h5> -->
				<!--         <p class="date">2016.11.12 17:50</p> -->
				<!--         <p>와우</p> -->
				<!--       </div> -->

				<!--   </li> -->


				<!--   <li data-id="9c363c14631d0a66" data-type="8" data-link-key="d3358b3b6597e8ca"> -->
				<!--     <div></div> -->
				<!--       <div class="noti-img-wrap"><img src="https://thumb-wishbeen.akamaized.net/wSZol79aueDQJWuk1Cm1it3Jfxw=/60x60/smart/filters:no_upscale()/img-wishbeen.akamaized.net/profile/1479264444468_%EA%B0%88%EB%B9%84%EC%B0%9C.JPG"></div> -->
				<!--       <div class="noti-contents"> -->
				<!--         <h5><i class="fa comment"></i> <span><span style="color:#ff8000;">Wow Agrama</span>님이 <span style="color:#ff8000;">호동이의 부산 여행기</span>에 댓글을 남겼습니다.</span> <span class="noti-new">N</span></h5> -->
				<!--         <p class="date">2016.11.10 14:59</p> -->
				<!--         <p>ㅋㅋㅋ</p> -->
				<!--       </div> -->
				<!--   </li> -->
			</ul>
			<div class="see-all-notice">더 보기</div>
		</div>

		<!-- End 알림 팝오버 -->




		<!-- Logo -->
		<a class="logo"
			href="${pageContext.request.contextPath}/views/main.jsp"> <img
			src="${pageContext.request.contextPath}/resources/img/logo/catbuslogo.png"
			style="width: 70px; height: 40px;" alt="Logo"></a>
		<!-- End Logo -->

		<!-- Topbar -->
		<div class="topbar">
			<ul class="loginbar pull-right">
				<!-- 				<li style="margin-right: 20px; cursor: pointer;"><img src="/rscamper-web/resources/img/default/icon-new-bell.png"><span class="noti-count" style="color: #ff8000; line-height: 19px;">0</span></li> -->
				<li data-placement="bottom" data-toggle="popover"
					data-container="body" data-placement="left" data-html="true"
					style="margin-right: 20px; cursor: pointer;"><i
					class="fa fa-bell"></i> <span class="noti-count"
					style="color: #ff8000; line-height: 19px;">0</span></li>
				<li><a href="#"><i class="fa fa-info"></i> HELP</a></li>
				<li class="topbar-devider"></li>
				<li id="loginBtn" class="cd-log_reg"><a class="cd-signin"
					href="javascript:void(0);"> <i class="fa fa-lock"></i> Login
				</a></li>
				<li id="logoutBtn" style="display: none;"><a
					href="javascript:void(0);" onclick="logout();"> <i
						class="fa fa-unlock-alt"></i> Logout
				</a></li>
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
			</ul>
		</div>
		<!--/end container-->
	</div>
	<!--/navbar-collapse-->
</div>
<!--=== End Header ===-->

<%-- <script	src="${pageContext.request.contextPath}/resources/include/js/header.js"></script> --%>

