angular.module("TourPlanApp")
	.controller("DetailController", function ($rootScope, $scope, $http, $window, $timeout, MyConfig, RequestService) {
		/** ==================================================== */
		/** 여행일정 기본 데이터 불러오기 */
		/** ==================================================== */
		// recordNo로 파라미터 받은 값으로 일정 정보 불러옴
		$scope.getTourPlan = function () {
			$http({
				url: MyConfig.backEndURL + "/tourPlan/select/oneTourPlan?recordNo=" + RequestService.getParameter("recordNo"),
				method: "GET"
			}).success(function (response) {
//				console.log(response);
				
				// TODO 공개비공개 확인
				
				if (response.userUid == $rootScope.user.userUid) {
					$scope.isWriter = true; 
				}
				
				$scope.tourPlan = response;
				$scope.tourPlan.departureDate = new Date(response.departureDate);
				$scope.tourPlan.arriveDate = new Date(response.arriveDate);
				$scope.tourPlan.period = $scope.convertDate($scope.tourPlan.departureDate, $scope.tourPlan.arriveDate);
				$scope.tourPlan.regDate = new Date(response.regDate);
				
				/** ==================================================== */
				/** 여행일정 스케쥴 데이터 불러오기 */
				/** ==================================================== */
				// 일정표 날짜 정보 셋팅
				$scope.setCalendarDate();
				// 일정표 init
				$scope.initCalendar();
				// 포함된 일정 불러오기
				$http({
					url: MyConfig.backEndURL + "/tourPlan/select/tourPlanScheduleByRecordNo?recordNo=" + RequestService.getParameter("recordNo"),
					method: "GET"
				}).success(function (response) {
//					console.log(response);
					// 일정표에 불러온 이벤트 추가
					for (var i = 0; i < response.length ; i++) {
						switch (response[i].contentTypeId) {
							case 12: var color = "#f29e37"; break;
							case 14: var color = "#f29e37"; break;
							case 15: var color = "#f29e37"; break;
							case 25: var color = "#f29e37"; break;
							case 28: var color = "#f29e37"; break;
							case 38: var color = "#f29e37"; break;
							case 39: var color = "#46c0fb"; break;
							case 32: var color = "#6bb130"; break;
						}
						var event = {
				    		title: response[i].title, // 태그안 택스트를 title 변수로 준다
				    		stick: true, // 날짜이동해도 일정을 유지시켜줌
				    		constraint: "availableDate", // availableDate필드에만 일정 추가 가능
				    		color: color,
				    			
				    		// 필터를 위한
				    		category: "tourSpot",
				    			
				    		// DB에 들어가야할 일정 데이터 
							locationNo: response[i].locationNo,
				    		recordNo: RequestService.getParameter("recordNo"),
				    		contentId: response[i].contentCode,
				    		contentTypeId: response[i].contentTypeId,
				    		spotTitle: response[i].title,
				    		mapX: response[i].mapX,
				    		mapY: response[i].mapY,
				    		imageUrl: response[i].imageUrl,
				    		start: moment(response[i].detailDepartureDate)
						}
						if (response[i].detailArriveDate) {
							event.end = moment(response[i].detailArriveDate);
						}

						// 일정표 바인딩
						$scope.getAllCalendarEvents();
						
						// 일정표에 이벤트 렌더링
						calendarObj.fullCalendar("renderEvent", event, true);
					}
					// 구글맵 이니시
					initMap();
					// 지도에 이벤트 렌더링
					renderingEventToMap();
					
				}).error(function (error) {
					console.log(error);
				});
			}).error(function (error) {
				swal("에러", "잘못된 접근입니다.", "error");
				// 일정리스트 페이지로 리다이렉트
				$window.location.href = "list.jsp";
			});
		};
		
		// 기간 표시 메소드
		$scope.convertDate = function(dDate, aDate) {
			var response = "";
			var nTime = aDate.getTime() - dDate.getTime();
			var year = Math.floor(nTime/1000/60/60/24/365);
			var day = nTime/1000/60/60/24;
			if (day >= 1) {
				var duty = day + 1;
				response = day + "박" + duty + "일";
			} else if (day == 0){
				response = "당일치기";
			} else if (day < 0) {
				response = "시간여행";
			}
			return response;
		};
		
		// 수정하기
		$scope.modTourPlan = function () {
			// 일정을 수정하시겠습니까?
			$window.location.href = "makeplan.jsp?recordNo=" + RequestService.getParameter("recordNo");
		};
		
		// 일정 공개 비공개
		$scope.togglePrivateTourPlan = function () {
			// 공개여부확인
			// 공개 비공개 설정을 바꾸시겠습니까?
		};
		
		// TODO 일정 시간 변경시 유효성 체크
		
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
		
		// 장소 클릭 -> 디테일 정보(디테일 모달 CSS)
		$scope.openDetailTourSpot = function (tourSpot) {
			// 주소
			var src = "include/tourSpotDetail.jsp?contentid=" + tourSpot.contentid + "&contenttypeid=" + tourSpot.contenttypeid;
			$("#tourSpotDetailIframe").attr("src", src);
			$("#detailTourSpotModal").modal("show");
		}


		/** ==================================================== */
		/** TODO 예산 */
		/** ==================================================== */
		// TODO 예산창 모달 폼 구성
	    $scope.tourPlanBudget = function () {
	    	swal("여행예산");
	    }

		/** ==================================================== */
		/** TODO 북마크 */
		/** ==================================================== */
		
		/** ==================================================== */
		/** TODO 스토리 */
		/** ==================================================== */
		
		/** ==================================================== */
		/** 일정표												 */
		/** ==================================================== */
		// TODO 일정표 클릭 이벤트
		
		// 일정표 객체 선언
		var calendarObj = $("#calendar");
		
		// 일정표 이벤트 리스트 가져오기 (전체 / 리스트)
		$scope.getAllCalendarEvents = function () {
			$scope.allTourSpotEvent = [];
			// 일정표에서 모든 이벤트 가져오기
			$scope.allEvents = calendarObj.fullCalendar("clientEvents");
			// 모든 이벤트중 tourSpot만 필터링해서 집어넣기
			for (var i = 0; i < $scope.allEvents.length; i++) {
				if ($scope.allEvents[i].category == "tourSpot") {
					$scope.allTourSpotEvent.push($scope.allEvents[i]);
				};
			}
			
			console.log("모든" + $scope.allEvents.length);
			console.log("이벤트 개수" + $scope.allTourSpotEvent.length);
			console.log($scope.allTourSpotEvent);
			
			// 이벤트 배열 정렬(시간순으로)
			$scope.allTourSpotEvent.sort(function (a, b) {
				return a.start.isBefore(b.start) ? -1 : a.start.isAfter(b.start) ? 1 : 0;
			});

			
			return $scope.allTourSpotEvent;
		};
		
		// 일정표 이벤트 객체 확인 (선택날짜)
		$scope.getCurrentDateCalendarEvents = function () {
			$scope.currentDateTourSpotEvents = [];
			// 일정표에서 선택날짜만 가져오는 이벤트 필터 적용해서 이벤트 가져오기
			$scope.currentDateEvents = calendarObj.fullCalendar("clientEvents", function (event) {
				if ($scope.calendarPage.currentDate.isSame(event.start, "day")) {
					return event;
				}
			});
			// 이벤트중 tourSpot만 필터링해서 집어넣기
			for (var i = 0; i < $scope.currentDateEvents.length; i++) {
				if ($scope.currentDateEvents[i].category == "tourSpot") {
					$scope.currentDateTourSpotEvents.push($scope.currentDateEvents[i]);
				};
			}
			
			// 이벤트 배열 정렬(시간순으로)
			$scope.currentDateTourSpotEvents.sort(function (a, b) {
				return a.start.isBefore(b.start) ? -1 : a.start.isAfter(b.start) ? 1 : 0;
			});
			
			return $scope.currentDateTourSpotEvents;
		};
		
		
		// 일정표 날짜 변수 업데이트 메소드
		$scope.setCalendarDate = function () {
			$scope.calendarPage = {
				currentDate: moment($scope.tourPlan.departureDate),
				startLimitDate: moment($scope.tourPlan.departureDate),
				endLimitDate: moment($scope.tourPlan.arriveDate).endOf("day"),
				currentDateStart: moment($scope.tourPlan.departureDate).startOf("day"),
				currentDateEnd: moment($scope.tourPlan.departureDate).endOf("day")
			}
			// 선택가능날짜 업데이트
			$scope.setAvailableBackgroundEvent();
			// 선택날짜 업데이트
			$scope.setCurrentBackgroundEvent();
			// 현재날짜 처음으로
			calendarObj.fullCalendar("gotoDate", $scope.calendarPage.currentDate);
		};
		
		// 선택 가능날짜 배경 이벤트 업데이트 메소드
		$scope.setAvailableBackgroundEvent = function () {
			var availableBackgroundEvent = calendarObj.fullCalendar("clientEvents", "availableDate");
			availableBackgroundEvent[0].start = $scope.calendarPage.startLimitDate;
			availableBackgroundEvent[0].end = $scope.calendarPage.endLimitDate;
			calendarObj.fullCalendar("updateEvent", availableBackgroundEvent[0]);
		}
		// 현재 선택날짜 배경 이벤트  업데이트 메소드
		$scope.setCurrentBackgroundEvent = function () {
			var currentBackgroundEvent = calendarObj.fullCalendar("clientEvents", "currentDate");
			currentBackgroundEvent[0].start = $scope.calendarPage.currentDateStart;
			currentBackgroundEvent[0].end = $scope.calendarPage.currentDateEnd;
			calendarObj.fullCalendar("updateEvent", currentBackgroundEvent[0]);
		}
		
		// 일정표 initialize
		$scope.initCalendar = function () {
			// Full Calendar 옵션
			calendarObj.fullCalendar({
				// 타임존
				timezone: "local",
				// 높이
				height: "auto",
				// 달 표시 옵션
				monthNames: ["1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월", "11월", "12월"],
				monthNamesShort: ["1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월", "11월", "12월"],
				// 요일 표시 옵션
				dayNames: ["일요일", "월요일", "화요일", "수요일", "목요일", "금요일", "토요일"],
				dayNamesShort: ["일", "월", "화", "수", "목", "금", "토"],
				// 제목 표시 형식
				titleFormat: "YYYY년 MM월 DD일",
				// 칼럼 표시 형식
				columnFormat: "MM월 DD일 ddd요일",
				// 사용자 정의 버튼
			    customButtons: {
			    	firstDayBtn: {
			            text: "첫날",
			            icon: "left-double-arrow",
			            click: $scope.toDayMethods.toFirstDay
			    	},
			    	LastDayBtn: {
						text: "마지막날",
						icon: "right-double-arrow",
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
			    	left: "firstDayBtn, LastDayBtn",
			    	center: "prevDayBtn, title, nextDayBtn",
			    	right: "agendaWeekDay, agendaThreeDay"
			    },
			    // 뷰
			    views: {
			        agendaThreeDay: {
			            type: "agenda",
			            duration: {days:3},
			            buttonText: "3일",
			        },
			        agendaWeekDay: {
			        	type: "agenda",
			            duration: {days:7},
			        	buttonText: "일주일"
			        }
			    },
			    // 기본 뷰
				defaultView: "agendaThreeDay",
				// 공통일정 : 허용하지 않음
				allDaySlot: false,
				// 매일 시작시간 : 아침 06시
				minTime: "06:00:00",
				// 일정 겹치기 : 허용하지 않음
				slotEventOverlap: false,
				// TODO 동시간대 일정 : 허용
				eventOverlap: true,
				// 기본 일정 시작 일자
				defaultDate: $scope.calendarPage.currentDate,
				// 드래그앤드랍설정
				editable: false,
				droppable: false,
				// 드래그시 투명도
				dragOpacity: 0.8,
				// 이벤트 디폴트 시간
				defaultTimedEventDuration: "02:00:00",
				// 디폴트 이벤트(백그라운드)
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
						start: $scope.calendarPage.startLimitDate,
						end: $scope.calendarPage.endLimitDate,
						overlap: true,
						rendering: "inverse-background",
						color: "#ff9f89"
					}
				],
				// 이벤트 클릭
			    eventClick: function(calEvent, jsEvent, view) {
			    	var param = {
			    		contentid: calEvent.contentId,
			    		contenttypeid: calEvent.contentTypeId
			    	}
			    	
			    	$scope.openDetailTourSpot(param);
			    }
			});
		};
		
		// 여행장소리스트 드래그 이벤트 추가 함수
		$scope.addDragEvent = function () {
	        angular.element($("#searchContent .tourSpot")).each(function() {
	    		// 각 이벤트에 들어가야할 데이터
	    		$(this).data("event", {
	    			title: $(this).children().first().find("b:eq(2)").text(), // 태그안 택스트를 title 변수로 준다
	    			stick: true, // 날짜이동해도 일정을 유지시켜줌
	    			constraint: "availableDate", // availableDate필드에만 일정 추가 가능
	    			color: $(this).children().first().find("b:eq(6)").text(),
	    			
	    			// 필터를 위한
	    			category: "tourSpot",
	    			
	    			// DB에 들어가야할 일정 데이터 
	    			recordNo: RequestService.getParameter("recordNo"),
	    			contentId: $(this).children().first().find("b:eq(0)").text(),
	    			contentTypeId: $(this).children().first().find("b:eq(1)").text(),
	    			spotTitle: $(this).children().first().find("b:eq(2)").text(),
	    			mapX: $(this).children().first().find("b:eq(3)").text(),
	    			mapY: $(this).children().first().find("b:eq(4)").text(),
	    			imageUrl: $(this).children().first().find("b:eq(5)").text()
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
		$scope.toDayMethods = {
			toFirstDay: function () {
				$scope.calendarPage = {
						currentDate: moment($scope.tourPlan.departureDate),
						startLimitDate: moment($scope.tourPlan.departureDate),
						endLimitDate: moment($scope.tourPlan.arriveDate).endOf("day"),
						currentDateStart: moment($scope.tourPlan.departureDate).startOf("day"),
						currentDateEnd: moment($scope.tourPlan.departureDate).endOf("day")
				}
				calendarObj.fullCalendar("gotoDate", $scope.calendarPage.currentDate);
				
				$scope.setCurrentBackgroundEvent();
				
				renderingEventToMap();
			},
			toLastDay: function () {
				$scope.calendarPage = {
						currentDate: moment($scope.tourPlan.arriveDate),
						startLimitDate: moment($scope.tourPlan.departureDate),
						endLimitDate: moment($scope.tourPlan.arriveDate).endOf("day"),
						currentDateStart: moment($scope.tourPlan.arriveDate).startOf("day"),
						currentDateEnd: moment($scope.tourPlan.arriveDate).endOf("day")
				}
				calendarObj.fullCalendar("gotoDate", $scope.calendarPage.currentDate);
				
				$scope.setCurrentBackgroundEvent();
				
				renderingEventToMap();
			},
			toPrevDay: function () {
				if ($scope.calendarPage.currentDate.isSameOrBefore($scope.calendarPage.startLimitDate)) {
					swal("첫날입니다.");
				} else {
					$scope.calendarPage.currentDate.subtract(1, "days");
					$scope.calendarPage.currentDateStart.subtract(1, "days");
					$scope.calendarPage.currentDateEnd.subtract(1, "days");
					calendarObj.fullCalendar("gotoDate", $scope.calendarPage.currentDate);
					
					$scope.setCurrentBackgroundEvent();
					
					renderingEventToMap();
				}
			},
			toNextDay: function () {
				if ($scope.calendarPage.currentDate.isSameOrAfter($scope.calendarPage.endLimitDate.startOf("day"))) {
					swal("마지막날 입니다.");
					// TODO 일정추가 물어보기
				} else {
					$scope.calendarPage.currentDate.add(1, "days");
					$scope.calendarPage.currentDateStart.add(1, "days");
					$scope.calendarPage.currentDateEnd.add(1, "days");
					calendarObj.fullCalendar("gotoDate", $scope.calendarPage.currentDate);
					
					$scope.setCurrentBackgroundEvent();
					
					renderingEventToMap();
				}
			}
		};
		
		
		/** ==================================================== */
		/** TODO 구글맵 */
		/** ==================================================== */
		// 맵 설정 변수
		var infowindow;
		var markers = [];
		var map;
		var labels = '123456789';
		var labelIndex = 0;
		var flightPath = null;
		
		// 맵 이닛 함수
		function initMap() {
			var myLatlng = new google.maps.LatLng(37.4963799255, 127.0265547405);
			var mapOptions = {
				center : myLatlng,
				zoom : 8
			};
			map = new google.maps.Map(document.getElementById("map"), mapOptions);
		}
		
		// 선긋기
		function addLocationInfo(eventList) {
			var locationInfos = [];
			for (var i = 0; i < eventList.length; i++) {
				var locationInfo = {
					lat : Number(eventList[i].mapY),
					lng : Number(eventList[i].mapX)
				}
				locationInfos.push(locationInfo);
			}

			flightPath = new google.maps.Polyline({
				path : locationInfos,
				geodesic : true,
				strokeColor : '#46c0fb',
				strokeOpacity : 0.8,
				strokeWeight : 3
			});
			flightPath.setMap(map);
			
			// 위치정보에 따라 맵 범위 설정
			var bounds = new google.maps.LatLngBounds();
			if (eventList.length == 0) {
				bounds.extend(new google.maps.LatLng(37.5, 127.1000000000));
				bounds.extend(new google.maps.LatLng(35, 127.0265547405));
			}
			for (var i = 0; i < eventList.length; i++) {
				var locationInfo = {
					lat : Number(eventList[i].mapY),
					lng : Number(eventList[i].mapX)
				}
				bounds.extend(locationInfo);
			}
			map.fitBounds(bounds);

		}
		
		// 선지우기
		function removePath() {
			flightPath.setMap(null);
		}
		
		// 마커 이벤트
		function drop(eventList) {
			clearMarkers();
			labelIndex = 0;
			for (var i = 0; i < eventList.length; i++) {
				addMarkerWithTimeout(eventList[i], i * 50);
			}
		}
		
//		function openDetailTourSpot (contentId) {
//			// 누를때 http로 디테일 정보 요청(param : contentId)
//			$scope.detailTourSpot = contentId;
//			console.log(contentId);
//			$("#detailTourSpotModal").modal("show");
//		};
		
		// 마커 1초후에 찍어주기
		function addMarkerWithTimeout(event, timeout) {
			var locationPosition = {
				lat : Number(event.mapY),
				lng : Number(event.mapX)
			}
			window.setTimeout(function() {
				// 마커
				var marker = new google.maps.Marker({
					position : locationPosition,
					map : map,
					animation : google.maps.Animation.DROP,
					label : labels[labelIndex++ % labels.length],
					title : event.title
				});

				markers.push(marker);
				
				// TODO 인포윈도우 꾸미기
				var content = '<a style="text-decoration: none; font-weight: bold" href="#1">'
						+ event.title
						+ '</a>';
				infowindow = new google.maps.InfoWindow();
				marker.addListener('mouseover', function() {
					infowindow.close();
					infowindow.setContent(content);
					infowindow.open(map, marker);
				})
				console.log(event)
			}, timeout);
		}

		// 마커 클리어
		function clearMarkers() {
			for (var i = 0; i < markers.length; i++) {
				markers[i].setMap(null);
			}
			markers = [];
		}
		
		// 일정표 지도에 렌더링
		function renderingEventToMap() {
			var currentEventList = $scope.getCurrentDateCalendarEvents();
			if (flightPath) {
				removePath();
			}
			addLocationInfo(currentEventList);
			drop(currentEventList);
		}
		

  })
  
	