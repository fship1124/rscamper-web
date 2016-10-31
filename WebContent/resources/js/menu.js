		function menuCreate() {
			$.ajax({
				type : "GET",
				url : "http://localhost:8081/menu/list",
				dataType : 'json',
				error : function (err) {
					alert("에러");
				},
				success : function(result) {
					console.dir(result);
					
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
						html += "		<a href='javascript:void(0);' class='dropdown-toggle' data-toggle='dropdown' id='mypageTitle'>";
						html += "			마이페이지";
						html += "		</a>";
						html += "<ul class='dropdown-menu'>";
						html += "		<li><a href='javascript:void(0);'><i class='fa fa-bell'></i> 알림</a></li>";
						html += "		<li><a href='javascript:void(0);'><i class='fa fa-envelope-square'></i> 쪽지</a></li>";
						html += "		<li><a href='javascript:void(0);'><i class='fa fa-calendar'></i> 여행일정</a></li>";
						html += "		<li><a href='javascript:void(0);'><i class='fa fa-pencil'></i> 포스트</a></li>";
						html += "<li class='dropdown-submenu'>";
						html += "	<a href='javascript:void(0);''><i class='fa fa-cog'></i> 회원정보변경</a>";
						html += "	<ul class='dropdown-menu'>";
						html += "		<li><a href='#'><i class='fa fa-user'></i> 프로필수정</a></li>";
						html += "		<li><a href='#'><i class='fa fa-lock'></i> 비밀번호변경</a></li>";
						html += "		<li><a href='#'><i class='fa fa-bell'></i> 알림설정</a></li>";
						html += "		<li><a href='#'><i class='fa fa-unlock'></i> 회원탈퇴</a></li>";
						html += "	</ul>";
						html += "</li>";
						html += "<li onclick='signout();'><a href='javascript:void(0);'><i class='fa fa-unlock'></i> 로그아웃</a></li>";
						html += "</ul>";
						html += "</li>";
						
					$("#start").html($("#start").html() + html);
					
					
					
					for (var i = 0; i < result.length; i++) {
						var data = result[i];
						if(data.parentMenuNo != 0) {
							if($("#" + data.parentMenuNo).find("ul").length > 0) {
								console.dir(data);
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
 		