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
			      <img src="train66.jpg" alt="..." style="width: 100%; height: 300px;">
			    </div>
			    <div class="item">
			      <img src="train77.png" alt="..." style="width: 100%; height: 300px;">
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
		   							<img class="img-responsive" src="img/a.jpg" style="width: 218px; height: 180px;">
		   						</div>
		   						<a class="btn-more hover-effect" href="#">자세히</a>
		   					</div>
		   					<div class="caption">
		   						<h3>
		   							<a class="hover-effect" href="#">지금 당장 떠나기 딱인 저렴한 여행지 BEST5</a>
		   						</h3>
		   						<p>
		   						호동님
		   						</p>
		   					</div>
		   				</div>
		   			</div>
		   			<div class="col-md-4">
		   				<div class="thumbnails thumbnail-style thumbnail-kenburn">
		   					<div class="thumbnail-img">
		   						<div class="overflow-hidden">
		   							<img class="img-responsive" src="img/b.jpg" style="width: 218px; height: 180px;">
		   						</div>
		   						<a class="btn-more hover-effect" href="#">자세히</a>
		   					</div>
		   					<div class="caption">
		   						<h3>
		   							<a class="hover-effect" href="#">당장가고싶은 여행지 BEST5</a>
		   						</h3>
		   						<p>
		   						성주님
		   						</p>
		   					</div>
		   				</div>
		   			</div>
		   			<div class="col-md-4">
		   				<div class="thumbnails thumbnail-style thumbnail-kenburn">
		   					<div class="thumbnail-img">
		   						<div class="overflow-hidden">
		   							<img class="img-responsive" src="img/c.jpg" style="width: 218px; height: 180px;">
		   						</div>
		   						<a class="btn-more hover-effect" href="#">자세히</a>
		   					</div>
		   					<div class="caption">
		   						<h3>
		   							<a class="hover-effect" href="#">겨울에 떠나면 딱맞는 휴양지는 어디?</a>
		   						</h3>
		   						<p>
		   						영은님
		   						</p>
		   					</div>
		   				</div>
		   			</div>
		   			<div class="col-md-4">
		   				<div class="thumbnails thumbnail-style thumbnail-kenburn">
		   					<div class="thumbnail-img">
		   						<div class="overflow-hidden">
		   							<img class="img-responsive" src="img/d.jpg" style="width: 218px; height: 180px;">
		   						</div>
		   						<a class="btn-more hover-effect" href="#">자세히</a>
		   					</div>
		   					<div class="caption">
		   						<h3>
		   							<a class="hover-effect" href="#">숲속 데이트 어떠신가요?</a>
		   						</h3>
		   						<p>
		   						재홍님
		   						</p>
		   					</div>
		   				</div>
		   			</div>
		   			<div class="col-md-4">
		   				<div class="thumbnails thumbnail-style thumbnail-kenburn">
		   					<div class="thumbnail-img">
		   						<div class="overflow-hidden">
		   							<img class="img-responsive" src="img/e.JPG" style="width: 218px; height: 180px;">
		   						</div>
		   						<a class="btn-more hover-effect" href="#">자세히</a>
		   					</div>
		   					<div class="caption">
		   						<h3>
		   							<a class="hover-effect" href="#">아기자기한 한국의 유럽여행~</a>
		   						</h3>
		   						<p>
		   						대현님
		   						</p>
		   					</div>
		   				</div>
		   			</div>
		   		</div>
		   </div> 
       	<hr class="margin-bottom-30"/>
		
		<!-- 여기부터!!! -->              	
		   <!-- 추천콘텐츠 -->
