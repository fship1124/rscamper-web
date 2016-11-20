angular.module("TourPlanApp")
	.controller("ListController", function ($rootScope, $scope, $http, $window, MyConfig) {
		// 여행기간 레인지 슬라이더 함수
		$(function() {
			$("#day-range").slider({
				range : true,
				min : 1,
				max : 100,
				values : [ 1, 50 ],
				slide : function(event, ui) {
					$("#day-range-value").val(ui.values[0] + "일 - " + ui.values[1] + "일");
					$scope.searchParams.minTripDays = ui.values[0];
					$scope.searchParams.maxTripDays = ui.values[1];
				}
			});
			$("#day-range-value").val($("#day-range").slider("values", 0) + "일 - " + $("#day-range").slider("values", 1) + "일");
		});

		// 검색 및 검색 디폴트 값
		$scope.searchParams = {
			standard: "REG_DATE",
			order: "DESC",
			word: "",
			amount: 4,
			datePeriod: 100000,
			minTripDays: 1,
			maxTripDays: 50,
			pageNo: 1
		};

		// 검색 옵션 데이터
		$scope.optionDatas = {
			standardList: [
				{standardValue: "REG_DATE", standardName: "등록날짜"},
				{standardValue: "LIKE_CNT", standardName: "좋아요수"},
				{standardValue: "COMMENT_CNT", standardName: "댓글수"},
				{standardValue: "LOCATION_CNT", standardName: "여행지수"}
			],
			orderList: [
				{orderValue: "DESC", orderName: "내림차순"},
				{orderValue: "ASC", orderName: "오름차순"}
			],
			amountList: [
				{amountValue: 4, amountName: "4개"},
				{amountValue: 8, amountName: "8개"},
				{amountValue: 16, amountName: "16개"},
				{amountValue: 32, amountName: "32개"}
			],
			datePeriodList: [
				{datePeriodValue: 100000, datePeriodName: "전체"},
				{datePeriodValue: 365, datePeriodName: "최근1년"},
				{datePeriodValue: 30, datePeriodName: "최근1달"},
				{datePeriodValue: 7, datePeriodName: "최근1주"},
				{datePeriodValue: 1, datePeriodName: "최근1일"}
			]
		};

		// 여행일정 리스트 가져오는 메소드
		// 파라미터 : searchParams{검색어, 표시개수, 등록일자범위, 여행기간최소, 여행기간최대}, {정렬기준, 정렬방법}
		// TODO : 카운트들 아직 못가져옴
		$scope.getPlanList = function () {
			$http({
				url: MyConfig.backEndURL + "/tourPlan/select/tourPlanList",
				method: "POST",
				data: $.param($scope.searchParams),
				headers: { "Content-Type": "application/x-www-form-urlencoded; charset=UTF-8" }
			}).success(function (result) {
				$scope.planList = result.tourPlanList;
				$scope.totalPages = result.totalPages;
				$scope.pageList();
			}).error(function (error) {
				console.log(error);
			});
		};

		// 페이지 번호 배열 생성 메소드
		$scope.pageList = function () {
			var pagerAmount = 10;
			$scope.pageArr = [];
			for (var i = 1; i <= pagerAmount; i++) {
				if (i > $scope.totalPages) {
					break;
				}
				$scope.pageArr.push(i);
			}
		}

		// 페이지 번호로 이동 메소드
		$scope.noPage = function (paramPageNo) {
			if (paramPageNo < 1 || paramPageNo > $scope.totalPages) {
				alert("없는 페이지 번호입니다.");
				return false;
			}
			$scope.searchParams.pageNo = paramPageNo;
			$scope.getPlanList();
		};

		// 이전페이지, 다음페이지로 이동 메소드
		$scope.pnPage = function (isNext, count) {
			if (!count) {
				count = 1;
			}
			if (isNext) {
				if ($scope.totalPages >= $scope.searchParams.pageNo + count) {
					$scope.searchParams.pageNo += count;
					$scope.getPlanList();
				} else {
					alert("더이상 갈수 없습니다.");
					return false;
				}
			} else {
				if ($scope.searchParams.pageNo - count >= 1) {
					$scope.searchParams.pageNo -= count;
					$scope.getPlanList();
				} else {
					alert("더이상 갈수 없습니다.");
					return false;
				}
			}
		};
		
		// 필터링
		$scope.filtering = function () {
			$scope.searchParams.pageNo = 1;
			$scope.getPlanList();
		}

		// 처음에 리스트 가져오기
		$scope.getPlanList();

		// 여행일정 만들기 폼 열기
		$scope.createTourPlan = function () {
			// 로그인 했는지 판단
			if($rootScope.user) {
				// 폼 내용 리셋
				$scope.writeTourPlan = {};
				$("#createTourPlanFormModal").modal("show");
			} else {
				if ($rootScope.user == null) {
					var $form_modal = $('.cd-user-modal'), $form_login = $form_modal
							.find('#cd-login'), $form_signup = $form_modal.find('#cd-signup'), $form_forgot_password = $form_modal
							.find('#cd-reset-password'), $form_modal_tab = $('.cd-switcher'), $tab_login = $form_modal_tab
							.children('li').eq(0).children('a'), $tab_signup = $form_modal_tab
							.children('li').eq(1).children('a'), $forgot_password_link = $form_login
							.find('.cd-form-bottom-message a'), $back_to_login_link = $form_forgot_password
							.find('.cd-form-bottom-message a');

					$form_modal.addClass("is-visible");

					$form_login.removeClass('is-selected');
					$form_signup.addClass('is-selected');
					$form_forgot_password.removeClass('is-selected');
					$tab_login.removeClass('selected');
					$tab_signup.addClass('selected');
				}
			}
		};
		
		$scope.insertTourPlan = function () {
			// 유효성 체크(undefined issue resolved)
		    if (!validCheckService("null", $scope.writeTourPlan.title)) {return false;}
		    if (!validCheckService("null", $scope.writeTourPlan.strapline)) {return false;}
		    if (!validCheckService("null", $scope.writeTourPlan.introduce)) {return false;}
		    if (!validCheckService("null", $scope.writeTourPlan.departureDate)) {return false;}
		    if (!validCheckService("null", $scope.writeTourPlan.arriveDate)) {return false;}
			
			// 사용자 UID 입력
			$scope.writeTourPlan.userUid = $rootScope.user.userUid; 
			
			$http({
				url: MyConfig.backEndURL + "/tourPlan/insert/tourPlan",
				method: "POST",
				data: $.param($scope.writeTourPlan),
				headers: { "Content-Type": "application/x-www-form-urlencoded; charset=UTF-8" }
			}).success(function (result) {
				$("#createTourPlanFormModal").modal("hide");
				
				// 일정 만들기 페이지로 이동
				// 파라미터 : result.recordNo
				// $window.location.href = "makeplan.jsp";
			}).error(function (error) {
				console.log(error);
			});
		}
		
	})

// 시작
jQuery(document).ready(function() {
	Masking.initMasking();
});
