// 앵귤러 모듈
angular.module("CommunityApp")
.controller("ListController", function($rootScope, $scope, $http, MyConfig) {

	// 카테고리 변경 이벤트
	$scope.addActiveCategoryMenu = function (e) {
		var eventTarget = $(e.currentTarget)
		$(".list-group-item").removeClass("active");
		eventTarget.addClass("active");
		
		$scope.boardParam = {
			page: 0,
			count: 10,
			categoryNo: 0
		};
		
		switch(eventTarget.attr("id")) {
			case "all_board":
				$scope.boardParam.categoryNo = 0;
				break;
			case "tour_board":
				$scope.boardParam.categoryNo = 2;
				break;
			case "free_board":
				$scope.boardParam.categoryNo = 1;
				break;
			case "qna_board":
				$scope.boardParam.categoryNo = 5;
				break;
			case "information_board":
				$scope.boardParam.categoryNo = 3;
				break;
			case "review_board":
				$scope.boardParam.categoryNo = 4;
				break;
		}
		$scope.boardList = [];
	    $scope.getBoardList();
	}

    // 게시판 리스트 불러오기
    $scope.getBoardList = function () {
      $scope.boardParam.page++;

      // 카테고리가 있는지 없는지 판단
      if (!$scope.boardParam.categoryNo == 0) {
        var url = MyConfig.backEndURL + "/community/select/boardByCategory?page=" + $scope.boardParam.page + "&count=" + $scope.boardParam.count + "&categoryNo=" + $scope.boardParam.categoryNo;
      } else {
        var url = MyConfig.backEndURL + "/community/select/board?page=" + $scope.boardParam.page + "&count=" + $scope.boardParam.count;
      }
      $http({
        url: url,
        method: "GET"
      })
      .success(function (response) {
    	  console.log(response)
        angular.forEach(response.boardList, function (board) {
          $scope.boardList.push(board);
        })
        $scope.total = response.totalPages;
      })
      .error(function (error) {
    	  swal("에러", error, "error");
      })
    };
	
	$scope.boardParam = {
		page: 0,
		count: 10,
		categoryNo: 0
	};
	$scope.boardList = [];
    $scope.getBoardList();
    
	
    // 좋아요
    $scope.likeBoard = function (boardNo, index) {
      $http({
        url: MyConfig.backEndURL + "/community/like",
        method: "POST",
        data: $.param({
          targetNo: boardNo,
          targetType: 1,
          userUid: $rootScope.user.userUid
        }),
        headers: { "Content-Type": "application/x-www-form-urlencoded; charset=UTF-8" }
      }).success(function (response) {
        if (response == true) {
          $scope.boardList[index].likeCnt--;
        } else {
          $scope.boardList[index].likeCnt++;
        }
      }).error(function (error) {
        swal("에러", error, "error");
      })
    };
    
    
    // 북마크 추가 삭제
    $scope.bookmarkBoard = function (boardNo, index) {
      $http({
        url: MyConfig.backEndURL + "/community/bookMark",
        method: "POST",
        data: $.param({
           targetNo: boardNo,
           targetType: 1,
           userUid: $rootScope.user.userUid
        }),
        headers: { "Content-Type": "application/x-www-form-urlencoded; charset=UTF-8" }
      }).success(function (response) {
        $scope.bookMark = response;
        if (response == true) {
        	$scope.boardList[index].bookmarkCnt--;
        } else {
        	$scope.boardList[index].bookmarkCnt++;
        }
      }).error(function (error) {
    	  swal("에러", error, "error");
      })
    };
    
    
    
    
	
	
	
})


