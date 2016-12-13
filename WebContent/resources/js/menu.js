var user;

// 메뉴 구성 함수
function menuCreate() {
	$.ajax({
		type : "GET",
		url : myConfig.serverURL + "/menu/list",
		dataType : 'json',
		error : function (err) {
			alert("에러");
		},
		success : function(result) {
			$("#start").empty();
			var html = "";
			for(var i = 0; i < result.length; i++) {
				var data = result[i];
				if(data.parentMenuNo == 0) {
					html += "<li class='dropdown' id="+ data.menuNo +">";
					html += 	"<a href='javascript:void(0);' class='dropdown-toggle' data-toggle='dropdown'>";
					html += data.title;
					html += "	</a>";
				}
			}
			
			html += "<li class='dropdown' id='mypage' style='display: none;'>";
			html += "	<a href='/rscamper-web/views/mypage/profile.jsp' class='dropdown-toggle' data-toggle='dropdown' id='mypageTitle'>마이페이지</a>";
			html += "<ul class='dropdown-menu'>";
			html += "	<li><a href='/rscamper-web/views/mypage/profile.jsp'><i class='fa fa-user'></i> 프로필</a></li>";
			html += "	<li><a href='/rscamper-web/views/mypage/notification.jsp'><i class='fa fa-bell'></i> 알림</a></li>";
			html += "	<li><a href='/rscamper-web/views/mypage/message.jsp'><i class='fa  fa-envelope'></i> 쪽지함</a></li>";
			html += "	<li><a href='/rscamper-web/views/mypage/mytourplan.jsp'><i class='fa fa-calendar'></i> 여행일정</a></li>";
			html += "	<li><a href='/rscamper-web/views/mypage/mypost.jsp'><i class='fa fa-pencil'></i> 포스트</a></li>";
			html += "	<li><a href='/rscamper-web/views/mypage/bookmark.jsp'><i class='fa fa-bookmark-o'></i> 북마크</a></li>";
			html += "	<li onclick='logout();'><a href='javascript:void(0);'><i class='fa fa-unlock'></i> 로그아웃</a></li>";
			html += "</ul>";
			html += "</li>";
				
			$("#start").html($("#start").html() + html);
			
			for (var i = 0; i < result.length; i++) {
				var data = result[i];
				if(data.parentMenuNo != 0) {
					if($("#" + data.parentMenuNo).find("ul").length > 0) {
						$("#ul-" + data.parentMenuNo).html($("#ul-" + data.parentMenuNo).html() + "<li><a href='" + data.url + "'>"+ data.title +"</a></li>");
					}
					else{
						$("#" + data.parentMenuNo).html($("#" + data.parentMenuNo).html() + "<ul class='dropdown-menu' id=ul-" + data.parentMenuNo + "><li><a href='" + data.url + "'>"+ data.title +"</a></li></ul>");
					}
				}
			}
		}
	});			
}

var notis_socket;


//////////////////////////////////////
// 헤더 알림 팝오버
$(document).ready(function() {
	user = sessionStorageService.getObject("user");
	/* 알림 */
	$('[data-toggle="popover"]').popover({
		html: true, 
		content:  function() {
	      return $('.last-noti-list').html();
	    }
	});

	console.log("user");
	console.dir(user);

	if (user) {
		var obj = new Object();
		obj.userUid = user.userUid;
		
		$.ajax({
			type : "GET",
			url : myConfig.homeUrl + "/notisfication/list",
			dataType : 'json',
			data : obj,
			error : function(err) {
//				alert("에러");
			},
			success : function(result) {
				console.log("알림 success");
				console.dir(result);
				
				$(".noti-count").html(result.length);
			}
		});
	} else {
		console.log("null");
	}
	

	
	/* Socket.IO */

	//nodejs 소켓 통신
	function notisSocketIo() {
//		var user = sessionStorageService.getObject("user");
		console.log("in notis socketIo");
		
		// 소켓서버에 접속
		notis_socket = io("http://192.168.0.173:10002");
		notis_socket.emit("notis", user.userUid);
		
		
		notis_socket.on("notification", function(data) {
			console.log("in notification");
//			alert("알림");
			
			console.log(data.message);
			console.log(data.count);
			
			$.toast({
			    heading: 'Information',
			    text: data.message,
			    icon: 'info',
			    loader: true,        // Change it to false to disable loader
			    loaderBg: '#9EC600'  // To change the background
			})
			
			$(".noti-count").html(data.count);
		});
	};

	// 소켓 실행
	notisSocketIo();
});



// 알림 닫기 
$('body').on('click', function (e) {
    //did not click a popover toggle or popover
    if ($(e.target).data('toggle') !== 'popover'
        && $(e.target).parents('.popover.in').length === 0) { 
        $('[data-toggle="popover"]').popover('hide');
    }
});

// 알림 닫기 이벤트
var hideAllPopovers = function() {
    $('[data-toggle="popover"]').each(function() {
         $(this).popover('hide');
    });  
};

// 알림 클릭 -> 페이지 이동
function pageMove(e) {
//	alert("ee");
	console.log("페이지 이동 메서드");
	console.dir(e);
	
	var obj = new Object();
	console.log(e.dataset.no);
	
	$.ajax({
		type : "DELETE",
		url : "http://localhost:8081/notisfication/delete/" + e.dataset.no,
		dataType : 'json',
		error : function(err) {
//			alert("에러");
		},
		success : function(result) {
			console.log("삭제 success");
			window.location.href = e.dataset.url;
		}
	});
}
// End 헤더 알림 팝오버
//////////////////////////////////////



// 알림 클릭
$('[data-toggle="popover"]').on('click', function() {
	console.log("알림 클릭");
	
	if (user) {
		console.log("user 확인");
		var obj = new Object();
		obj.userUid = user.userUid;
		$.ajax({
			type : "GET",
			url : "http://localhost:8081/notisfication/list",
			dataType : 'json',
			data : obj,
			error : function(err) {
//				alert("에러");
			},
			success : function(result) {
				console.log("알림 success");
				console.dir(result);
				
				notisficationList(result);
			}
		});
	} else {
		console.log("null");
	}
});


// 알림 리스트 만들기
function notisficationList(data) {
	var html = "";
	for (var i = 0; i < data.length; i++) {
		var item = data[i];
		
		html += "<li data-id='05dd80646296182b' data-url= " + item.url + " data-no=" + item.notisficationNo + " data-type='8' data-link-key='d3358b3b6597e8ca'";
		html += "onclick=pageMove(this)>";
		html += "<div></div>";
		html += "<div class='noti-img-wrap'><img src=" + item.photoUrl + "></div>";
		html += "<div class='noti-contents'>";
		html += "<h5><i class='fa comment'></i> <span><span style='color:#ff8000;'>" + item.displayName + "</span>";
		html += "님이 <span style='color:#ff8000;'>" + item.title +  "</span>" + item.codeName + "</span>";
		html += "<span class='noti-new'>N</span></h5>";
		html += "<p class='date'>" + item.date + "</p>";
		if (item.message) {
			html += "<p>" + item.message + "</p>";
		}
		html += "</div>";
		html += "</li>";
	}
	
	$("#my-notice-list").html(html);
}
