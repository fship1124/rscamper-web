

var user = sessionStorageService.getObject("user");

var chatRoomInfoNo = "";

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
		url : myConfig.imsiServerUrl + '/chat/room_list',
		method : 'GET',
		dataType : 'json',
		success : function(result) {
			listRoomCreate(result);
		}
	});
}
chat_room_list();


function listRoomCreate(data) {
	var room_list = $("#room-list");
	
	var html = "";
	
	for (var i = 0; i < data.length; i++) {
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


// 방 생성
$("#createRoomBtn").click(function() {
	var obj = new Object();
	obj.areacode =  $("select[name=locationid]").val();
	obj.chatRoomName = $("#inputRoomTitle").val();
	obj.userUid = user.userUid;
	
	console.log(obj.areacode);
	console.log(obj.chatRoomName);
	console.log(obj.userUid);
	
	// 1. 방 생성 -> 디비 입력 -> 디비 방 정보 가져오기
	$.ajax({
		url : myConfig.imsiServerUrl + '/chat/detail',
		method : 'POST',
		dataType : 'json',
		data : obj,
		success : function(result) {
			alert("success");
			console.dir(result);
			
			var userObj = new Object();
			
			console.log(result);
			
			var s1 = result.split("&");
			console.log(s1[3]);
			
			var s2 = s1[3].split("=");
			console.log(s2[1]);
			
			
			console.log(user.userUid);
			userObj.userUid = user.userUid;
			userObj.chatRoomInfoNo = s2[1];
			$.ajax({
				url : myConfig.imsiServerUrl + '/chat/insert_user',
				method : 'POST',
				dataType : 'json',
				data : userObj,
				success : function() {
					alert("insert seccess");
					window.location = myConfig.imsiServerUrl + '/chat/detail?room=' + userObj.chatRoomInfoNo + "&location=" + obj.areacode + "&title=" + obj.chatRoomName;
				}
			});
		}
	})
});
	
	
function intoRoom(e) {
	var room_name = $(e).parent().siblings(".room-name").text();
	var obj = new Object();
	
	obj.userUid = user.userUid;
	obj.chatRoomInfoNo = e.getAttribute("data-room");
	chatRoomInfoNo = obj.chatRoomInfoNo; 
	
	$.ajax({
		url : myConfig.imsiServerUrl + '/chat/insert_user',
		method : 'POST',
		dataType : 'json',
		data : obj,
		success : function(result) {
			window.location = myConfig.imsiServerUrl + '/chat/detail?room=' + e.getAttribute("data-room") + "&location=" + e.getAttribute("data-loc") + "&title=" + e.getAttribute("data-tle");
		}
	});
}
		
		
 		