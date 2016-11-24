<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- 회원정보수정 모달 -->
<div id="detailTourSpotModal" class="modal fade" tabindex="-1" role="dialog" style="top: 50px;">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-body">
				<p><span>카테고리 : </span><span ng-bind="detailTourSpot.contenttypeid | tourSpotCategory"></span></p>
				<p><span></span><strong><span ng-bind="detailTourSpot.title" style=""></span></strong></p>
				<p><span>주소 : </span><span ng-bind="detailTourSpot.addr1"></span></p>
				<p><span>X좌표 : </span><span ng-bind="detailTourSpot.mapx"></span></p>
				<p><span>Y좌표 : </span><span ng-bind="detailTourSpot.mapy"></span></p>
				<p><span></span><img src="{{detailTourSpot.firstimage}}" style="width: 100%;"></p>
			</div>
		</div>
	</div>
</div>
