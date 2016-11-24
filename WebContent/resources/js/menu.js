// 메뉴 구성 함수
function menuCreate() {
	$.ajax({
		type : "GET",
		url : myConfig.serverUrl + "/menu/list",
		dataType : 'json',
		error : function (err) {
			alert("에러");
		},
		success : function(result) {
//			console.dir(result);
			
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
				
				// 검색창 일단 보류
//				html += "<li><i class='search fa fa-search search-btn'></i>";
//				html +=	"<div class='search-open'>";
//				html +=	"	<div class='input-group animated fadeInDown'>";
//				html +=	"		<input type='text' class='form-control' placeholder='Search'>";
//				html +=	"		<span class='input-group-btn'>";
//				html +=	"			<button class='btn-u' type='button'>Go</button>";
//				html +=	"		</span>";
//				html +=	"	</div>";
//				html += "</div></li>";
				
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

