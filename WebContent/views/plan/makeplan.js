angular.module("TourPlanApp")
	.controller("MakePlanController", function ($rootScope, $scope, $http, MyConfig) {
		/** ==================================================== */
		/** TODO 여행일정 데이터 불러오기 */
		/** ==================================================== */
		// recordNo로 파라미터 받은 값으로 일정 정보 불러옴
		// 불러온 일정정보 uid값이 $rootScope.user와 같은지 확인 : 같으면 진행, 아니면 오류 메세지 띄우고 일정 리스트 페이지로 이동

		/** ==================================================== */
		/** TODO 여행일정 저장하기 */
		/** ==================================================== */
		
		/** ==================================================== */
		/** TODO 제목 바꾸기 */
		/** ==================================================== */
		
		/** ==================================================== */
		/** TODO 배경사진 바꾸기 */
		/** ==================================================== */
		
		/** ==================================================== */
		/** TODO 예산 */
		/** ==================================================== */
		// TODO 예산창 폼 구성
		

		
		/** ==================================================== */
		/** 관광지정보 리스트 */
		/** ==================================================== */
		/** contentId
		 *  관광지 : 12, 14, 15, 25, 28
		 *  음식점 : 39
		 *  숙박업소 : 32
		 */
		// TODO 검색결과 0일경우 생기는 버그 잡기
		// TODO 정보 리스트 제대로 된것 가져오기
		
		// 무한 스크롤 이벤트
		angular.element("#searchContent").scroll( function() {
			var elem = angular.element("#searchContent");
			if ( elem[0].scrollHeight - elem.scrollTop() == elem.outerHeight()) {
				$scope.getSpotList();
			}
		});
		
		// 장소 리스트 가져오기
		$scope.getSpotList = function () {
			if ($scope.spotParams.pageNo >= $scope.totalPages) {
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
				
				console.log($scope.tourSpotList);
				console.log(response.totalPages);
				$scope.totalPages = response.totalPages;
				
				if ($scope.totalPages == 0) {
					$scope.initSpotList("all");
				}
			}).error(function (error) {
				console.log(error);
			});
		};
		
		// 전체
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
	        "text": "관광지",
	        "backColor": "#FFE599",
	        "borderColor": "#F1C232"
	    }, {
	        "start": "2016-06-06T11:00:00",
	        "end": "2016-06-06T14:00:00",
	        "id": "fb62e2dd-267e-ec91-886b-73574d24e25a",
	        "text": "음식점",
	        "backColor": "#9FC5E8",
	        "borderColor": "#3D85C6"
	    }, {
	        "start": "2016-06-07T10:00:00",
	        "end": "2016-06-07T13:00:00",
	        "id": "29b7a553-d44f-8f2c-11e1-a7d5f62eb123",
	        "text": "숙박업소",
	        "backColor": "#B6D7A8",
	        "borderColor": "#6AA84F"
	    }, {
	        "start": "2016-06-07T14:00:00",
	        "end": "2016-06-07T17:00:00",
	        "id": "ff968cfb-eba1-8dc1-7396-7f0d4f465c8a",
	        "text": "기타",
	        "backColor": "#EA9999",
	        "borderColor": "#CC0000",
	        "tags": {
	            "type": "important"
	        }
	    }];
	    
	    // 일정표 일정 리스트에 초기 바인딩
	    dp.events.list = $scope.scheduleList;
	    
        // 일정 생성
        dp.onTimeRangeSelected = function (args) {
        	console.log(args);
            var name = prompt("New event name:", "Event");
            if (!name) return;
            var event = {
            		start: args.start,
                    end: args.end,
                    id: DayPilot.guid(),
                    text: name
            }
            dp.events.add(new DayPilot.Event(event));
            dp.clearSelection();
            
            // 리스트에 바인딩 시키기
            $scope.$apply(function() {
            	$scope.scheduleList = dp.events.list;
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
        
        // TODO : 일정 커스터마이징 정리해야함
	    dp.onBeforeEventRender = function(args) {
	        if (args.data.tags && args.data.tags.type === "important"){
		    	switch (args.data.tags.type) {
		    	case "important":
		            args.data.html = "<b>기타일정</b><br>" +
		            		"" + args.data.text;
		            args.data.fontColor = "#fff";
		            args.data.backColor = "#E06666";
		    		break;
		    	case "":
		    		
		    	
		    	}
	        }
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
	      infoWindow.setContent('Location found.');
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
  
	