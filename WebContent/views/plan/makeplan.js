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
//				console.log(response);
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


		/** ==================================================== */
		/** TODO 여행일정 저장/취소  								 */
		/** ==================================================== */
		/*	저장요소
		 *  전체정보 : record_tb
		 *  일정정보 : record_schedule_tb
		 */
		
		// 저장버튼 이벤트
		$scope.saveTourPlan = function () {
			console.log($scope.tourPlan);
			console.log($scope.getAllCalendarEvents());
			var tourPlanScheduleList = $scope.getAllCalendarEvents()
			
			$http({
				url: MyConfig.backEndURL + "/tourPlan/update/tourPlan",
				method: "POST",
				data: $.param($scope.tourPlan),
				headers: { "Content-Type": "application/x-www-form-urlencoded; charset=UTF-8" }
			}).success(function (result) {
				for (var i = 0, len = tourPlanScheduleList.length; i < len; i++) {
					var tps = tourPlanScheduleList[i]
					console.log(tps.start);
					if (!tps.locationNo) {
						var tourPlanSchedule = {
							contentCode: tps.contentId,
							recordNo: tps.recordNo,
							title: tps.spotTitle,
							imageUrl: tps.imageUrl,
//							detailDepartureDate: tps.start.toDate(),
//							detailArriveDate: tps.end.toDate(),
							contentTypeId: tps.contentTypeId,
							mapX: tps.mapX,
							mapY: tps.mapY
						}
					} else {
						var tourPlanSchedule = {
								locationNo: tps.locationNo,
								contentCode: tps.contentId,
								recordNo: tps.recordNo,
								title: tps.spotTitle,
								imageUrl: tps.imageUrl,
//								detailDepartureDate: tps.start.toDate(),
//								detailArriveDate: tps.end.toDate(),
								contentTypeId: tps.contentTypeId,
								mapX: tps.mapX,
								mapY: tps.mapY
						}
					}
					
					$http({
						url: MyConfig.backEndURL + "/tourPlan/insert/tourPlanSchedule",
						method: "POST",
						data: $.param(tourPlanSchedule),
						headers: { "Content-Type": "application/x-www-form-urlencoded; charset=UTF-8" }
					}).success(function (result) {
						
					}).error(function (error) {
						console.log(error);
					})
				}
				
			}).error(function (error) {
				console.log(error);
			})
			
		}
		
		// 취소버튼 이벤트
		$scope.cancelTourPlan = function () {
			swal("redirecting...");
			$window.location.href = "detail.jsp?recordNo=" + RequestService.getParameter("recordNo");
		}
		
		/** ==================================================== */
		/** 제목 바꾸기 */
		/** ==================================================== */
		// 제목바꾸기 시작 이벤트
		$scope.changeTitle = function () {
			$scope.modTitle = true;
		}
		
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
		}
		
		/** ==================================================== */
		/** 배경사진 바꾸기 */
		/** ==================================================== */
		// TODO 배경사진 바꾸기 버튼 호버 이벤트
		
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
//					console.log(response);
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
		
		// 장소리스트 ng-repeat 완료 함수 : 드래그 이벤트 걸어주기
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
			
			console.log($scope.currentDateTourSpotEvents);
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
				editable: true,
				droppable: true,
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
				
				// 삭제 버튼 주기
				eventRender: function(event, element) { 
					if (event.id != "currentDate" && event.id != "availableDate") {
						element.find(".fc-bg").css("pointer-events","none");
					    element.append("<div style='position:absolute;bottom:0px;right:0px'><button type='button' id='btnDeleteEvent' class='btn btn-block btn-primary btn-flat'>X</button></div>" );
					    element.find("#btnDeleteEvent").click(function(){
					         $('#calendar').fullCalendar('removeEvents',event._id);
					    });
					}
				},
				// 이벤트 추가시 콜백
			    eventReceive: function(event) {
			    	$scope.getAllCalendarEvents();
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
				}
			}
		};


        
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
  
	