// 앵귤러 모듈
angular.module("myApp", [])
.controller('ProfileController', function($scope, $http) {
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
	};
	
	$scope.updateProfile = function() {
	    // 유효성 체크
	    if (!validCheckService("displayName", $scope.updateUser.displayName)) {return false;}
	    if (!validCheckService("phoneNumber", $scope.updateUser.phoneNumber)) {return false;}
	    if (!validCheckService("websiteUrl", $scope.updateUser.websiteUrl)) {return false;}
	    if (!validCheckService("introduce", $scope.updateUser.introduce)) {return false;}
	    if (!validCheckService("birthday", $scope.updateUser.birthday)) {return false;}
		
	    // DB에 업데이트
	    updateAccount($scope.updateUser, function (result) {
	    	$http({
	    		url: myConfig.serverUrl + "/user/select/oneUser?userUid=" + $scope.user.userUid,
	    		method: "GET"
	    	}).success(function (result) {
    			sessionStorageService.setObject('user', result);
    			$scope.user = result;
	    	}).error(function (error) {
	    		console.log(error)
	    	}).finally(function() {
	    		$('#updateProfileFormModal').modal('hide')
			})
	    });
	};

	
	$scope.updateProfileImage = function () {
		alert("프로필사진");
	};
	
	$scope.updateBackgroundImage = function () {
		alert("배경사진");
	}
	
	// TODO : 업로드 이미지 정보 DB에 넣기
	$scope.updateImageDB = function (userPhoto, successCB) {
	    $http({
	    	url: myConfig.serverUrl + "/user/update/profileImage",
	    	method: "POST",
	    	data: $.param({
	    		userUid: userPhoto.userUid,
		        type: userPhoto.type,
		        path: userPhoto.path,
		        size: userPhoto.size
		    }),
		    headers: {
		      "Content-Type": "application/x-www-form-urlencoded; charset=UTF-8"
		    }
	    }).success(successCB);
	}
	
	// TODO : 이미지업로드
	$scope.uploadImage = function () {
		
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

