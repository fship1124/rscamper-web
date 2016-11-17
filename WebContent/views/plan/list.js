tourPlanApp
	.controller("ListController", function ($scope, $http, MyConfig) {
		// 세션에서 유저정보 가져오기
		$scope.user = sessionStorageService.getObject("user");

		// 여행기간 레인지 슬라이더 함수
		$(function() {
			$("#day-range").slider({
				range : true,
				min : 1,
				max : 50,
				values : [ 1, 25 ],
				slide : function(event, ui) {
					$("#day-range-value").val(ui.values[0] + "일 - " + ui.values[1] + "일");
					$scope.searchParams.minTripDays = ui.values[0];
					$scope.searchParams.maxTripDays = ui.values[1];
				}
			});
			$("#day-range-value").val($("#day-range").slider("values", 0) + "일 - " + $("#day-range").slider("values", 1) + "일");
		});

		// TODO : 여행일정 리스트 가져오기

		// 정렬 : 필터로
		$scope.align = {
			standard: 1,
			order: 1
		};

		// 검색 : 쿼리로
		$scope.searchParams = {
			word: "",
			amount: 10,
			datePeriod: 100000,
			minTripDays: 1,
			maxTripDays: 25,
			pageNo: 1
		};

		// 검색 옵션 데이터
		$scope.optionDatas = {
			standardList: [
				{standardValue: 1, standardName: "날짜"},
				{standardValue: 2, standardName: "조회수"},
				{standardValue: 3, standardName: "좋아요수"},
				{standardValue: 4, standardName: "등록장소수"}
			],
			orderList: [
				{orderValue: 1, orderName: "오름차순"},
				{orderValue: 2, orderName: "내림차순"}
			],
			amountList: [
				{amountValue: 10, amountName: "10개"},
				{amountValue: 20, amountName: "20개"},
				{amountValue: 30, amountName: "30개"},
				{amountValue: 40, amountName: "40개"},
				{amountValue: 50, amountName: "50개"}
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
		// 파라미터 : searchParams{검색어, 표시개수, 등록일자범위, 여행기간최소, 여행기간최대}
		$scope.getPlanList = function () {
			console.log($scope.searchParams);
			$http({
				url: MyConfig.backEndURL + "tourPlan/select/tourPlanList",
				method: "POST",
				data: $.param($scope.searchParams),
				headers: {
					"Content-Type": "application/x-www-form-urlencoded; charset=UTF-8"
				}
			}).success(function (result) {
				console.log(result);
				$scope.planList = result;
			}).error(function (error) {
				console.log(error);
			});
		};

		// 페이지 이동 메소드
		$scope.selectPage = function (paramPageNo) {
			$scope.searchParams.pageNo = paramPageNo;
			$scope.getPlanList();
		}

		// 리스트 가져오기
		$scope.getPlanList();
	})



// 시작
jQuery(document).ready(function() {

});
