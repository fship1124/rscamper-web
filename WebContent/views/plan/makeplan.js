angular.module("TourPlanApp")
	.controller("MakePlanController", function ($rootScope, $scope, $http, MyConfig) {
		// TODO: recordNo로 파라미터 받은 값으로 일정 정보 불러옴
		// TODO: 불러온 일정정보 uid값이 $rootScope.user와 같은지 확인 : 같으면 진행, 아니면 오류 메세지 띄우고 일정 리스트 페이지로 이동
		
		
	    // 일정표 생성 및 옵션
		var dp = new DayPilot.Calendar("dp");
	    dp.startDate = "2016-06-05";
	    dp.viewType = "3Days";
	    dp.durationBarVisible = false;
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
	    
	    // 일정 이동시 바인딩
	    dp.onEventResized = function (args) {
            $scope.$apply(function() {
            	$scope.scheduleList = dp.events.list;
            });
		}
	    
	    // 크기 조정시 바인딩
	    dp.onEventMoved = function (args) {
            $scope.$apply(function() {
            	$scope.scheduleList = dp.events.list;
            });
	    }
	    
        // 일정 생성
        dp.onTimeRangeSelected = function (args) {
            var name = prompt("New event name:", "Event");
            if (!name) return;
            var event = {
            		start: args.start,
                    end: args.end,
                    id: DayPilot.guid(),
                    text: name
            }
            console.log(new DayPilot.Event(event));
            dp.events.add(new DayPilot.Event(event));
            dp.clearSelection();
            
            // 리스트에 바인딩 시키기
            $scope.$apply(function() {
            	$scope.scheduleList = dp.events.list;
            });
        };

        // 일정 클릭 이벤트(해당 관광지정보 상세보기 이벤트 주기)
        dp.onEventClick = function (args) {
        	// 상세보기
        };
        
        // TODO : 일정 커스터마이징 정리해야함
	    dp.onBeforeEventRender = function(args) {
	        if (args.data.tags && args.data.tags.type === "important"){
		    	switch (args.data.tags.type) {
		    	case "important":
		            args.data.html = "<b>Important Event</b><br>" +
		            		"<button ng-click='delSchedule(this);'>삭제</button>" +
		            		"" + args.data.text;
		            args.data.fontColor = "#fff";
		            args.data.backColor = "#E06666";
		    		break;
		    	case "":
		    		
		    	
		    	}
	        }
	    };

	    // 일정표 시작
	    dp.init();
	    
	    // TODO: 일정 지우기
	    $scope.delSchedule = function (args) {
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
        
  })

