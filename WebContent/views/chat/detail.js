	console.log(myConfig.imsiServerUrl);
    
    var user = sessionStorageService.getObject("user");
    var room = "";
    
    
	function listUser(room) {
		var user_cnt = $("#chat-user-cnt");
		var user_info = $("#chat-user-info");
		
		var obj = new Object();
		obj.roomNo = room;
		
		$.ajax({
			url : myConfig.imsiServerUrl + '/chat/list_user',
			method : 'GET',
			dataType : 'json',
			data : obj,
			success : function(result) {
				user_info.html("");
				console.dir(result);
				user_cnt.html(user_cnt.html() + " " + result.length + " 명")
				
				html = "";
				for (var i = 0; i < result.length; i++) {
					var item = result[i];
					html += item.displayName + "<br>";
				}
				user_info.html(html);
			}
		});
	}
    
	
	function roomHeadHandler(obj) {
		console.log(obj.loc);
		console.log(obj.title);
		console.log(obj.room);
		
		room = obj.loc;
		
		$(".locationName").html(obj.room);
		$(".roomTitle").html(obj.title);
		listUser(room);
	}
	
	
	
	
