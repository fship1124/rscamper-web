		jQuery(document).ready(function() {
			travelogList();
			
			/* 스마트에디터 */
			var editor_object = [];
		     
		    nhn.husky.EZCreator.createInIFrame({
		        oAppRef: editor_object,
		        elPlaceHolder: "smarteditor",
		        sSkinURI: "../../resources/se/SmartEditor2Skin.html", 
		        htParams : {
		            // 툴바 사용 여부 (true:사용/ false:사용하지 않음)
		            bUseToolbar : true,             
		            // 입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음)
		            bUseVerticalResizer : true,     
		            // 모드 탭(Editor | HTML | TEXT) 사용 여부 (true:사용/ false:사용하지 않음)
		            bUseModeChanger : true, 
		        }
		    });
		    
		    var page;
		    /*게시글 등록*/
		    $("#submit-btn").click(function () {
		    	var title = $("#title").val();
		    	var content = editor_object.getById['smarteditor'].getIR();
		    	var user = sessionStorageService.getObject("user");
				var uid = user.userUid;
				var categoryNo = 2;
				page = 1;
		    	console.log(title);		    	
		    	console.log(content);	
		    	console.log(uid);
		    	
		    	$.ajax ({
		    		type : "POST",
		    		url : myConfig.homeUrl + "/travelog/register",
		    		dataType : 'json',
		    		data : {
		    			"userUid" : uid,
		    			"title" : title,
		    			"content" : content,
		    			"categoryNo" : categoryNo,
		    			"page" : page
		    		},
		    		success : function(result) {
		    			travelogList();
		    			$('#myModal').modal('hide');
		    		}
		    	});
		    })
		    
		});
		
		/* 스마트에디터 */
		var oEditors = [];
		 nhn.husky.EZCreator.createInIFrame({
		 oAppRef: oEditors,
		 elPlaceHolder: "ir1",
		 sSkinURI: "../../resources/plugins/smartEditor/SmartEditor2Skin.html",
		 fCreator: "createSEditorInIFrame"
		});
		
		 
		 /* 여행기 게시 목록 */
		function travelogList(e) {
 			console.log("in travelogList")
 			console.log("e:" + e);
 			console.dir(e);
 			var obj = new Object();
 			obj.page = e;
//  			obj.categoryNo = 2;
 			
 			$.ajax({
				type : "GET",
				url : myConfig.homeUrl + "/travelog/list",
				dataType : 'json',
				data : obj,
				error : function (err) {
					alert("에러");
				},
				success : function(result) {
					console.dir(result);
					listCreate(result);
				}
 			})
 		}
		
		
 		$.ajax({
			type : "GET",
			url : myConfig.homeUrl + "/menu/list",
			dataType : 'json',
			error : function (err) {
				alert("에러");
			},
			success : function(result) {
//  				alert("성공");
				
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
				
				// 삽입 부분
					html += "<li class='dropdown' id='mypage' style='display: none;'>";
					html += "		<a href='javascript:void(0);' class='dropdown-toggle' data-toggle='dropdown' id='mypageTitle'>";
					html += "			마이페이지";
					html += "		</a>";
					html += "<ul class='dropdown-menu'>";
					html += "		<li><a href='javascript:void(0);'><i class='fa fa-bell'></i> 알림</a></li>";
					html += "		<li><a href='javascript:void(0);'><i class='fa fa-envelope-square'></i> 쪽지</a></li>";
					html += "		<li><a href='javascript:void(0);'><i class='fa fa-calendar'></i> 여행일정</a></li>";
					html += "		<li><a href='http://localhost:8081/post/home;'><i class='fa fa-pencil'></i> 포스트</a></li>";
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
							$("#ul-" + data.parentMenuNo).html($("#ul-" + data.parentMenuNo).html() + "<li><a href='" + data.url + "'>"+ data.title +"</a></li>");
						}
						else{
							$("#" + data.parentMenuNo).html($("#" + data.parentMenuNo).html() + "<ul class='dropdown-menu' id=ul-" + data.parentMenuNo + "><li><a href='" + data.url + "'>"+ data.title +"</a></li></ul>");
						}
					}
				}
			}
		});	
 		
 		function listCreate(data) {
 			console.dir(data);
 			var p = data.page;
 			var pageMaker = data.pageMaker;
 			page = pageMaker.endPage;
			
 			var list = $("tbody");
 			var html = "";
 			for (var i = 0; i < p.length; i++) {
 				var v = p[i];
 				var d = new Date(v.regDate);
 				var mon = d.getMonth() + 1;
 				html += "<tr>";
 				html += "<td>" + "" + "</td>";
 				html += "<td>" + v.categoryName + "</td>";
 				html += "<td>";
 				html += "<a href='http://localhost:8081/travelog/" + v.boardNo + "'>";
 				html += v.title + "</a>";
 				html += "<td>" + d.getFullYear() + "-" + prependZero(mon, 2) + "-" + prependZero(d.getDate(), 2) + " " + d.toLocaleTimeString() + "</td>";
 				html += "<td>" + v.viewCnt + "</td>";
 				html += "</tr>";
 			}
 			
 			list.html(html);
 			html = "";
 			
 			var pageination = $(".pagination");
 			console.dir(pageMaker.prev);
 			if (pageMaker.prev) {
				html += "<li class='page-item'>";
				html += "<a class='page-link' href='#' aria-label='Previous'>";
				html += "<span aria-hidden='true' onclick=previousNextFn('P') >&laquo;</span>";
				html += "<span class='sr-only'>Previous</span>";
				html += "</a>";
				html += "</li>";
			}

			for (var i = pageMaker.startPage; i <= pageMaker.endPage; i++) {
				html += "<li class='page-item'>";
				html += "<a href='#' onclick= travelogList(this.text)>" + i + "</a>";
				html += "</li>";
			}

			if (pageMaker.next && pageMaker.endPage > 0) {
				html += "<li class='page-item'>";
				html += "<a class='page-link' href='#' aria-label='Next'>";
				html += "<span aria-hidden='true' onclick=previousNextFn('N') >&raquo;</span>";
				html += "<span class='sr-only'>Next</span>";
				html += "</a>";
				html += "</li>";
			}
			pageination.html(html);
		}
 		
 		
 		
 		

		function prependZero(num, len) {
			while (num.toString().length < len) {
				num = "0" + num;
			}
			return num;
		}

		function previousNextFn(val) {
			console.log(val);
			console.log("page : " + page);

			if (val == 'N') {
				page = page + 1;
			} else {
				page = page - 19;
			}

			travelogList(page);
		}
 		
/*====  	Modal     ====*/
// 		$('#myModal').on('shown.bs.modal', function () {
// 			  $('#myInput').focus()
// 			})
		$('.bs-example-modal-lg').on('shown.bs.modal', function () {
			  $('#myInput').focus()
		});
		
		
			
			