<!-- 		   <div class="bigHeader" style="line-height:37px; font-size: 24px; font-weight: 700; border-bottom:3px solid black;"> -->
<!--                 	전국혜택 -->
<!--             	<div class="content-tabs"></div> -->
<!--            </div> -->
<!-- 		   <div class="col-md-9"> -->
<!-- 		   		<div class="row" id="benefitList"></div> -->
<!-- 		   </div> -->
		<!-- 여기까지!! -->
		
		
		<div class="bigHeader row" style="line-height:37px; font-size: 24px; font-weight: 700; border-bottom:3px solid black;">
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
		   							<img class="img-responsive" src="img/cu1.jpg" style="width: 218px; height: 180px;">
		   						</div>
		   						<a class="btn-more hover-effect" href="#">자세히</a>
		   					</div>
		   					<div class="caption">
		   						<h3>
		   							<a class="hover-effect" href="#">구포역 픽업 제공 저렴한 게스트하우스</a>
		   						</h3>
		   						<p>
		   						[부산경남] 유선게스트하우스(구포역 픽업 제공)
		   						</p>
		   					</div>
		   				</div>
		   			</div>
		   			<div class="col-md-4">
		   				<div class="thumbnails thumbnail-style thumbnail-kenburn">
		   					<div class="thumbnail-img">
		   						<div class="overflow-hidden">
		   							<img class="img-responsive" src="img/cu2.jpg" style="width: 218px; height: 180px;">
		   						</div>
		   						<a class="btn-more hover-effect" href="#">자세히</a>
		   					</div>
		   					<div class="caption">
		   						<h3>
		   							<a class="hover-effect" href="#">구포역 픽업 제공 저렴한 게스트하우스</a>
		   						</h3>
		   						<p>
		   						[부산경남] 유선게스트하우스(구포역 픽업 제공)
		   						</p>
		   					</div>
		   				</div>
		   			</div>
		   			<div class="col-md-4">
		   				<div class="thumbnails thumbnail-style thumbnail-kenburn">
		   					<div class="thumbnail-img">
		   						<div class="overflow-hidden">
		   							<img class="img-responsive" src="img/cu3.JPG" style="width: 218px; height: 180px;">
		   						</div>
		   						<a class="btn-more hover-effect" href="#">자세히</a>
		   					</div>
		   					<div class="caption">
		   						<h3>
		   							<a class="hover-effect" href="#">게스트하우스 U</a>
		   						</h3>
		   						<p>
		   						[부산경남] 울산게스트하우스유(U)
		   						</p>
		   					</div>
		   				</div>
		   			</div>
		   			<div class="col-md-4">
		   				<div class="thumbnails thumbnail-style thumbnail-kenburn">
		   					<div class="thumbnail-img">
		   						<div class="overflow-hidden">
		   							<img class="img-responsive" src="img/cu4.jpg" style="width: 218px; height: 180px;">
		   						</div>
		   						<a class="btn-more hover-effect" href="#">자세히</a>
		   					</div>
		   					<div class="caption">
		   						<h3>
		   							<a class="hover-effect" href="#">서면 롯데백화점 15분 거리, 도심속 힐링사찰 삼광사 무료숙박</a>
		   						</h3>
		   						<p>
		   						[부산경남] 부산 삼광사 무료숙박(매주 금요일)
		   						</p>
		   					</div>
		   				</div>
		   			</div>
		   			<div class="col-md-4">
		   				<div class="thumbnails thumbnail-style thumbnail-kenburn">
		   					<div class="thumbnail-img">
		   						<div class="overflow-hidden">
		   							<img class="img-responsive" src="img/cu5.jpg" style="width: 218px; height: 180px;">
		   						</div>
		   						<a class="btn-more hover-effect" href="#">자세히</a>
		   					</div>
		   					<div class="caption">
		   						<h3>
		   							<a class="hover-effect" href="#">서면 롯데백화점 15분 거리, 도심속 힐링사찰 삼광사 무료숙박</a>
		   						</h3>
		   						<p>
		   						[부산경남] 부산 삼광사 무료숙박(매주 금요일)
		   						</p>
		   					</div>
		   				</div>
		   			</div>
		   			<div class="col-md-4">
		   				<div class="thumbnails thumbnail-style thumbnail-kenburn">
		   					<div class="thumbnail-img">
		   						<div class="overflow-hidden">
		   							<img class="img-responsive" src="img/cu6.jpg" style="width: 218px; height: 180px;">
		   						</div>
		   						<a class="btn-more hover-effect" href="#">자세히</a>
		   					</div>
		   					<div class="caption">
		   						<h3>
		   							<a class="hover-effect" href="#">화명역 도보 5분 거리! 1회용 칫솔·샴푸 등 제공</a>
		   						</h3>
		   						<p>
		   						[부산경남] 오아시스 사우나 찜질방(화명)
		   						</p>
		   					</div>
		   				</div>
		   			</div>
		   			<div class="col-md-4">
		   				<div class="thumbnails thumbnail-style thumbnail-kenburn">
		   					<div class="thumbnail-img">
		   						<div class="overflow-hidden">
		   							<img class="img-responsive" src="img/cu7.JPG" style="width: 218px; height: 180px;">
		   						</div>
		   						<a class="btn-more hover-effect" href="#">자세히</a>
		   					</div>
		   					<div class="caption">
		   						<h3>
		   							<a class="hover-effect" href="#">4인실 기준 1인 3,000원 할인(15,000원)</a>
		   						</h3>
		   						<p>
		   						[부산경남] 울산램넌트게스트하우스
		   						</p>
		   					</div>
		   				</div>
		   			</div>
		   			<div class="col-md-4">
		   				<div class="thumbnails thumbnail-style thumbnail-kenburn">
		   					<div class="thumbnail-img">
		   						<div class="overflow-hidden">
		   							<img class="img-responsive" src="img/cu8.jpg" style="width: 218px; height: 180px;">
		   						</div>
		   						<a class="btn-more hover-effect" href="#">자세히</a>
		   					</div>
		   					<div class="caption">
		   						<h3>
		   							<a class="hover-effect" href="#">화명역 도보 5분 거리, 1회용 칫솔·샴푸 등 제공</a>
		   						</h3>
		   						<p>
		   						[부산경남] 오아시스 사우나 찜질방(화명)
		   						</p>
		   					</div>
		   				</div>
		   			</div>
		   			<div class="col-md-4">
		   				<div class="thumbnails thumbnail-style thumbnail-kenburn">
		   					<div class="thumbnail-img">
		   						<div class="overflow-hidden">
		   							<img class="img-responsive" src="img/cu9.jpg" style="width: 218px; height: 180px;">
		   						</div>
		   						<a class="btn-more hover-effect" href="#">자세히</a>
		   					</div>
		   					<div class="caption">
		   						<h3>
		   							<a class="hover-effect" href="#">(2인 기준 금액)우리 고유의 한옥생활 체험</a>
		   						</h3>
		   						<p>
		   						[부산경남] 경남 김해 한옥체험관(주중)
		   						</p>
		   					</div>
		   				</div>
		   			</div>
		   			<div class="col-md-4">
		   				<div class="thumbnails thumbnail-style thumbnail-kenburn">
		   					<div class="thumbnail-img">
		   						<div class="overflow-hidden">
		   							<img class="img-responsive" src="img/cu10.jpg" style="width: 218px; height: 180px;">
		   						</div>
		   						<a class="btn-more hover-effect" href="#">자세히</a>
		   					</div>
		   					<div class="caption">
		   						<h3>
		   							<a class="hover-effect" href="#">낙동강의 자연환경과 역사문화 투어</a>
		   						</h3>
		   						<p>
		   						[부산경남] 낙동강 생태탐방선
		   						</p>
		   					</div>
		   				</div>
		   			</div>
