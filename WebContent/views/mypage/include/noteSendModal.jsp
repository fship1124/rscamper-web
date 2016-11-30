<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div id="note_send" class="modal fade bs-example-modal-sm" tabindex="-1" role="dialog" style="top: 50px;">
	<div class="modal-dialog modal-sm" role="document">
		<div class="modal-content" style="width: 600px; height: 400px; ">
			<div class="modal-header">
				<button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
<!-- 				<label id="myLargeModalLabel3" class="modal-title">새 메시지</label> -->
				
					<img id="project-icon" src="${pageContext.request.contextPath}/resources/img/default/default-image.png"	class="ui-state-default" alt=""> 
					<input id="project"> 
					<input type="hidden" id="project-id">
					<p id="project-description"></p>
					
<!-- 					<input type="text" class="form-control" id="inputNoteSendUid" placeholder="받는 사람" style="width: 60%; display: inline-block;"> -->
<!-- 					<span class="glyphicon glyphicon-search form-control-feedback" aria-hidden="true" style="margin-right: 185px; margin-top: 15px;"></span> -->




				<div class="modal-body">
				<form id="profileImageUploadForm" class="sky-form">
					<fieldset style="padding-top: 5px;">
						<section>
							<div style="width: 500px; height: 200px; border: 1px solid tomato;">
								<input type="text" class="form-control" id="inputNoteSendTitle" placeholder="제목">
								<textarea class="form-control" id="inputNoteSendContent" rows="6" placeholder="내용" style="margin-top: 10px;"></textarea>
							</div>
						</section>
					</fieldset>
				</form>
			</div>
			
			<div class="modal-footer">
				<button type="button" class="btn-u btn-u-default" data-dismiss="modal">취소</button>
				<button type="button" class="btn-u" id="uploadNote">보내기</button>
			</div>
			</div>
		</div>
	</div>
</div>


