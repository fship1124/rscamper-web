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
	<div>
		<form action="" method="get">
			<input type="text" name="start" value=${param.stationValue}><a href="showPop.jsp">클릭</a> 
			<input type="text" name="arrive" value=${param.stationValues}><a href="showPop2.jsp">클릭</a> <!-- 따로따로 -->
		</form>
		
		<h1>${param.stationValue}</h1>
		
	</div>

	<script>
		function popupOpen() {
			var popUrl = "showPop.html"; //팝업창에 출력될 페이지 URL
			var popOption = "width=370, height=360, left=400, right= 400, resizable=yes, scrollbars=no, status=no;"; //팝업창 옵션(optoin)
			window.open(popUrl, "", popOption);
		}
		function popupOpens() {
			var popUrl = "showPop2.html"; //팝업창에 출력될 페이지 URL
			var popOption = "width=370, height=360, left=400, right= 400, resizable=yes, scrollbars=no, status=no;"; //팝업창 옵션(optoin)
			window.open(popUrl, "", popOption);
		}

		var start = $("input[name=start]");
		start.value = ${param.stationValue};
	

		var arrive = $("input[name=arrive]");
		arrive.value = ${param.stationValues};
		

	</script>


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
	<!-- xdomainajax 추가 -->
	<script type="text/javascript"
		src="../../assets/js/jquery.xdomainajax.js"></script>
	<script type="text/javascript"
		src="../../assets/js/sendRequest-ajax.js"></script>
	<!--  xml2json추가 -->
	<script type="text/javascript" src="../../assets/js/xml2json.js"></script>

	<!-- firebase 로그인 -->
	<script src="https://www.gstatic.com/firebasejs/3.5.1/firebase.js"></script>
	<script src="../../resources/js/firebaseInit.js"></script>
	<script src="../../resources/js/firebaseAuth.js"></script>
	<script src="../../resources/js/menu.js"></script>
</body>
</html>