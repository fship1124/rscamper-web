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
	<div id="trainTime">
	
	</div>
	
	<div id="trainTime2">
	
	</div>
	<script>
		$.ajax({
			url : "http://localhost:8081/train/test",
			dataType : "json",
			type : "GET",
			success : function(result) {
				var html = "";
				html += "<table>";
				for (var i = 0; i < result.length; i++) {
					var data = result[i];
					if (data.stationVital > 0) {
						if (i % 5 == 0) {
							html += "<tr>";
//							console.log(data.stationTitle);
						}
						html += "<td><a href='#' onClick='stationFn(this)'>" + data.stationTitle + "</a></td>";
						
// 						html += "<td>" + data.stationTitle + "</td>";
						if (i % 5 == 4) {
							html += "</tr>";
						}
					}
				}
				html += "</table>";
				$("#trainTime").html(html);
				
				html += "<ul>";
				html += "<li><a href='#'>가</a></li>";
				html += "<li><a href='#'>나</a></li>";
				html += "<li><a href='#'>다</a></li>";
				html += "<li><a href='#'>라</a></li>";
				html += "<li><a href='#'>마</a></li>";
				html += "<li><a href='#'>바</a></li>";
				html += "<li><a href='#'>사</a></li>";
				html += "<li><a href='#'>아</a></li>";
				html += "<li><a href='#'>자</a></li>";
				html += "<li><a href='#'>차</a></li>";
				html += "<li><a href='#'>카</a></li>";
				html += "<li><a href='#'>타</a></li>";
				html += "<li><a href='#'>파</a></li>";
				html += "<li><a href='#'>하</a></li>";
				html += "</ul>";
				
				html += "<table>";
				for(var j = 0; j < result.length; j ++) {
					var data = result[j];
					if(data.stationVital == 0){
//						console.log(data.stationTitle); 들어왓고
						if(j % 5 == 0) {
							html += "<tr>";
						}
						html += "<td><a href='#' onClick='stationFn(this)'>" + data.stationTitle + "</a></td>";
						
						if(j % 5 == 4){
							html += "</tr>";
						}
					}
				}
				html += "</table>";
				$("#trainTime2").html(html);
			},
			err : function() {
				alert("오류");
			}
		});
		function stationFn(ee) {
			alert(ee.text);
			var url = "http://localhost:80/rscamper-web/views/train/test.jsp?stationValues=" + ee.text;
			$(ee).attr('href', url);
		}
	</script>

</body>
</html>