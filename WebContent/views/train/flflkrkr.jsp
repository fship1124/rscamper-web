%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="../../assets/js/jquery-3.1.1.min.js"></script>
</head>
<body>
	<input type="checkbox" onclick="check(this);">
	<div id="check_a">
		<table>
			<tr>
				<td>ㅎㅇㅎㅇㅎㅇㅎㅇ?</td>
			</tr>
		</table>
	</div>
	<script>

		function check(i) {
			if (i.checked == true) {
				document.getElementById('check_a').style.display = "block";
			} else {
				document.getElementById('check_a').style.display = "none";
			}
		}
	</script>
</body>
</html>