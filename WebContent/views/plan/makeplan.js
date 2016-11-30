angular.module("TourPlanApp")
	.controller("MakePlanController", function ($rootScope, $scope, $http, $window, $timeout, MyConfig, RequestService) {
		/** ==================================================== */
		/** 여행일정 기본 데이터 불러오기 */
		/** ==================================================== */
		// recordNo로 파라미터 받은 값으로 일정 정보 불러옴
		$scope.getTourPlan = function () {
			$http({
				url: MyConfig.backEndURL + "/tourPlan/select/oneTourPlan?recordNo=" + RequestService.getParameter("recordNo"),
				method: "GET",
			}).success(function (response) {
				console.log(response);
				if (response.userUid != $rootScope.user.userUid) {
					swal("에러", "해당 일정에 대한 수정권한이 없습니다.", "error");
					// 일정리스트 페이지로 리다이렉트
					$window.location.href = "list.jsp";
				};
				$scope.tourPlan = response;
				$scope.tourPlan.departureDate = new Date(response.departureDate);
				$scope.tourPlan.arriveDate = new Date(response.arriveDate);
				$scope.tourPlan.period = $scope.convertDate($scope.tourPlan.departureDate, $scope.tourPlan.arriveDate);
				$scope.tourPlan.regDate = new Date(response.regDate);
				
				/** ==================================================== */
				/** TODO 여행일정 상세 데이터 불러오기 */
				/** ==================================================== */
				
				// 일정표 날짜 정보 셋팅
				$scope.setCalendarDate();
				
				// 일정표 init
				$scope.initCalendar();
				
				// TODO 이미 저장되있던 일정 넣어줘야함
				
			}).error(function (error) {
				swal("에러", "잘못된 접근입니다.", "error");
				// 일정리스트 페이지로 리다이렉트
				$window.location.href = "list.jsp";
			});
		};
		
		// 기간 표시 메소드
		$scope.convertDate = function(dDate, aDate) {
			var result = "";
			var nTime = aDate.getTime() - dDate.getTime();
			var year = Math.floor(nTime/1000/60/60/24/365);
			var day = nTime/1000/60/60/24;
			if (day >= 1) {
				var duty = day + 1;
				result = day + "박" + duty + "일";
			} else if (day == 0){
				result = "당일치기";
			} else if (day < 0) {
				result = "시간여행";
				swal("시간여행을 하시겠습니까?");
				// TODO 날짜 못고치게 막아야함
			}
			
			return result;
		};
		
		// 출발시간 변경시 이벤트
		angular.element("#departureDate").change( function() {
            $scope.$apply(function() {
            	$scope.tourPlan.period = $scope.convertDate($scope.tourPlan.departureDate, $scope.tourPlan.arriveDate);
            });
            $scope.setCalendarDate();
		});
		
		// 도착시간 변경시 이벤트
		angular.element("#arriveDate").change( function() {
            $scope.$apply(function() {
            	$scope.tourPlan.period = $scope.convertDate($scope.tourPlan.departureDate, $scope.tourPlan.arriveDate);
            });
            $scope.setCalendarDate();
		});
		
		// 여행일정 가져오기
		$scope.getTourPlan();


		/** ==================================================== */
		/** TODO 여행일정 저장/취소  								 */
		/** ==================================================== */
		/*	저장요소
		 *  전체정보 : record_tb
		 *  일정정보 : record_schedule_tb
		 */
		
		// 저장버튼 이벤트
		$scope.saveTourPlan = function () {
			swal("저장");
			console.log($scope.tourPlan);
		}
		
		// 취소버튼 이벤트
		$scope.cancelTourPlan = function () {
			swal("redirecting...");
			$window.location.href = "detail.jsp?recordNo=" + RequestService.getParameter("recordNo");
		};
		
		/** ==================================================== */
		/** 제목 바꾸기 */
		/** ==================================================== */
		// 제목바꾸기 시작 이벤트
		$scope.changeTitle = function () {
			$scope.modTitle = true;
		};
		
		// 제목바꾸기 완료 이벤트
		$scope.updateTitle = function () {
			$http({
				url: MyConfig.backEndURL + "/tourPlan/update/tourPlanTitle",
				method: "POST",
				data: $.param({
					recordNo: RequestService.getParameter("recordNo"),
					title: $scope.tourPlan.title
				}),
				headers: { "Content-Type": "application/x-www-form-urlencoded; charset=UTF-8" }
			}).success(function (result) {
				$scope.modTitle = false;
			}).error(function (error) {
				console.log(error);
			})
		};
		
		
		/** ==================================================== */
		/** 배경사진 바꾸기 */
		/** ==================================================== */
//		// 배경사진 바꾸기 버튼 호버 이벤트
//		$("#backGroundImage").hover(function (){
//			$scope.hoverImage = true;
//		}, function () {
//			$scope.hoverImage = false;
//		})
		
		// 배경 파일 업로드 이미지 미리보기 이벤트
		$("#BGImageFile").on("change", function(){
			if(img_validation(this)) {
				readURL(this, $("#BGImage"));
			} else {
				$(this).val("");
				$("#BGImage").attr("src", "/rscamper-web/resources/img/default/default-image.png");
			};
		});
		
		// 배경 사진 변경 모달창 열기
		$scope.changeTourPlanBGImage = function () {
			$scope.uploadBGUrl = MyConfig.backEndURL + "/tourPlan/upload/coverImage"
			$("#BGImageFile").val("");
			$("#BGImage").attr("src", "/rscamper-web/resources/img/default/default-image.png");
			$("#BGImageUploadFormModal").modal("show");
		};
		// 배경사진 업로드 완료 콜백
		$scope.uploadBGCallBack = function (result) {
	        var data = JSON.parse(result);
	        var TourPlanCover = {
	        		recordNo: RequestService.getParameter("recordNo"),
	        		realPath: data.realPath, // 서버 경로
	        		filePath: data.filePath, // 웹 경로
	        		oriName: data.oriName, // 업로드시 파일이름
	        		fileName: data.fileName, // 서버저장 파일이름
	        		fileSize: data.fileSize // 파일 크기
	        }
	        $scope.updateImage(TourPlanCover, "/tourPlan/update/coverImage")
		};
		// 사진 데이터베이스 업데이트
	    $scope.updateImage = function (TourPlanCover, url) {
	        $http({
	          url: MyConfig.backEndURL + url,
	          method: "POST",
	          data: $.param({
	        		recordNo: RequestService.getParameter("recordNo"),
	        		realPath: TourPlanCover.realPath, // 서버 경로
	        		filePath: TourPlanCover.filePath, // 웹 경로
	        		oriName: TourPlanCover.oriName, // 업로드시 파일이름
	        		fileName: TourPlanCover.fileName, // 서버저장 파일이름
	        		fileSize: TourPlanCover.fileSize // 파일 크기
	          }),
	          headers: {
	            "Content-Type": "application/x-www-form-urlencoded; charset=UTF-8"
	          }
	        })
	        .success(function () {
				$http({
					url: MyConfig.backEndURL + "/tourPlan/select/oneTourPlan?recordNo=" + RequestService.getParameter("recordNo"),
					method: "GET",
				}).success(function (response) {
					// 불러온 일정정보 uid값이 $rootScope.user와 같은지 확인 : 같으면 진행, 아니면 오류 메세지 띄우고 일정 리스트 페이지로 이동
					console.log(response);
					if (response.userUid != $rootScope.user.userUid) {
						swal("에러", "해당 일정에 대한 수정권한이 없습니다.", "error");
						// 일정리스트 페이지로 리다이렉트
						$window.location.href = "list.jsp";
					};
					$scope.tourPlan = response;
					$scope.tourPlan.arriveDate = new Date(response.arriveDate);
					$scope.tourPlan.departureDate = new Date(response.departureDate);
					$scope.tourPlan.regDate = new Date(response.regDate);
					
	        		$("#BGImageFile").val("");
	        		$("#BGImage").attr("src", "/rscamper-web/resources/img/default/default-image.png");
	        		$("#BGImageUploadFormModal").modal("hide");
					
				}).error(function (error) {
					swal("에러", "잘못된 접근입니다.", "error");
					// 일정리스트 페이지로 리다이렉트
					$window.location.href = "list.jsp";
				});
		
	        });
	    };
		
		
		
		/** ==================================================== */
		/** TODO 예산 */
		/** ==================================================== */
		// TODO 예산창 모달 폼 구성
	    $scope.tourPlanBudget = function () {
	    	swal("여행예산");
	    }

		
		/** ==================================================== */
		/** 관광지정보 리스트 */
		/** ==================================================== */
		/** contentTypeId
		 *  관광지 : 12, 14, 15, 25, 28
		 *  음식점 : 39
		 *  숙박업소 : 32
		 */
		// TODO 장소 클릭 -> 디테일 정보(디테일 모달 CSS)
		$scope.openDetailTourSpot = function (tourSpot) {
			// 누를때 http로 디테일 정보 요청(param : contentId)
			$scope.detailTourSpot = tourSpot;
			$("#detailTourSpotModal").modal("show");
		}
		
		// 여행 장소 리스트 불러오기 
		$scope.getSpotList = function () {
			// 무한로딩 방지
			if ($scope.spotParams.pageNo >= $scope.totalPages) {
				console.log("리스트 끝");
				return;
			}
			$scope.spotParams.pageNo++;
			$http({
				url: MyConfig.backEndURL + "/tourPlan/select/spotList",
				method: "GET",
				params: $scope.spotParams
			}).success(function (response) {
//				console.log(response);
				angular.forEach(response.tourSpotList, function (spot) {
					$scope.tourSpotList.push(spot);
				})					
				$scope.totalPages = response.totalPages;
				
			}).error(function (error) {
				console.log(error);
			});
			
		};
		
		// 장소리스트 ng-repeat 완료 함수
		$scope.$on("ngRepeatFinished", function(ngRepeatFinishedEvent) {
			$scope.addDragEvent();
		});
		
		// 무한 스크롤 이벤트
		angular.element("#searchContent").scroll( function() {
			var elem = angular.element("#searchContent");
			if ( elem[0].scrollHeight - elem.scrollTop() == elem.outerHeight()) {
				$scope.getSpotList();
			}
		});
		
		// 검색창 ENTER 이벤트
		angular.element("#searchText").on("keypress", function (e) {
	         if(e.which === 13){
	             if ($scope.spotParams.category) {
	            	 $scope.initSpotList($scope.spotParams.category);
	             } else {
	            	 $scope.initSpotList("all");
	             }
	          }
		})
		
		// 장소 리스트 가져오기 시작
		$scope.initSpotList = function (category) {
			// 장소 리스트 선언
			$scope.tourSpotList = [];
			
			// 검색 및 검색 디폴트 값
			$scope.spotParams = {
				standard: "PUBLIC_DATA_LIST_NO",
				order: "ASC",
				word: $scope.searchWord,
				category: category,
				amount: 20,
				pageNo: 0
			};
			
			$scope.totalPages = 1;

			// 첫 리스트 불러오기
			$scope.getSpotList();
		}
		
		// 디폴트 리스트 호출 : 전체
		$scope.initSpotList("all");
		

		/** ==================================================== */
		/** TODO 북마크 */
		/** ==================================================== */
		
		/** ==================================================== */
		/** TODO 스토리 */
		/** ==================================================== */
		
		/** ==================================================== */
		/** 일정표관련 : 기초데이터를 불러온 후에 init 해야함 */
		/** ==================================================== */
		// 시작일 : $scope.tourPlan.departureDate
		// 종료일 : $scope.tourPlan.arriveDate
		
		// 일정표 객체
		var calendarObj = $("#calendar");
		
		// 일정표 이벤트 객체 출력
		$scope.getCalendarEvents = function () {
		};
		
		// 일정표 날짜 변수
		$scope.setCalendarDate = function () {
			$scope.calendarPage = {
				currentDate: moment($scope.tourPlan.departureDate),
				startLimitDate: moment($scope.tourPlan.departureDate),
				endLimitDate: moment($scope.tourPlan.arriveDate),
				currentDateStart: moment($scope.tourPlan.departureDate).startOf('day'),
				currentDateEnd: moment($scope.tourPlan.departureDate).endOf('day')
			}
		};
		
		// 일정표 initialize
		$scope.initCalendar = function () {
			// Full Calendar 옵션
			calendarObj.fullCalendar({
				// 높이
				height: "auto",
				// 달
				monthNames: ["1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월", "11월", "12월"],
				monthNamesShort: ["1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월", "11월", "12월"],
				// 요일
				dayNames: ["일요일", "월요일", "화요일", "수요일", "목요일", "금요일", "토요일"],
				dayNamesShort: ["일", "월", "화", "수", "목", "금", "토"],
				
				// 칼럼 형식
				columnFormat: "MM/DD ddd",
				
				// 사용자 정의 버튼
			    customButtons: {
			    	firstDayBtn: {
			            text: "첫날",
			            click: $scope.toDayMethods.toFirstDay
			    	},
			    	LastDayBtn: {
						text: "마지막날",
						click: $scope.toDayMethods.toLastDay
			    	},
			        prevDayBtn: {
			            text: "이전",
			            icon: "left-single-arrow",
			            click: $scope.toDayMethods.toPrevDay
			        },
					nextDayBtn: {
						text: "다음",
						icon: "right-single-arrow",
						click: $scope.toDayMethods.toNextDay
					}
			    },
			    // 헤더 메뉴 구성
			    header: {
			    	left: "firstDayBtn",
			    	center: "prevDayBtn, title, nextDayBtn",
			    	right: "LastDayBtn"
			    },
			    views: {
			        agendaOneDay: {
			            type: "agendaDay",
			            duration: { days: 1 },
			            buttonText: "1 day",
			            titleFormat: "YYYY년 MM월 DD일"
			        },
			        agendaThreeDay: {
			            type: "agenda",
			            duration: { days: 3 },
			            buttonText: "3 day",
			            titleFormat: "YYYY년 MM월 DD일",
			        }
			    },
			    // 기본 뷰
				defaultView: "agendaThreeDay",
				// 공통일정 : 허용하지 않음
				allDaySlot: false,
				// 매일 시작시간 : 아침 06시
				minTime: "06:00:00",
				// 일정 중첩 옵션 : 허용하지 않음
				slotEventOverlap: false,
				eventOverlap: true,
				// 기본 일정 시작 일자
				defaultDate: $scope.calendarPage.currentDate,
				
				// 드래그앤드랍설정
				editable: true,
				droppable: true, // this allows things to be dropped onto the calendar
				
				
				// 이벤트
				defaultTimedEventDuration: "02:00:00",
				events: [
					// 선택된 날짜
					{
						id: "currentDate",
						start: $scope.calendarPage.currentDateStart,
						end: $scope.calendarPage.currentDateEnd,
						overlap: true,
						rendering: "background"
					},
					// 입력 가능 날짜
					{
						id: "availableDate",
						start: "2016-11-4T00:00:00",
						end: "2016-11-10T23:59:59",
						overlap: true,
						rendering: "inverse-background",
						color: "#ff9f89"
					}
				]
			});
		}
		
		// 여행장소리스트 드래그 이벤트 추가 함수
		$scope.addDragEvent = function () {
	        angular.element($("#searchContent .tourSpot")).each(function() {
	    		// store data so the calendar knows to render an event upon drop
	    		$(this).data("event", {
	    			title: $.trim($(this).text()), // 태그안 택스트를 title 변수로 준다
	    			stick: true, // 날짜이동해도 일정을 유지시켜줌
	    			constraint: "availableDate" // availableDate필드에만 일정 추가 가능
	    		});
	    		
	    		// JQuery-UI 드래그 이벤트 추가 함수
	    		$(this).draggable({
	    			revert: true,
	    			revertDuration: 0,
	    			zIndex: 99,
	    			appendTo: "body",
	    			containment: "window",
	    			scroll: false,
	    			helper: "clone"
	    		});
	    	});
		};

		// 일정 이동 메소드들
		// TODO 첫째날 마지막날 제대로 되게 설정
		$scope.toDayMethods = {
			toFirstDay: function () {
//				calendarObj.fullCalendar("gotoDate", $scope.calendarPage.startLimitDate);
			},
			toLastDay: function () {
//				calendarObj.fullCalendar("gotoDate", $scope.calendarPage.endLimitDate);
			},
			toPrevDay: function () {
				if ($scope.calendarPage.currentDate.isSameOrBefore($scope.calendarPage.startLimitDate)) {
					swal("첫날입니다.");
				} else {
					$scope.calendarPage.currentDate.subtract(1, "days");
					$scope.calendarPage.currentDateStart.subtract(1, "days");
					$scope.calendarPage.currentDateEnd.subtract(1, "days");
					calendarObj.fullCalendar("gotoDate", $scope.calendarPage.currentDate);
					var currentBackgroundEvent = calendarObj.fullCalendar('clientEvents', "currentDate");
					currentBackgroundEvent[0].start = $scope.calendarPage.currentDateStart;
					currentBackgroundEvent[0].end = $scope.calendarPage.currentDateEnd;
					console.log(currentBackgroundEvent[0]);
					calendarObj.fullCalendar('updateEvent', currentBackgroundEvent[0]);
					
				}
			},
			toNextDay: function () {
				if ($scope.calendarPage.currentDate.isSameOrAfter($scope.calendarPage.endLimitDate)) {
					swal("마지막날 입니다.");
				} else {
					$scope.calendarPage.currentDate.add(1, "days");
					$scope.calendarPage.currentDateStart.add(1, "days");
					$scope.calendarPage.currentDateEnd.add(1, "days");
					calendarObj.fullCalendar("gotoDate", $scope.calendarPage.currentDate);
					var currentBackgroundEvent = calendarObj.fullCalendar('clientEvents', "currentDate");
					currentBackgroundEvent[0].start = $scope.calendarPage.currentDateStart;
					currentBackgroundEvent[0].end = $scope.calendarPage.currentDateEnd;
					console.log(currentBackgroundEvent[0]);
					calendarObj.fullCalendar('updateEvent', currentBackgroundEvent[0]);
				}
			}
		};
		
		
		// TODO 일정표 커스텀 뷰
//		$.fullCalendar.views.custom = $.fullCalendar.View.extend({ // make a subclass of View
//		    initialize: function() {
//		        // called once when the view is instantiated, when the user switches to the view.
//		        // initialize member variables or do other setup tasks.
//		    },
//
//		    render: function() {
//		        // responsible for displaying the skeleton of the view within the already-defined
//		        // this.el, a jQuery element.
//		    },
//
//		    renderEvents: function(events) {
//		        // reponsible for rendering the given Event Objects
//		    },
//
//		    destroyEvents: function() {
//		        // responsible for undoing everything in renderEvents
//		    },
//
//		    renderSelection: function(range) {
//		        // accepts a {start,end} object made of Moments, and must render the selection
//		    },
//
//		    destroySelection: function() {
//		        // responsible for undoing everything in renderSelection
//		    }
//		});


        
  })
  
  
/** ==================================================== */
/** TODO 구글맵 */
/** ==================================================== */
function initMap() {
	  var map = new google.maps.Map(document.getElementById("map"), {
	    center: {lat: -34.397, lng: 150.644},
	    zoom: 10
	  });
	  
	  var infoWindow = new google.maps.InfoWindow({map: map});

	  // Try HTML5 geolocation.
	  if (navigator.geolocation) {
	    navigator.geolocation.getCurrentPosition(function(position) {
	      var pos = {
	        lat: position.coords.latitude,
	        lng: position.coords.longitude
	      };

	      infoWindow.setPosition(pos);
	      infoWindow.setContent("공사중");
	      map.setCenter(pos);
	    }, function() {
	      handleLocationError(true, infoWindow, map.getCenter());
	    });
	  } else {
	    // Browser doesn"t support Geolocation
	    handleLocationError(false, infoWindow, map.getCenter());
	  }
}

function handleLocationError(browserHasGeolocation, infoWindow, pos) {
	infoWindow.setPosition(pos);
	infoWindow.setContent(browserHasGeolocation ?
		"에러: 위치정보 서비스 구동 실패" :
		"에러: 브라우져가 위치정보 서비스를 지원하지 않습니다.");
}
  
	