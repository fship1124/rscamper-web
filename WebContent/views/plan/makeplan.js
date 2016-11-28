angular.module("TourPlanApp")
	.controller("MakePlanController", function ($rootScope, $scope, $http, $window, MyConfig, RequestService) {
		/** ==================================================== */
		/** TODO 여행일정 데이터 불러오기 */
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
			}
			return result;
		};
		
		// 출발시간 변경시 이벤트
		angular.element("#departureDate").change( function() {
            $scope.$apply(function() {
            	$scope.tourPlan.period = $scope.convertDate($scope.tourPlan.departureDate, $scope.tourPlan.arriveDate);
            });
		});
		
		// 도착시간 변경시 이벤트
		angular.element("#arriveDate").change( function() {
            $scope.$apply(function() {
            	$scope.tourPlan.period = $scope.convertDate($scope.tourPlan.departureDate, $scope.tourPlan.arriveDate);
            });
		});
		
		
		$scope.getTourPlan();


		/** ==================================================== */
		/** TODO 여행일정 저장/취소  								 */
		/** ==================================================== */
		/*	저장요소
		 *  전체정보 : record_tb
		 *  일정정보 : record_schedule_tb
		 */
		$scope.saveTourPlan = function () {
			swal("저장");
			console.log($scope.tourPlan);
		}
		
		$scope.cancelTourPlan = function () {
			swal("취소");
			// TODO 일정 디테일 페이지로 리다이렉트
		}
		
		
		/** ==================================================== */
		/** TODO 제목 바꾸기 */
		/** ==================================================== */
		$scope.changeTitle = function () {
			swal("제목변경");
		}
		
		/** ==================================================== */
		/** TODO 배경사진 바꾸기 */
		/** ==================================================== */
		// 배경 파일 업로드 이미지 미리보기 이벤트
		$('#BGImageFile').on('change', function(){
			if(img_validation(this)) {
				readURL(this, $('#BGImage'));
			} else {
				$(this).val("");
				$('#BGImage').attr('src', '/rscamper-web/resources/img/default/default-image.png');
			};
		});
		
		// 배경 사진 변경 모달창 열기
		$scope.changeTourPlanBGImage = function () {
			$scope.uploadBGUrl = MyConfig.backEndURL + "/tourPlan/upload/coverImage"
			$("#BGImageFile").val("");
			$('#BGImage').attr('src', '/rscamper-web/resources/img/default/default-image.png');
			$('#BGImageUploadFormModal').modal('show');
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
		
		
//		$scope.recordNo = RequestService.getParameter("recordNo");
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
	        		$('#BGImage').attr('src', '/rscamper-web/resources/img/default/default-image.png');
	        		$('#BGImageUploadFormModal').modal('hide');
					
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
			$('#detailTourSpotModal').modal('show');
		}
		
		// 장소 리스트 가져오기
		// TODO 정보 리스트 제대로 된것 가져오기
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
				angular.forEach(response.tourSpotList, function (spot) {
					$scope.tourSpotList.push(spot);
				})					
				$scope.totalPages = response.totalPages;
				
