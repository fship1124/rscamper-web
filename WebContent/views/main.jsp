<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="ko" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="ko" class="ie9"> <![endif]-->
<!--[if !IE]><!-->
<html lang="ko">
<!--<![endif]-->

<head>
<title>메인</title>

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
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/js/jquery-ui-1.12.1/jquery-ui.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/js/jquery-ui-1.12.1/jquery-ui.js">

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
<link rel="stylesheet" href="main.css">
<link rel="stylesheet" href="assets/plugins/sky-forms-pro/skyforms/css/sky-forms.css">
<link rel="stylesheet" href="assets/plugins/sky-forms-pro/skyforms/custom/custom-sky-forms.css">
<!-- 달력 css -->
<!--   <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css"> -->
<link rel="stylesheet" href="../assets/js/jquery-ui-1.12.1/jquery-ui.js">
<link rel="stylesheet" href="../assets/css/shiping.style.css">	
<style>
.row{
	width: 1140px;
}
.col-md-4{
	width: 228px;
}
.col-md-5{
	width: 380px;
}
.title-v4{
	width: 370px;
}
#carousel-example-generic{
	width: 650px;
	height: 300px;
}
.form-inline{
	width: 100%;
	height: 300px;
}

</style>
</head>

<body class="header-fixed header-fixed-space-default">
	<div class="wrapper">

		<!-- 헤더 include -->
		<%@include file="/resources/include/header.jsp"%>

		<!-- ================================================================ -->

		<!--=== 사이트맵 ===-->
		<div class="breadcrumbs">
			<div class="container">
				<h1 class="pull-left">Butterfly Train</h1>
				<ul class="pull-right breadcrumb">
					<li class="active"><a href="main.jsp">home</a></li>
				</ul>
			</div>
		</div>

		<!--=== Content ===-->
		<!-- 광고 부분 -->
		
		<div class="container content-md">
		<div class="row">
		<div class="col col-lg-8">
			<div id="carousel-example-generic" style="width: 100%;" class="carousel slide" data-ride="carousel">
			  <!-- Indicators -->
			  <ol class="carousel-indicators">
			    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
			    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
			    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
			    <li data-target="#carousel-example-generic" data-slide-to="3"></li>
			    <li data-target="#carousel-example-generic" data-slide-to="4"></li>
			  </ol>
			
			  <!-- Wrapper for slides -->
			  <div class="carousel-inner" style="width: 100%;" role="listbox">
			    <div class="item active">
			      <img src="train1.jpg" alt="..." style="width: 100%; height: 300px;">
			    </div>
			    <div class="item">
			      <img src="train55.png" alt="..." style="width: 100%; height: 300px;">
			    </div>
			    <div class="item">
			      <img src="train33.png" alt="..." style="width: 100%; height: 300px;">
			    </div>
			    <div class="item">
			      <img src="train44.png" alt="..." style="width: 100%; height: 300px;">
			    </div>
			    <div class="item">
			      <img src="train2.jpg" alt="..." style="width: 100%; height: 300px;">
			    </div>
			  </div>
			
			  <!-- Controls -->
			  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
			    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
			    <span class="sr-only">Previous</span>
			  </a>
			  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
			    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			    <span class="sr-only">Next</span>
			  </a>
			
			</div>
		</div>
		<div class="col col-lg-4">
			<!-- 시간조회 -->
			  <form class="shipping-form" style="float: right; width: 340px;">
				<h3>열차시간조회</h3>
					<div class="form-group g-mb-20">
						<input type="text" name="slocation" class="form-control rounded g-mb-20" placeholder="출발역">
						<input type="text" name="elocation" class="form-control rounded g-mb-20" placeholder="도착역">
							<input type="date" class="form-control rounded">
					</div>
					<a href="#" class="btn-u btn-u-lg btn-u-default btn-u-upper rounded">조회하기</a>
			  </form>
		</div>
	</div>
	<br><br>
			<!-- 스케줄관리 -->
			<div class="bigHeader row" style="line-height:37px; font-size: 24px; font-weight: 700; border-bottom:3px solid black;">
                	일정스케줄
            	<div class="content-tabs">
            	
            	</div>
			</div>            	
		   <div class="col-md-9">
		   		<div class="row">
		   			<div class="col-md-4">
		   				<div class="thumbnails thumbnail-style thumbnail-kenburn">
		   					<div class="thumbnail-img">
		   						<div class="overflow-hidden">
		   							<img class="img-responsive" src="abc.png">
		   						</div>
		   						<a class="btn-more hover-effect" href="#">자세히</a>
		   					</div>
		   					<div class="caption">
		   						<h3>
		   							<a class="hover-effect" href="#">지금 당장 떠나기 딱인 저렴한 여행지 BEST5</a>
		   						</h3>
		   						<p>
		   						내용들~~~~~~~~
		   						</p>
		   					</div>
		   				</div>
		   			</div>
		   			<div class="col-md-4">
		   				<div class="thumbnails thumbnail-style thumbnail-kenburn">
		   					<div class="thumbnail-img">
		   						<div class="overflow-hidden">
		   							<img class="img-responsive" src="abc.png">
		   						</div>
		   						<a class="btn-more hover-effect" href="#">자세히</a>
		   					</div>
		   					<div class="caption">
		   						<h3>
		   							<a class="hover-effect" href="#">지금 당장 떠나기 딱인 저렴한 여행지 BEST5</a>
		   						</h3>
		   						<p>
		   						내용들~~~~~~~~
		   						</p>
		   					</div>
		   				</div>
		   			</div>
		   			<div class="col-md-4">
		   				<div class="thumbnails thumbnail-style thumbnail-kenburn">
		   					<div class="thumbnail-img">
		   						<div class="overflow-hidden">
		   							<img class="img-responsive" src="abc.png">
		   						</div>
		   						<a class="btn-more hover-effect" href="#">자세히</a>
		   					</div>
		   					<div class="caption">
		   						<h3>
		   							<a class="hover-effect" href="#">지금 당장 떠나기 딱인 저렴한 여행지 BEST5</a>
		   						</h3>
		   						<p>
		   						내용들~~~~~~~~
		   						</p>
		   					</div>
		   				</div>
		   			</div>
		   			<div class="col-md-4">
		   				<div class="thumbnails thumbnail-style thumbnail-kenburn">
		   					<div class="thumbnail-img">
		   						<div class="overflow-hidden">
		   							<img class="img-responsive" src="abc.png">
		   						</div>
		   						<a class="btn-more hover-effect" href="#">자세히</a>
		   					</div>
		   					<div class="caption">
		   						<h3>
		   							<a class="hover-effect" href="#">지금 당장 떠나기 딱인 저렴한 여행지 BEST5</a>
		   						</h3>
		   						<p>
		   						여기엔 자세한내용?
		   						</p>
		   					</div>
		   				</div>
		   			</div>
		   			<div class="col-md-4">
		   				<div class="thumbnails thumbnail-style thumbnail-kenburn">
		   					<div class="thumbnail-img">
		   						<div class="overflow-hidden">
		   							<img class="img-responsive" src="abc.png">
		   						</div>
		   						<a class="btn-more hover-effect" href="#">자세히</a>
		   					</div>
		   					<div class="caption">
		   						<h3>
		   							<a class="hover-effect" href="#">지금 당장 떠나기 딱인 저렴한 여행지 BEST5</a>
		   						</h3>
		   						<p>
		   						내용들~~~~~~~~
		   						</p>
		   					</div>
		   				</div>
		   			</div>
		   		</div>
		   </div> 
       	<hr class="margin-bottom-30"/>
		              	
		   <!-- 추천콘텐츠 -->
		   <div class="bigHeader" style="line-height:37px; font-size: 24px; font-weight: 700; border-bottom:3px solid black;">
                	추천콘텐츠
            	<div class="content-tabs">
            	
            	</div>
            	
           </div>
		   <div class="col-md-9">
		   		<div class="row">
		   			<div class="col-md-4">
		   				<div class="thumbnails thumbnail-style thumbnail-kenburn">
		   					<div class="thumbnail-img">
		   						<div class="overflow-hidden">
		   							<img class="img-responsive" src="abc.png">
		   						</div>
		   						<a class="btn-more hover-effect" href="#">자세히</a>
		   					</div>
		   					<div class="caption">
		   						<h3>
		   							<a class="hover-effect" href="#">지금 당장 떠나기 딱인 저렴한 여행지 BEST5</a>
		   						</h3>
		   						<p>
		   						내용들~~~~~~~~
		   						</p>
		   					</div>
		   				</div>
		   			</div>
		   			<div class="col-md-4">
		   				<div class="thumbnails thumbnail-style thumbnail-kenburn">
		   					<div class="thumbnail-img">
		   						<div class="overflow-hidden">
		   							<img class="img-responsive" src="abc.png">
		   						</div>
		   						<a class="btn-more hover-effect" href="#">자세히</a>
		   					</div>
		   					<div class="caption">
		   						<h3>
		   							<a class="hover-effect" href="#">지금 당장 떠나기 딱인 저렴한 여행지 BEST5</a>
		   						</h3>
		   						<p>
		   						내용들~~~~~~~~
		   						</p>
		   					</div>
		   				</div>
		   			</div>
		   			<div class="col-md-4">
		   				<div class="thumbnails thumbnail-style thumbnail-kenburn">
		   					<div class="thumbnail-img">
		   						<div class="overflow-hidden">
		   							<img class="img-responsive" src="abc.png">
		   						</div>
		   						<a class="btn-more hover-effect" href="#">자세히</a>
		   					</div>
		   					<div class="caption">
		   						<h3>
		   							<a class="hover-effect" href="#">지금 당장 떠나기 딱인 저렴한 여행지 BEST5</a>
		   						</h3>
		   						<p>
		   						내용들~~~~~~~~
		   						</p>
		   					</div>
		   				</div>
		   			</div>
		   			<div class="col-md-4">
		   				<div class="thumbnails thumbnail-style thumbnail-kenburn">
		   					<div class="thumbnail-img">
		   						<div class="overflow-hidden">
		   							<img class="img-responsive" src="abc.png">
		   						</div>
		   						<a class="btn-more hover-effect" href="#">자세히</a>
		   					</div>
		   					<div class="caption">
		   						<h3>
		   							<a class="hover-effect" href="#">지금 당장 떠나기 딱인 저렴한 여행지 BEST5</a>
		   						</h3>
		   						<p>
		   						여기엔 자세한내용?
		   						</p>
		   					</div>
		   				</div>
		   			</div>
		   			<div class="col-md-4">
		   				<div class="thumbnails thumbnail-style thumbnail-kenburn">
		   					<div class="thumbnail-img">
		   						<div class="overflow-hidden">
		   							<img class="img-responsive" src="abc.png">
		   						</div>
		   						<a class="btn-more hover-effect" href="#">자세히</a>
		   					</div>
		   					<div class="caption">
		   						<h3>
		   							<a class="hover-effect" href="#">지금 당장 떠나기 딱인 저렴한 여행지 BEST5</a>
		   						</h3>
		   						<p>
		   						내용들~~~~~~~~
		   						</p>
		   					</div>
		   				</div>
		   			</div>
		   		</div>
		   </div>
		
		 <!-- 관광지, 숙소, 맛집-->  
		   <div class="col-md-5">
		   		<h2 class="title-v4">관광지</h2>
		   		<!-- 여기서 밑으로 -->	
		   		<div class="blog-thumb margin-bottom-20">
		   			<div class="blog-thumb-hover">
		   				<img src="abc.png">
		   				<a class="hover-grad" href="#">
		   					<i class="fa fa-photo"></i>
		   				</a>
		   			</div>
		   			<div class="blog-thumb-desc">
		   				<h3>
		   					<a href="#">내용들~~~~~~~~</a>
		   				</h3>
		   			</div>
		   		</div>
		   		<div class="blog-thumb margin-bottom-20">
		   			<div class="blog-thumb-hover">
		   				<img src="abc.png">
		   				<a class="hover-grad" href="#">
		   					<i class="fa fa-photo"></i>
		   				</a>
		   			</div>
		   			<div class="blog-thumb-desc">
		   				<h3>
		   					<a href="#">내용들~~~~~~~~</a>
		   				</h3>
		   			</div>
		   		</div>
		   		<div class="blog-thumb margin-bottom-20">
		   			<div class="blog-thumb-hover">
		   				<img src="abc.png">
		   				<a class="hover-grad" href="#">
		   					<i class="fa fa-photo"></i>
		   				</a>
		   			</div>
		   			<div class="blog-thumb-desc">
		   				<h3>
		   					<a href="#">내용들~~~~~~~~</a>
		   				</h3>
		   			</div>
		   		</div>
		   		<div class="blog-thumb margin-bottom-20">
		   			<div class="blog-thumb-hover">
		   				<img src="abc.png">
		   				<a class="hover-grad" href="#">
		   					<i class="fa fa-photo"></i>
		   				</a>
		   			</div>
		   			<div class="blog-thumb-desc">
		   				<h3>
		   					<a href="#">내용들~~~~~~~~</a>
		   				</h3>
		   			</div>
		   		</div>
		   		<div class="blog-thumb margin-bottom-20">
		   			<div class="blog-thumb-hover">
		   				<img src="abc.png">
		   				<a class="hover-grad" href="#">
		   					<i class="fa fa-photo"></i>
		   				</a>
		   			</div>
		   			<div class="blog-thumb-desc">
		   				<h3>
		   					<a href="#">내용들~~~~~~~~</a>
		   				</h3>
		   			</div>
		   		</div>
		   </div>            	
		   <div class="col-md-5">
		   		<h2 class="title-v4">맛집</h2>
		   		<div class="blog-thumb margin-bottom-20">
		   			<div class="blog-thumb-hover">
		   				<img src="abc.png">
		   				<a class="hover-grad" href="#">
		   					<i class="fa fa-photo"></i>
		   				</a>
		   			</div>
		   			<div class="blog-thumb-desc">
		   				<h3>
		   					<a href="#">내용들~~~~~~~~</a>
		   				</h3>
		   			</div>
		   		</div>
		   </div>            	
		   <div class="col-md-5">
		   		<h2 class="title-v4">숙소</h2>
		   		<div class="blog-thumb margin-bottom-20">
		   			<div class="blog-thumb-hover">
		   				<img src="abc.png">
		   				<a class="hover-grad" href="#">
		   					<i class="fa fa-photo"></i>
		   				</a>
		   			</div>
		   			<div class="blog-thumb-desc">
		   				<h3>
		   					<a href="#">내용들~~~~~~~~</a>
		   				</h3>
		   			</div>
		   		</div>
		   </div>            	
            
            
