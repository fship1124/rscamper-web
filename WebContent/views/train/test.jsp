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
	<script>
	$.ajax({
		url : "http://localhost:8081/trainTime/time",
		type : "GET",
		dataType : 'json',
		err : function() {
			console.log(err);
		},
		success : function(data) {
			for (var i = 0; i < data.length; i++) {
				console.log(data);
				var result = data[i];

			}
		}
	});
	</script>
</body>
</html>