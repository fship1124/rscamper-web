// 앵귤러 모듈
angular.module("myApp", [])
.controller('MyController', function($scope) {
	$scope.user = sessionStorageService.getObject("user");
})

// 왼쪽 메뉴에 액티브 효과주기
$(".list-group-item").removeClass("active");
$("#notification_menu").addClass("active");