<!--             <button class="btn-u btn-brd rounded btn-u-sea btn-u-lg" type="button">버튼</button> -->
            
		
<!-- 			<div class="bigHeader" style="line-height:37px; font-size: 24px; font-weight: 700; border-bottom:2px solid black;"> -->
<!--                 	여행 꿀팁 -->
<!--             </div> -->
<!--             <div class="conts-box-list" style="margin-top: 20px; height: 500px; border: 1px solid blue;"> -->
<!--             </div> -->
<!--             <a class="btn-more" href="/city?serviceType=global&amp;tab=hotdeal" style="margin: 0 auto;"> -->
<!--             <span>여행 꿀팁</span> 더보기 +</a> -->
<!-- 			<br><br> -->
<!-- 			<div class="bigHeader" style="line-height:37px; font-size: 24px; font-weight: 700; border-bottom:2px solid black;"> -->
<!--                 	커뮤니티 -->
<!--             </div> -->
<!--             <div class="conts-box-list" style="margin-top: 20px; height: 500px; border: 1px solid blue;"> -->
<!--             </div> -->
<!--             <a class="btn-more" href="/city?serviceType=global&amp;tab=hotdeal" style="margin: 0 auto;"> -->
<!--             <span>커뮤니티</span> 더보기 +</a> -->
			
<!-- 			<br><br> -->
<!-- 			<div class="bigHeader" style="line-height:37px; font-size: 24px; font-weight: 700; border-bottom:2px solid black;"> -->
<!--                 	관광지 맛집 숙소 -->
<!--             </div> -->
<!--             <div class="conts-box-list" style="margin-top: 20px; height: 500px; border: 1px solid blue;"> -->
<!--             </div> -->
<!--             <a class="btn-more" href="/city?serviceType=global&amp;tab=hotdeal" style="margin: 0 auto;"> -->
<!--             <span>관광지 맛집 숙소</span> 더보기 +</a> -->
		
<!-- 		<div class="bigHeader" style="line-height:37px; font-size: 24px; font-weight: 700; border-bottom:3px solid black;"> -->
<!--                 	영역 표시 -->
<!--             </div> -->
              
		</div>
		
		
		<!--=== End Content ===-->


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
	
	<!-- 사용자 정의 Java Script 작성이 완료되면 외부파일로 뺄것 -->
	<script type="text/javascript" src="main.js">
	$(function() {
	    $( "#datepicker1" ).datepicker({
	    });
	});
	</script>
	
</body>
</html>