<!-- 		   			<div class="col-md-4"> -->
<!-- 		   				<div class="thumbnails thumbnail-style thumbnail-kenburn"> -->
<!-- 		   					<div class="thumbnail-img"> -->
<!-- 		   						<div class="overflow-hidden"> -->
<!-- 		   							<img class="img-responsive" src="img/cu11.JPG" style="width: 218px; height: 180px;"> -->
<!-- 		   						</div> -->
<!-- 		   						<a class="btn-more hover-effect" href="#">자세히</a> -->
<!-- 		   					</div> -->
<!-- 		   					<div class="caption"> -->
<!-- 		   						<h3> -->
<!-- 		   							<a class="hover-effect" href="#">언양불고기 진정한 맛집!</a> -->
<!-- 		   						</h3> -->
<!-- 		   						<p> -->
<!-- 		   						[부산경남] 갈비구락부 -->
<!-- 		   						</p> -->
<!-- 		   					</div> -->
<!-- 		   				</div> -->
<!-- 		   			</div> -->
<!-- 		   			<div class="col-md-4"> -->
<!-- 		   				<div class="thumbnails thumbnail-style thumbnail-kenburn"> -->
<!-- 		   					<div class="thumbnail-img"> -->
<!-- 		   						<div class="overflow-hidden"> -->
<!-- 		   							<img class="img-responsive" src="img/cu12.JPG" style="width: 218px; height: 180px;"> -->
<!-- 		   						</div> -->
<!-- 		   						<a class="btn-more hover-effect" href="#">자세히</a> -->
<!-- 		   					</div> -->
<!-- 		   					<div class="caption"> -->
<!-- 		   						<h3> -->
<!-- 		   							<a class="hover-effect" href="#">직접 만드는 도자기와 간단한 체험, 커피까지~</a> -->
<!-- 		   						</h3> -->
<!-- 		   						<p> -->
<!-- 		   						[부산경남] 공방카페 쉼표 -->
<!-- 		   						</p> -->
<!-- 		   					</div> -->
<!-- 		   				</div> -->
<!-- 		   			</div> -->
<!-- 		   			<div class="col-md-4"> -->
<!-- 		   				<div class="thumbnails thumbnail-style thumbnail-kenburn"> -->
<!-- 		   					<div class="thumbnail-img"> -->
<!-- 		   						<div class="overflow-hidden"> -->
<!-- 		   							<img class="img-responsive" src="img/cu13.JPG" style="width: 218px; height: 180px;"> -->
<!-- 		   						</div> -->
<!-- 		   						<a class="btn-more hover-effect" href="#">자세히</a> -->
<!-- 		   					</div> -->
<!-- 		   					<div class="caption"> -->
<!-- 		   						<h3> -->
<!-- 		   							<a class="hover-effect" href="#">울산 시티투어 체험</a> -->
<!-- 		   						</h3> -->
<!-- 		   						<p> -->
<!-- 		   						[부산경남] 울산 시티투어 체험 -->
<!-- 		   						</p> -->
<!-- 		   					</div> -->
<!-- 		   				</div> -->
<!-- 		   			</div> -->
<!-- 		   			<div class="col-md-4"> -->
<!-- 		   				<div class="thumbnails thumbnail-style thumbnail-kenburn"> -->
<!-- 		   					<div class="thumbnail-img"> -->
<!-- 		   						<div class="overflow-hidden"> -->
<!-- 		   							<img class="img-responsive" src="img/cu14.jpg" style="width: 218px; height: 180px;"> -->
<!-- 		   						</div> -->
<!-- 		   						<a class="btn-more hover-effect" href="#">자세히</a> -->
<!-- 		   					</div> -->
<!-- 		   					<div class="caption"> -->
<!-- 		   						<h3> -->
<!-- 		   							<a class="hover-effect" href="#">낙동강의 자연환경과 역사문화 투어</a> -->
<!-- 		   						</h3> -->
<!-- 		   						<p> -->
<!-- 		   						[부산경남] 낙동강 생태탐방선 -->
<!-- 		   						</p> -->
<!-- 		   					</div> -->
<!-- 		   				</div> -->
<!-- 		   			</div> -->
<!-- 		   			<div class="col-md-4"> -->
<!-- 		   				<div class="thumbnails thumbnail-style thumbnail-kenburn"> -->
<!-- 		   					<div class="thumbnail-img"> -->
<!-- 		   						<div class="overflow-hidden"> -->
<!-- 		   							<img class="img-responsive" src="img/cu15.jpeg" style="width: 218px; height: 180px;"> -->
<!-- 		   						</div> -->
<!-- 		   						<a class="btn-more hover-effect" href="#">자세히</a> -->
<!-- 		   					</div> -->
<!-- 		   					<div class="caption"> -->
<!-- 		   						<h3> -->
<!-- 		   							<a class="hover-effect" href="#">진주역에서 가까운 게스트하우스 도미토리룸 10%할인</a> -->
<!-- 		   						</h3> -->
<!-- 		   						<p> -->
<!-- 		   						[부산경남] 진주 뭉클게스트하우스 -->
<!-- 		   						</p> -->
<!-- 		   					</div> -->
<!-- 		   				</div> -->
<!-- 		   			</div> -->
		   		</div>
		   </div>

		 <!-- 관광지, 숙소, 맛집-->  
		   <div class="col-md-5">
		   		<h2 class="title-v4">관광지</h2>
		   		<!-- 여기서 밑으로 -->	
		   		<div class="blog-thumb margin-bottom-20">
		   			<div class="blog-thumb-hover">
		   				<img src="img/tour1.jpg" style="width: 160px; height: 150px;">
		   				<a class="hover-grad" href="#">
		   					<i class="fa fa-photo"></i>
		   				</a>
		   			</div>
		   			<div class="blog-thumb-desc">
		   				<h3>
		   					<a href="#">전라도</a>
		   				</h3>
		   			</div>
		   		</div>
		   		<div class="blog-thumb margin-bottom-20">
		   			<div class="blog-thumb-hover">
		   				<img src="img/tour2.jpg" style="width: 160px; height: 150px;">
		   				<a class="hover-grad" href="#">
		   					<i class="fa fa-photo"></i>
		   				</a>
		   			</div>
		   			<div class="blog-thumb-desc">
		   				<h3>
		   					<a href="#">경상도</a>
		   				</h3>
		   			</div>
		   		</div>
		   		<div class="blog-thumb margin-bottom-20">
		   			<div class="blog-thumb-hover">
		   				<img src="img/tour3.jpg" style="width: 160px; height: 150px;">
		   				<a class="hover-grad" href="#">
		   					<i class="fa fa-photo"></i>
		   				</a>
		   			</div>
		   			<div class="blog-thumb-desc">
		   				<h3>
		   					<a href="#">강원도</a>
		   				</h3>
		   			</div>
		   		</div>
		   		<div class="blog-thumb margin-bottom-20">
		   			<div class="blog-thumb-hover">
		   				<img src="img/tour4.jpg" style="width: 160px; height: 150px;">
		   				<a class="hover-grad" href="#">
		   					<i class="fa fa-photo"></i>
		   				</a>
		   			</div>
		   			<div class="blog-thumb-desc">
		   				<h3>
		   					<a href="#">부산</a>
		   				</h3>
		   			</div>
		   		</div>
		   		<div class="blog-thumb margin-bottom-20">
		   			<div class="blog-thumb-hover">
		   				<img src="img/tour5.jpg" style="width: 160px; height: 150px;">
		   				<a class="hover-grad" href="#">
		   					<i class="fa fa-photo"></i>
		   				</a>
		   			</div>
		   			<div class="blog-thumb-desc">
		   				<h3>
		   					<a href="#">세종특별시</a>
		   				</h3>
		   			</div>
		   		</div>
		   </div>            	
		   <div class="col-md-5">
		   		<h2 class="title-v4">맛집</h2>
		   		<div class="blog-thumb margin-bottom-20">
		   			<div class="blog-thumb-hover">
		   				<img src="img/food1.jpg" style="width: 160px; height: 150px;">
		   				<a class="hover-grad" href="#">
		   					<i class="fa fa-photo"></i>
		   				</a>
		   			</div>
		   			<div class="blog-thumb-desc">
		   				<h3>
		   					<a href="#">소고기먹어보아요</a>
		   				</h3>
		   			</div>
		   		</div>
		   		<div class="blog-thumb margin-bottom-20">
		   			<div class="blog-thumb-hover">
		   				<img src="img/food2.jpg" style="width: 160px; height: 150px;">
		   				<a class="hover-grad" href="#">
		   					<i class="fa fa-photo"></i>
		   				</a>
		   			</div>
		   			<div class="blog-thumb-desc">
		   				<h3>
		   					<a href="#">해물찜</a>
		   				</h3>
		   			</div>
		   		</div>
		   		<div class="blog-thumb margin-bottom-20">
		   			<div class="blog-thumb-hover">
		   				<img src="img/food3.jpg" style="width: 160px; height: 150px;">
		   				<a class="hover-grad" href="#">
		   					<i class="fa fa-photo"></i>
		   				</a>
		   			</div>
		   			<div class="blog-thumb-desc">
		   				<h3>
		   					<a href="#">오징어순대</a>
		   				</h3>
		   			</div>
		   		</div>
		   		<div class="blog-thumb margin-bottom-20">
		   			<div class="blog-thumb-hover">
		   				<img src="img/food4.jpg" style="width: 160px; height: 150px;">
		   				<a class="hover-grad" href="#">
		   					<i class="fa fa-photo"></i>
		   				</a>
		   			</div>
		   			<div class="blog-thumb-desc">
		   				<h3>
		   					<a href="#">깔끔한 밥상</a>
		   				</h3>
		   			</div>
		   		</div>
		   		<div class="blog-thumb margin-bottom-20">
		   			<div class="blog-thumb-hover">
		   				<img src="img/food5.jpg" style="width: 160px; height: 150px;">
		   				<a class="hover-grad" href="#">
		   					<i class="fa fa-photo"></i>
		   				</a>
		   			</div>
		   			<div class="blog-thumb-desc">
		   				<h3>
		   					<a href="#">먹고싶다 16첩밥상</a>
		   				</h3>
		   			</div>
		   		</div>
		   </div>            	
		   <div class="col-md-5">
		   		<h2 class="title-v4">숙소</h2>
		   		<div class="blog-thumb margin-bottom-20">
		   			<div class="blog-thumb-hover">
		   				<img src="img/room1.jpg" style="width: 160px; height: 150px;">
		   				<a class="hover-grad" href="#">
		   					<i class="fa fa-photo"></i>
		   				</a>
		   			</div>
		   			<div class="blog-thumb-desc">
		   				<h3>
		   					<a href="#">리조트호텔</a>
		   				</h3>
		   			</div>
		   		</div>
		   		<div class="blog-thumb margin-bottom-20">
		   			<div class="blog-thumb-hover">
		   				<img src="img/room2.jpg" style="width: 160px; height: 150px;">
		   				<a class="hover-grad" href="#">
		   					<i class="fa fa-photo"></i>
		   				</a>
		   			</div>
		   			<div class="blog-thumb-desc">
		   				<h3>
		   					<a href="#">샌즈호텔</a>
		   				</h3>
		   			</div>
		   		</div>
		   		<div class="blog-thumb margin-bottom-20">
		   			<div class="blog-thumb-hover">
		   				<img src="img/room3.jpg" style="width: 160px; height: 150px;">
		   				<a class="hover-grad" href="#">
		   					<i class="fa fa-photo"></i>
		   				</a>
		   			</div>
		   			<div class="blog-thumb-desc">
		   				<h3>
		   					<a href="#">드림즈호텔</a>
		   				</h3>
		   			</div>
		   		</div>
		   		<div class="blog-thumb margin-bottom-20">
		   			<div class="blog-thumb-hover">
		   				<img src="img/room4.jpg" style="width: 160px; height: 150px;">
		   				<a class="hover-grad" href="#">
		   					<i class="fa fa-photo"></i>
		   				</a>
		   			</div>
		   			<div class="blog-thumb-desc">
		   				<h3>
		   					<a href="#">소넨호프펜션</a>
		   				</h3>
		   			</div>
		   		</div>
		   		<div class="blog-thumb margin-bottom-20">
		   			<div class="blog-thumb-hover">
		   				<img src="img/room5.jpg" style="width: 160px; height: 150px;">
		   				<a class="hover-grad" href="#">
		   					<i class="fa fa-photo"></i>
		   				</a>
		   			</div>
		   			<div class="blog-thumb-desc">
		   				<h3>
		   					<a href="#">그랜드호텔</a>
		   				</h3>
		   			</div>
		   		</div>
		   </div>            	             
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
	<script type="text/javascript" src="main.js"></script>
	<script>
	
	
