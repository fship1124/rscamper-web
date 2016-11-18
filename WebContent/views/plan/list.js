angular.module("TourPlanApp")
	.controller("ListController", function ($rootScope, $scope, $http, MyConfig) {
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
		$scope.pnPage = function (isNext) {
			if (isNext) {
				if ($scope.totalPages > $scope.searchParams.pageNo) {
					$scope.searchParams.pageNo++;
					$scope.getPlanList();
				} else {
					alert("끝페이지 입니다.");
					return false;
				}
			} else {
				if ($scope.searchParams.pageNo > 1) {
					$scope.searchParams.pageNo--;
					$scope.getPlanList();
				} else {
					alert("첫페이지 입니다.");
					return false;
				}
			}
		};

		// 리스트 가져오기
		$scope.getPlanList();

		// 여행일정 만들기
		// 입력 사항
		// 제목, 출발일, 도착일, UserUid,
		$scope.createTourPlan = function () {
			$("#createTourPlanFormModal").modal("show");
		};



	})

// 시작
jQuery(document).ready(function() {
	App.initCounter();
});
