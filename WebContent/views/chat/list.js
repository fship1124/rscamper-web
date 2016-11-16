

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
	
	$.ajax({
		url : 'http://localhost:8081/chat/room_list',
		method : 'GET',
		dataType : 'json',
		success : function(result) {
			console.dir(result);
			listRoomCreate(result);
		}
	});
}

chat_room_list();

function listRoomCreate(data) {
	var room_list = $("#room-list");
	
	var html = "";
	
	for (var i = 0; i < data.length; i++) {
		console.log(i);
		var item = data[i];
		html += "<tr><td>";
		html += item.areaName
		html += "</td><td class='room-name' style='width: 60%'>";
		html += item.chatRoomName;
		html += "</td><td>";
		html += item.roomUserCnt;
		html += "</td>";
		html += "<td><button type='button' data-loc=";
		html += item.areacode;
		html += " data-tle= '";
		html += item.chatRoomName;
		html += "' data-room=";
		html += item.chatRoomInfoNo;
		html += " onclick='intoRoom(this)'>입장</button></td></tr>";
	}
	
	room_list.html(html);
}


	$("#createRoomBtn").click(function() {
		var locationVal =  $("select[name=locationid]").val();
		var inputRoomTitle = $("#inputRoomTitle").val();
		
		window.location = "http://localhost:8081/chat/detail?room=" + room + "&location=" + locationVal + "&title=" + inputRoomTitle;
	});
	
	
	function intoRoom(e) {
		console.dir(e);
		console.log(e.getAttribute("data-loc"));
		console.log(e.getAttribute("data-tle"));
		console.log(e.getAttribute("data-room"));
		
		console.dir($(e).parent().siblings());
		console.log($(e).parent().siblings(".room-name").text());
		
		var room_name = $(e).parent().siblings(".room-name").text();
		
		var obj = new Object();
		
		obj.userUid = user.userUid;
		obj.chatRoomInfoNo = e.getAttribute("data-loc");
		
		console.log(obj.userUid);
		console.log(obj.chatRoomInfoNo);
		alert(obj.chatRoomInfoNo);
		
		$.ajax({
			url : 'http://localhost:8081/chat/insert_user',
			method : 'POST',
			dataType : 'json',
			data : obj,
			success : function(result) {
				console.dir(result);
				window.location = "http://localhost:8081/chat/detail?room=" + e.getAttribute("data-room") + "&location=" + e.getAttribute("data-loc") + "&title=" + e.getAttribute("data-tle");
			}
		});
	}
		
		
		
 		