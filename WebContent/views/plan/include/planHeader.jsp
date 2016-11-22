<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<link rel="stylesheet" href="include/planHeader.css">
<div class="parallax-quote parallaxBg" style="background-image:url('${pageContext.request.contextPath}/resources/img/default/train.jpg');">
	<div class="container">
		<div class="parallax-quote-in">
			<h1 style="color: white; font-size: 40px;" ng-bind="title">호동이의 부산여행</h1>
			<h5 style="color: white;" >2박 3일</h5>
			<button class="btn-u btn-u-light-green" ng-click="updateTourPlanBGImage();">배경화면 바꾸기</button>
		</div>
	</div>
</div>