// 	var benefitList = $("#benefitList");
// 	console.log("#benefitList :");
// 	console.dir(benefitList);
// 	var html = "";
// 	$.ajax({
// 		url : "http://localhost:8081/main/benefitList",
// 		dataType : "json",
// 		type : "GET",
// 		success: function(result) {
// 			console.log(result); // 다들어왓고
// 			for(var i = 0; i < 15; i++) {
// 				var data = result[i];
// 	//			console.log(data);
// 				console.log(i); // 찍히고
// 				html += "<div class='col-md-4' style='height: 300px;'>";
// 				html += "<div class='thumbnails thumbnail-style thumbnail-kenburn'>";
// 				html += "	<div class='thumbnail-img'>";
// 				html += "		<div class='overflow-hidden'>";
// 				html += "			<img class='img-responsive' src="+ data.imageUrl +">";
// 				html += "		</div>";
// 				html += "			<a class='btn-more hover-effect' href='#'>자세히</a>";
// 				html += "	</div>";
// 				html += "	<div class='caption'>";
// 				html += "		<h3>";
// 				html += "			<a class='hover-effect' href='#'>"+ data.info +"</a>";
// 				html += "		</h3>";
// 				html += "		<p>"+ data.title +"</p>";
// 				html += "</div>";
// 				html += "</div>";
// 				html += "</div>";
// 				benefitList.html(html);
// 			}
			
// 		},
// 		err: function() {
// 			alert("에러");
// 		}	
// 	});

	
	</script>
	
</body>
</html>
