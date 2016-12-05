<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="../../assets/js/jquery-3.1.1.min.js"></script>
<style type="text/css">
.sky-form .radio input:checked + i:after, .sky-form .checkbox input:checked + i:after {
    opacity: 1;
}
.sky-form .radio input + i:after {
    top: 5px;
    left: 5px;
    background-color: #999;
}

.sky-form .radio input + i:after {
    background-color: #2da5da;
}

.sky-form .radio input + i:after {
    content: '';
    top: 4px;
    left: 4px;
    width: 5px;
    height: 5px;
    border-radius: 50%;
}

.sky-form .radio input + i:after, .sky-form .checkbox input + i:after {
    position: absolute;
    opacity: 0;
    -ms-transition: opacity 0.1s;
    -moz-transition: opacity 0.1s;
    -webkit-transition: opacity 0.1s;
}

:after, :before {
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box;
}
</style>
</head>
<body>
	<form action="#" class="sky-form">
	<fieldset>
	<section>
	<label class="label">inline radios</label>
	<div class="inline-group">
		<label class="radio"> 
			<input type="radio" name="radio-inline">
				<i class="rounded-x">::after</i> "eeee"
		</label> 
		<label class="radio"> 
			<input type="radio" name="radio">
				i class="rounded-x">::after</i>"tttt"
		</label> 
		<label class="radio"> 
			<input type="radio" name="radio">
				<i class="rounded-x">::after</i>
			"bbbb"
		</label>
	</div>
	</section>
	</fieldset>
	</form>
</body>
</html>