<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!--=== Header ===-->
<div class="header header-sticky">
	<div class="container">
		<!-- Logo -->
		<a class="logo" href="${pageContext.request.contextPath}/views/main.jsp"> <img src="${pageContext.request.contextPath}/resources/favicon/trollface/trollface-512-236195.png" style="width:40px; height: 40px;" alt="Logo"> </a>
		<!-- End Logo -->

		<!-- Topbar -->
		<div class="topbar">
			<ul class="loginbar pull-right">
				<li><a href="#"><i class="fa fa-info"></i> HELP</a></li>
				<li class="topbar-devider"></li>
				<li id="loginBtn" class="cd-log_reg">
					<a class="cd-signin" href="javascript:void(0);">
					<i class="fa fa-lock"></i> Login</a>
				</li>
				<li id="logoutBtn" style="display: none;">
					<a href="javascript:void(0);" onclick="logout();">
					<i class="fa fa-unlock-alt"></i> Logout</a>
				</li>
			</ul>
		</div>
		<!-- End Topbar -->

		<!-- Toggle get grouped for better mobile display -->
		<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-responsive-collapse">
			<span class="sr-only">Toggle navigation</span> <span class="fa fa-bars"></span>
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