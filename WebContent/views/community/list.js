// 앵귤러 모듈
angular.module("MypageApp")
.controller("ListController", function($rootScope, $scope, $http, MyConfig) {

	// 왼쪽 메뉴에 액티브 효과주기
    $(".list-group-item").removeClass("active");
    $("#bookmark_menu").addClass("active");
})


