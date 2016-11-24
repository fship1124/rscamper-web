	console.log(myConfig.imsiServerUrl);
    var user = sessionStorageService.getObject("user");
    
    
    
    
    
    /** ===========프로필 이미지 관련============================ */
	// 프로필 사진 업로드 이미지 미리보기 이벤트
	$('#profileImageFile').on('change', function(){
		if(img_validation(this)) {
			readURL(this, $('#profileImage'));
		} else {
			$(this).val("");
			$('#profileImage').attr('src', '/rscamper-web/resources/img/default/default-image.png');
		};
	});
	// 프로필 사진 변경 모달창 열기
	var updateProfileImage = function () {
		$scope.uploadProfileUrl = myConfig.serverUrl + "/user/upload/profileImage"
		$("#profileImage").val("");
		$("#profileImageFile").val("");
		$('#profileImageUploadFormModal').modal('show');
	};
	// 프로필 업로드 완료 콜백
	var uploadProfileCallBack = function (result) {
        var data = JSON.parse(result);
        var userPhoto = {
          userUid: user.userUid,
          type: data.type,
          path: data.path,
          size: data.size
        }
        updateImage(userPhoto, "/user/update/profileImage")
	};
	
	
	// 사진 데이터베이스 업데이트
    $scope.updateImage = function (userPhoto, url) {
        $.ajax({
          url: myConfig.serverUrl + url,
          type: "POST",
          data: {
            userUid: userPhoto.userUid,
            type: userPhoto.type,
            path: userPhoto.path,
            size: userPhoto.size
          },
          success : function(result) {
        	  $.ajax({
                  url: myConfig.serverUrl + "/user/select/oneUser?userUid=" + user.userUid,
                  type: "GET",
              success : function (result) {
              	sessionStorageService.setObject("user", result);
              	user = sessionStorageService.getObject("user");
         		$("#profileImage").attr("src", "/rscamper-web/resources/img/default/default-image.png");
         		$("#profileImageFile").val("");
         		$('#profileImageUploadFormModal').modal('hide');
              }
    	  });
          }
        });
    	}
    
    
    
    
    
    
    
    
    
    
    
	function listUser(obj) {
		console.log("in listUser");
		var user_cnt = $("#chat-user-cnt");
		var user_info = $("#chat-user-info");

		console.log("방 번호 : " + obj.roomNo);
		var obj2 = new Object();
		obj2.roomNo = obj.roomNo;
		
		$.ajax({
			url : myConfig.imsiServerUrl + '/chat/list_user',
			method : 'GET',
			dataType : 'json',
			data : obj2,
			success : function(result) {
				user_info.html("");
				console.dir(result);
				user_cnt.html("접속자 " + result.length + " 명");
				user_cnt.attr("data-cnt", result.length);
				
				console.dir(user_cnt);
//				alert(user_cnt[0].dataset.cnt);
				
				var html = "";
				
				for (var i = 0; i < result.length; i++) {
					var item = result[i];
					html += "<div class='dropdown'>";
					html += "<span class='dropbtn' id=" + item.userUid + ">" + item.displayName + "</span>";
					html += "<div class='dropdown-content'>";
					html += "<a href='#'>프로필</a>";
					html += "<a href='#' data-target='#layerpop' data-toggle='modal'>대화명 변경</a>";
					html += "<a href='#' onclick='updateProfileImage();'>사진 변경</a>";
					html += "</div>";
					html += "</div>";
					html += "<br>";
				}
				
				user_info.html(html);
			}
		});
	}
    
	
	function roomHeadHandler(obj) {
		console.log("in roomHeadHandler");
		console.log("지역번호 : " + obj.loc);
		console.log("제목 : " + obj.title);
		console.log("지역 : " + obj.room);
		console.log("방 번호 : " + obj.roomNo);
		
		
		$(".locationName").html("지역 : " + obj.room);
		$(".roomTitle").html("방제목 : " + obj.title);
		listUser(obj);
	}
	
	
	function nickNameMod() {
		
		var nick = $("#nickname");
		alert(nick.val());
		
		console.log(nick.val());
		console.log(user.userUid);
		$("#" + user.userUid).text(nick.val());
		userName = nick.val();
	}
	
	
	function on_key_down() {
		console.log(event.keyCode);
		
		if (event.keyCode == 13) {
			$("#msg-btn").trigger("click");
		}
	}
	
