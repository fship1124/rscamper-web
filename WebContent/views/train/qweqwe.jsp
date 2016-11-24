<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="../../assets/js/jquery-3.1.1.min.js"></script>
</head>
<body>
	
		<div style="overflow: hidden; float: left; width: 900px; height: 300px; padding: 17px 20px 0; border: 4px solid #0095cd; background: #ecf1f4">
				<input type="radio" name="trainRadio" value="01" id="a1" onclick="join1();"/>새마을
				<input type="radio" name="trainRadio" value="02" id="a2" onclick="join2();"/>무궁화
				<input type="radio" name="trainRadio" value="03" id="a3" onclick="join3();"/>통근열차
				<input type="radio" name="trainRadio" value="04" id="a4" onclick="join4();"/>누리로
				<input type="radio" name="trainRadio" value="09" id="a5" onclick="join5();"/>ITX-청춘
				<input type="radio" name="trainRadio" value="08" id="a6" onclick="join6();"/>ITX-새마을
		<br>
		 출발역:<input type="text" id="startInput" name="start"><button class="btn btn-default" id="startButton" onclick="startBtn();">조회</button><br>
		 도착역:<input type="text" id="arriveInput" name="arrive"><button class="btn btn-default" id="arriveButton" onclick="arriveBtn();">조회</button><br>
			   <input type="date" name="calender">
			   <input type="hidden" name="numOfRows">
			   <input type="hidden" name="pageNo">
			   <input type="hidden" name="pageSize">
			   <input type="hidden" name="startPage">
			   <input type="button" value="조회하기" onclick="joinBtn();" />
			
		</div>					
	
			<div class="modal fade" id="trainModal" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						<h4 class="modal-title" id="myModalLabel">역선택</h4>
					</div>
					<div class="modal-body"></div>
					<div class="modal-footer"></div>
				</div>
			</div>
		</div>

	<table class="table" id="timeList">
		<thead>
			<tr>
				<td>출발역</td>
				<td>출발시간</td>
				<td>도착역</td>
				<td>도착시간</td>
				<td>열차종류</td>
			</tr>
		</thead>	
		<tbody></tbody>
	</table>

	<script>
	
	function ff() {
		var aa = document.getElementById("ofr").disabled;
		if(aa.checked == true) {
			$.ajax({
				url : "http://localhost:8081/trainTime/trainTimeList",
				dataType : "json",
				type : "GET",
				success : function (result) {
					var html = "";
					for(var i = 0; i < result.length; i++) {
						var data = result[i];
						console.log(data.trainSaemaeul);
						if(data.trainSaemaeul > 0) {
							// 여기서 활성화
							html += "<table>";
							html += "<tr>";
							html += "<td><a href='#' onClick='stationFn(this)'>"
								+ data.stationTitle + "</a></td>";
						}
						else(data.trainSaemaeul < 0) {
							// 여기서 비활성화
							html += "<td><a href='#' onClick='stationFn(this)'>"+ data.stationTitle +"</a></td>";
							html += "</tr>";
							
						}
					}
					html += "</table>";
					$(".modal-body").html(html);
					
				}
			});
		}
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	$.ajax({
		url : "http://localhost:8081/trainTime/trainTimeList",
		dataType : "json",
		type : "GET",
		success : function(result) {
			var html = "";

			// 주요역
			html += "<table>";
			for (var i = 0; i < result.length; i++) {
				var data = result[i];
				if(data.trainSaemaeul > 0){
				console.log(data.trainSaemaeul); // 84개 1로 찍히고
					if(i % 4 == 0) {
					html += "<tr>";
					}
					html += "<td><a href='#' onClick='stationFn(this)'>"+ data.stationTitle +"</a></td>";
					if(i % 4 == 0) {
						
					html += "</tr>";
					}
				}
				
			}
			html += "</table>";
			$(".dd").html(html);

		},
		err : function() {
			alert("오류");
		}
	});
	
	$.ajax({
		url : "http://localhost:8081/trainTime/trainTimeList",
		dataType : "json",
		type : "GET",
		success : function(result) {
			var html = "";

			// 주요역
			html += "<table>";
			for (var i = 0; i < result.length; i++) {
				var data = result[i];
				if(data.trainNuriro > 0){
				console.log(data.trainNuriro); // 84개 1로 찍히고
					if(i % 4 == 0) {
					html += "<tr>";
					}
					html += "<td><a href='#' onClick='stationFn(this)'>"+ data.stationTitle +"</a></td>";
					if(i % 4 == 0) {
						
					html += "</tr>";
					}
				}
				
			}
			html += "</table>";
			$(".dd").html(html);

		},
		err : function() {
			alert("오류");
		}
	});
	
	</script>
</body>
</html>