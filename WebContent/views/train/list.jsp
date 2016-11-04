<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="../../assets/js/jquery-3.1.1.min.js"></script>
</head>
<body>
<div id="select_box">
	<form action="" method="get" >
		<select id="train">
			<option id="A0">열차선택</option>
			<option id="A1">새마을호</option>
			<option id="A2">무궁화호</option>
			<option id="A3">통근열차</option>
			<option id="A4">누리로</option>
			<option id="A5">ITX-새마을</option>
			<option id="A6">ITX0-청춘</option>
		</select>
		<br>
		<br>
		<select id="start">
			<option id="B0">출발역</option>
			<option id="B1">용산</option>
			<option id="B2">서울역</option>
			<option id="B3">청량리</option>
			<option id="B4">부산</option>
			<option id="B5">대전</option>
		</select>
		<br>
		<br>
		<select id="arrive">
			<option id="B0">도착역</option>
			<option id="B1">천안</option>
			<option id="B2">안산</option>
			<option id="B3">남춘천</option>
			<option id="B4">춘천</option>
			<option id="B5">김유정</option>
			<option id="B6">가평</option>
		</select>
		<br>
		<br>
		<input type="date" id="startCalender"/>
		<input type="date" id="arriveCalender"/>
	</form>
</div>



	<script>
// 		jQuery(document).ready(function() {
// 			App.init();
// 			OwlCarousel.initOwlCarousel();
// 			StyleSwitcher.initStyleSwitcher();
// 			ParallaxSlider.initParallaxSlider();
// 			menuCreate();
// 		});

		$.ajax({
			url : "http://localhost:8081/train/list",
			dataType : "json",
			type : "GET",
			data : {
				depPlaceId : "dePlaceId",
				arrPlaceId : "arrPlaceId",
				depPlandTime : "depPlandTime",
				trainGradeCode : "trainGradeCode",
				numOfRows : "numOfRows",
				pageNo : "pageNo"
			},
			success : function(data) {
				var data = JSON.parse(data);
				var item = data.response.body.items.item;
	//			console.log(data.vehiclekndid);
	//			console.dir(data);
				for(var i = 0; i < item.length; i++) {
					var a = item[i];
//					console.log(a.vehiclekndid);
//					console.log(a.vehiclekndnm);
					console.log(a.adultcharge);
					console.log(a.arrplacename);
					console.log(a.arrplandtime);
					console.log(a.depplacename);
					console.log(a.depplandtime);
					console.log(a.traingradename);
					
				} 
			}
		});
	</script>
	
	
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
	<!-- xdomainajax 추가 -->
	<script type="text/javascript" src="../../assets/js/jquery.xdomainajax.js"></script>
	<script type="text/javascript" src="../../assets/js/sendRequest-ajax.js"></script>
	<!--  xml2json추가 -->
	<script type="text/javascript" src="../../assets/js/xml2json.js"></script>
	
		<!-- firebase 로그인 -->
	<script src="https://www.gstatic.com/firebasejs/3.5.1/firebase.js"></script>
	<script src="../../resources/js/firebaseInit.js"></script>
	<script src="../../resources/js/firebaseAuth.js"></script>
	<script src="../../resources/js/menu.js"></script>
</body>
</html>