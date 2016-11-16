

var user = sessionStorageService.getObject("user");
	console.dir(user);
	console.log(user);

if (user == null) {
	  var $form_modal = $('.cd-user-modal'), $form_login = $form_modal
			.find('#cd-login'), $form_signup = $form_modal.find('#cd-signup'), $form_forgot_password = $form_modal
			.find('#cd-reset-password'), $form_modal_tab = $('.cd-switcher'), $tab_login = $form_modal_tab
			.children('li').eq(0).children('a'), $tab_signup = $form_modal_tab
			.children('li').eq(1).children('a'), $forgot_password_link = $form_login
			.find('.cd-form-bottom-message a'), $back_to_login_link = $form_forgot_password
			.find('.cd-form-bottom-message a');

	$form_modal.addClass("is-visible");

	$form_login.removeClass('is-selected');
	$form_signup.addClass('is-selected');
	$form_forgot_password.removeClass('is-selected');
	$tab_login.removeClass('selected');
	$tab_signup.addClass('selected');
}



function chat_room_list() {
	var room_list = $("#room-list");
	
	$.ajax({
		url : 'http://localhost:8081/main/room_list',
		method : 'GET',
		dataType : 'json',
		success : function(result) {
			console.dir(result);
		}
	});
}

chat_room_list();


		$("#createRoomBtn").click(function() {
			var locationVal =  $("select[name=locationid]").val();
			var inputRoomTitle = $("#inputRoomTitle").val();
			
// 			room++;
// 			var roomList = $("#room-list");
// 			var html = "";
// 			html += "<tr><td>";
// 			html += locationVal;
// 			html += "</td><td style='width: 80%'>";
// 			html += inputRoomTitle;
// 			html += "</td><td><button type='button' id='in-room'>입장</button></td></tr>";

// 			roomList.html(roomList.html() + html);
			
			window.location = "http://localhost:8081/chat/detail?room=" + room + "&location=" + locationVal + "&title=" + inputRoomTitle;
		});
		
		function intoRoom(e) {
			console.dir(e);
			console.log(e.getAttribute("data-loc"));
			console.log(e.getAttribute("data-tle"));
			console.log(e.getAttribute("data-room"));
			
			window.location = "http://localhost:8081/chat/detail?room=" + e.getAttribute("data-room") + "&location=" + e.getAttribute("data-loc") + "&title=" + e.getAttribute("data-tle");
		}
		
		
		
		
		
		
		
 		