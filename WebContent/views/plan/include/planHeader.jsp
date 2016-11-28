<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<link rel="stylesheet" href="include/planHeader.css">
<div class="parallax-quote parallaxBg" style="background-image:url('{{tourPlan.filePath}}');">
	<div class="container">
		<div class="parallax-quote-in">
			<h1 style="color: white; font-size: 40px;" ng-bind="tourPlan.title"></h1>
			<h5 style="color: white;" ng-bind="tourPlan.period"></h5>
			<button class="btn-u btn-u-light-green" ng-click="changeTourPlanBGImage();">배경화면 바꾸기</button>
		</div>
	</div>
</div>