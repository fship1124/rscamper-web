// 앵귤러 모듈
angular.module("myApp", [])
.controller('ProfileController', function($scope) {
	$scope.user = sessionStorageService.getObject("user");

	// 수정 모달에 올라갈 현재 프로필 정보 세팅
	getLocationList(function (result) {
		$scope.locations = result;
		$scope.updateUser = {
			uid : $scope.user.userUid,
			displayName : $scope.user.displayName,
			birthday : new Date($scope.user.birthday),
			introduce : $scope.user.introduce,
			phoneNumber : $scope.user.phoneNumber,
			websiteUrl : $scope.user.websiteUrl,
			locationNo : $scope.user.locationNo,
			gender : $scope.user.gender
		};
	});
	
	// 수정폼 띄우기
	$scope.openProfileUpdateFormModal = function() {
		// 모달 오픈
		$('#updateProfileFormModal').modal('show')
	}
	
	$scope.updateProfile = function() {
	    // 유효성 체크
	    if (!validCheckService("displayName", $scope.updateUser.displayName)) {return false;}
	    if (!validCheckService("phoneNumber", $scope.updateUser.phoneNumber)) {return false;}
	    if (!validCheckService("websiteUrl", $scope.updateUser.websiteUrl)) {return false;}
	    if (!validCheckService("introduce", $scope.updateUser.introduce)) {return false;}
	    if (!validCheckService("birthday", $scope.updateUser.birthday)) {return false;}
		
//	    console.log($scope.updateUser);
	    
	    // DB에 업데이트
	    updateAccount($scope.updateUser, function (result) {
	    	// 성공시 session에 유저정보를 새로 집어 넣어주고
	    	$.ajax({
        		type: "GET",
        		url: myConfig.serverUrl + "/user/select/oneUser?userUid=" + $scope.user.userUid,
        		dataType : 'json',
        	    error : function(err) {
        		},
        		success : function(result) {
        			sessionStorageService.setObject('user', result);
        			$scope.user = result;
        		}
        	});
	    	$('#updateProfileFormModal').modal('hide')
	    });
	    
	}
	
	$scope.updateProfileImage = function () {
		alert("프로필사진");
	}
	
	
	$scope.updateBackgroundImage = function () {
		alert("배경사진");
	}
})

.filter("gender", function() {
	return gender
	function gender (gen) {
		if (gen == "m") {
			return "남자";
		} else if (gen == "f") {
			return "여자";
		}
	}
})

// 시작 메소드
jQuery(document).ready(function() {
	Masking.initMasking();
	Datepicker.initDatepicker();
	Validation.initValidation();
	
	// 왼쪽 메뉴에 액티브 효과주기
	$(".list-group-item").removeClass("active");
	$("#profile_menu").addClass("active");
});

