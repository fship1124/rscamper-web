	
	var name = 'test';
    var room = "";

	function roomHeadHandler(obj) {
		console.log(obj.loc);
		console.log(obj.title);
		console.log(obj.room);
		
		room = obj.room;
		
		$(".locationName").html(obj.loc);
		$(".roomTitle").html(obj.title);
	}
	
		
	function socketIo() {
		// 소켓서버에 접속
		var socket = io("http://192.168.0.173:10001");
		
		 socket.on('connection', function(data) {
             if (data.type == 'connected') {
             	 console.log("connected");
                 socket.emit('connection', {
                     type : 'join',
                     name : name,
                     room : room
                 });
                 socket.emit('room', {
                     room : room
                 });
             }
         });
		
		 socket.on('system', function(data) {
// 				 alert("서버에서 전송된 데이터 : " + data.message);
			 $("#msg-content").append(data.message + "<br>");
         });
		 
		 socket.on('message', function(data) {
			 alert("서버에서 전송된 데이터 : " + data.message);
			 $("#msg-content").append(data.message + "<br>");
         });
		 
		 

		$("#msg-btn").click(function() {
			// id가 msg 인 텍스트 창에 입력된 데이터를 소켓서버에 전송
			console.log("서버로 전송함");
			//	 				socket.emit("msg", $("#msg").val());
			
			
			$("#msg-content").append($("#msg").val() + "<br>");
			socket.emit("user", {
				name : name,
				message : $("#msg").val()
			});
		});
	}

		
		
		socketIo();		