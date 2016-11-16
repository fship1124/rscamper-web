// 앵귤러 모듈
angular.module("myApp", [])
.controller('MyController', function($scope, $http) {
	// 세션에서 유저정보 가져오기
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
	
	// 수정폼 모달 띄우기
	$scope.openProfileUpdateFormModal = function () {
		$('#updateProfileFormModal').modal('show')
	}
	
	// 프로필 수정 함수
	$scope.updateProfile = function () {
	    // 유효성 체크
	    if (!validCheckService("displayName", $scope.updateUser.displayName)) {return false;}
	    if (!validCheckService("phoneNumber", $scope.updateUser.phoneNumber)) {return false;}
	    if (!validCheckService("websiteUrl", $scope.updateUser.websiteUrl)) {return false;}
	    if (!validCheckService("introduce", $scope.updateUser.introduce)) {return false;}
	    if (!validCheckService("birthday", $scope.updateUser.birthday)) {return false;}
		
	    // DB에 업데이트
        $http({
            url: myConfig.serverUrl + "/user/update/oneUser",
            method: "POST",
            data: $.param({
                userUid: $scope.updateUser.uid,
                displayName: $scope.updateUser.displayName,
                birthday: $scope.updateUser.birthday,
                introduce: $scope.updateUser.introduce,
                phoneNumber: $scope.updateUser.phoneNumber,
                websiteUrl: $scope.updateUser.websiteUrl,
                locationNo: $scope.updateUser.locationNo,
                gender: $scope.updateUser.gender
            }),
            headers: {
                "Content-Type": "application/x-www-form-urlencoded; charset=UTF-8"
            }
        })
        .success(function () {
        	 $http({
                 url: myConfig.serverUrl + "/user/select/oneUser?userUid=" + $scope.user.userUid,
                 method: "GET"
             })
             .success(function (result) {
             	sessionStorageService.setObject("user", result);
             	$scope.user = sessionStorageService.getObject("user");
             	$('#updateProfileFormModal').modal('hide');
             });
        });
	}
	
	$scope.updateProfileImage = function () {
		
	}
	
	$scope.updateBackgroundImage = function () {
	}
})

// 성별 필터
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

// 제공업체 필터
.filter("provider", function() {
	return provider
	function provider (providerName) {
		switch (providerName) {
		case "twitter.com" :
			return "트위터"
		case "google.com" :
			return "구글"
		case "facebook.com" :
			return "페이스북"
		case "password" :
			return "이메일"
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

