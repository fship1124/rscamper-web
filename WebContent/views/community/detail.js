// 앵귤러 모듈
angular.module("CommunityApp")
.controller("DetailController", function($rootScope, $scope, $http, MyConfig, RequestService) {
	// TODO 좋아요 북마크 알림
	
    // 게시글 불러오기
	$scope.getBoard = function () {
		$http({
			url: MyConfig.backEndURL + "/community/select/oneBoard?boardNo=" + RequestService.getParameter("boardNo"),
			method: "GET",
		})
		.success(function (response) {
			$scope.board = response;
		})
		.error(function (error) {
			swal("에러", "서버접속불가");
		})
	}
	
    
	// 댓글 리스트 불러오기
	$scope.getCommentList = function () {
		$scope.page++;
		$http({
			url: MyConfig.backEndURL + "/community/select/comment?page=" + $scope.page + "&boardNo=" + RequestService.getParameter("boardNo"),
			method: "GET"
		}).success(function (response) {
			angular.forEach(response.commentList, function (comment) {
				$scope.commentList.push(comment);
				$scope.total = response.totalPages;
			})
		}).error(function (error) {
			swal("에러", "서버접속불가", "error");
		})
	};
	
	
	// 무한 스크롤 이벤트
    angular.element(document).scroll( function() {
    	maxHeight = $(document).height();
    	currentScroll = $(window).scrollTop() + $(window).height();
    	if (maxHeight <= currentScroll) {
    		$scope.getCommentList();
    	};
	});
    
	// 댓글 파라미터 초기화
	$scope.load = function () {
		$scope.page = 0;
	    $scope.total = 1;
	    $scope.commentList = [];
	    $scope.targetCommentNo = null;
	    $scope.getBoard();
	    $scope.getCommentList();
	}
	
	$scope.load();
	
    // 대댓글 작성
    $scope.writeSubComment = function(targetCommentNo,displayName) {
		$scope.targetCommentNo = targetCommentNo;
		$scope.commentForm = {
			content : displayName + "에게 : "
		};
	}
    
    // 댓글 작성
    $scope.writeComment = function() {
        // 댓글 유효성 체크
        if (!$scope.commentForm.content) {
            swal("놉!");
            return false;
        }
        $http({
            url: MyConfig.backEndURL + "/community/insert/comment",
            method: "POST",
            data: $.param({
                targetCommentNo: $scope.targetCommentNo,
                boardNo: RequestService.getParameter("boardNo"),
                userUid: $rootScope.user.userUid,
                content: $scope.commentForm.content
            }),
            headers: { "Content-Type": "application/x-www-form-urlencoded; charset=UTF-8" }
        }).success(function(response) {
        	$scope.load();
        	$scope.commentForm.content="";
        }).error(function(error) {
            swal("에러", "서버접속불가", "error");
        })
    };
    
    // 댓글 삭제
    $scope.deleteComment = function (commentNo) {
    	console.log(commentNo);
		swal({
			title : "게시글 삭제",
			text : "해당 게시글을삭제하시겠습니까?",
			type : "warning",
			showCancelButton : true,
			confirmButtonColor : "#DD6B55",
			confirmButtonText : "네",
			cancelButtonText : "아니오",
			closeOnConfirm : false,
			closeOnCancel : false
		}, function(isConfirm) {
			if (isConfirm) {
				$http({
					url : MyConfig.backEndURL + "/community/delete/oneComment?commentNo=" + commentNo,
					method : "DELETE"
				})
				.success(function(response) {
					swal("알림", "댓글이 삭제되었습니다.", "success")
		        	$scope.load();
				})
				.error(function(error) {
					swal("오류", "오류발생", "success")
				})
			} else {
				swal("취소됨!", "삭제가 취소되었습니다.", "error");
			}
		});
    };
	
    // 좋아요
    $scope.likeBoard = function (boardNo) {
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
          $scope.board.likeCnt--;
        } else {
          $scope.board.likeCnt++;
        }
      }).error(function (error) {
        swal("에러", error, "error");
      })
    };
    
    // 북마크 추가 삭제
    $scope.bookmarkBoard = function (boardNo) {
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
        	$scope.board.bookmarkCnt--;
        } else {
        	$scope.board.bookmarkCnt++;
        }
      }).error(function (error) {
    	  swal("에러", error, "error");
      })
    };
		
})