//				console.log($scope.tourSpotList);
//				console.log(response.totalPages);
			}).error(function (error) {
				console.log(error);
			});
		};
		
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
		/** 일정표관련 */
		/** ==================================================== */
	    // 일정표 생성 및 옵션
		var dp = new DayPilot.Calendar("dp");
	    dp.startDate = "2016-06-05";
	    dp.viewType = "3Days";
	    dp.durationBarVisible = true;
	    dp.heightSpec = "Full";

	    // 일정 디폴트 더미 데이터
	    $scope.scheduleList = [{
	        "start": "2016-06-05T10:00:00",
	        "end": "2016-06-05T13:00:00",
	        "id": "23ef6fcd-e12d-b085-e38a-a4e23d0bb61d",
	        "text": "석모도",
	        "tags": {
	            "type": "sight"
	        }
	    }, {
	        "start": "2016-06-06T11:00:00",
	        "end": "2016-06-06T14:00:00",
	        "id": "fb62e2dd-267e-ec91-886b-73574d24e25a",
	        "text": "통영맛집",
	        "tags": {
	            "type": "rest"
	        }
	    }, {
	        "start": "2016-06-07T10:00:00",
	        "end": "2016-06-07T13:00:00",
	        "id": "29b7a553-d44f-8f2c-11e1-a7d5f62eb123",
	        "text": "더존팬션",
	        "tags": {
	            "type": "bed"
	        }
	    }, {
	        "start": "2016-06-07T14:00:00",
	        "end": "2016-06-07T17:00:00",
	        "id": "ff968cfb-eba1-8dc1-7396-7f0d4f465c8a",
	        "text": "이동",
	        "tags": {
	            "type": "important"
	        }
	    }];
	    
	    // 일정표 일정 리스트에 초기 바인딩
	    dp.events.list = $scope.scheduleList;
	    
	    
        // 일정 생성
        dp.onTimeRangeSelected = function (args) {
            swal({
	    	  title: "새 여행 일정",
	    	  text: "여행 일정 명을 쓰세요",
	    	  type: "input",
	    	  showCancelButton: true,
	    	  closeOnConfirm: true,
	    	  inputPlaceholder: "여행 일정 명"
	    	},
	    	function(inputValue){
	    	  if (inputValue === false) return false;
	    	  
	    	  if (inputValue === "") {
	    	    swal.showInputError("아무것도 입력을 안하셨습니다!");
	    	    return false
	    	  }
	    	  var name = inputValue;
	          if (!name) return;
	          var event = {
	        		  start: args.start,
	        		  end: args.end,
	        		  id: DayPilot.guid(),
	        		  text: name,
	        		  tags: {
	        			  "type" : "custom"
	        		  }
	          }
	          dp.events.add(new DayPilot.Event(event));
	          dp.clearSelection();
	            
	            // 리스트에 바인딩 시키기
	            $scope.$apply(function() {
	            	$scope.scheduleList = dp.events.list;
	            });
	    	});
        };
	    
	    // 일정 이동시 이벤트
	    dp.onEventResized = function (args) {
	    	// 바인딩
            $scope.$apply(function() {
            	$scope.scheduleList = dp.events.list;
            });
            // 드랍이벤트
            addSchedulDropEvent();
		}
	    
	    // 일정 이동시 이벤트
	    dp.onEventMoved = function (args) {
            $scope.$apply(function() {
            	$scope.scheduleList = dp.events.list;
            });
	    }

        // TODO 일정 클릭 이벤트(해당 관광지정보 상세보기)
        dp.onEventClick = function (args) {
        	// 상세보기
        };
        
	    
	    // TODO 일정 지우기
	    var delSchedule = function (args) {
	    	console.log("지우기")
        	// 상세보기 / 지우기 / 취소
            if(confirm("지울래")) {
            	dp.events.remove(args.e);
            }
            // 리스트에 바인딩 시키기
            $scope.$apply(function() {
            	$scope.scheduleList = dp.events.list;
            });
        };
        
        // TODO 일정표 드랍 이벤트
        var addSchedulDropEvent = function () {
        	$(".calendar_default_cell").on("drop", function (event) {
        		console.log(event);
        	})
        	$(".calendar_default_cell").on("dragover", function () {
        		return false;
        	})
        }
        
        // TODO : 일정 커스터마이징 정리해야함
	    dp.onBeforeEventRender = function(args) {
	        if (args.data.tags && args.data.tags.type){
		    	switch (args.data.tags.type) {
		    	case "important":
		            args.data.html = "<b>중요일정</b><br>" + args.data.text;
		            args.data.fontColor = "#fff";
		            args.data.backColor = "#E06666";
		            args.data.borderColor = "#CC0000";
		    		break;
		    	case "sight":
		    		args.data.html = "<b>관광지</b><br>" + args.data.text;
		    		args.data.fontColor = "#fff";
		    		args.data.backColor = "#FFE599";
		    		args.data.borderColor = "#F1C232";
		    		break;
		    	case "rest":
		    		args.data.html = "<b>음식점</b><br>" + args.data.text;
		    		args.data.fontColor = "#fff";
		    		args.data.backColor = "#9FC5E8";
		    		args.data.borderColor = "#3D85C6";
		    		break;
		    	case "bed":
		    		args.data.html = "<b>숙박업소</b><br>" + args.data.text;
		    		args.data.fontColor = "#fff";
		    		args.data.backColor = "#B6D7A8";
		    		args.data.borderColor = "#6AA84F";
		    		break;
		    	case "custom":
		            args.data.html = "<b>기타일정</b><br>" + args.data.text;
		            args.data.fontColor = "#fff";
		            args.data.backColor = "#EA9999";
		            args.data.borderColor = "#CC0000";
		    		break;
		    	}
	        }
	    };

	    // 일정표 시작
	    dp.init();
	    addSchedulDropEvent();

        
  })
  
/** ==================================================== */
/** TODO 구글맵 */
/** ==================================================== */
function initMap() {
	  var map = new google.maps.Map(document.getElementById('map'), {
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
	      infoWindow.setContent('공사중');
	      map.setCenter(pos);
	    }, function() {
	      handleLocationError(true, infoWindow, map.getCenter());
	    });
	  } else {
	    // Browser doesn't support Geolocation
	    handleLocationError(false, infoWindow, map.getCenter());
	  }
}

function handleLocationError(browserHasGeolocation, infoWindow, pos) {
	infoWindow.setPosition(pos);
	infoWindow.setContent(browserHasGeolocation ?
		'Error: The Geolocation service failed.' :
		'Error: Your browser doesn\'t support geolocation.');
}
  
	