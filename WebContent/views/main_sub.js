
	// 추천콘텐츠 ajax
	var benefitList = $("#benefitList");
//	console.log("#benefitList :");
//	console.dir(benefitList);
	var html4 = "";
	$.ajax({
		url : "http://localhost:8081/main/benefitList",
		dataType : "json",
		type : "GET",
		success: function(result) {
	//		console.log(result); // 다들어왓고
			for(var i = 0; i < 15; i++) {
				var data = result[i];
	//			console.log(data);
	//			console.log(i); // 찍히고
				html4 += "<div class='col-md-4' style='height: 300px;'>";
				html4 += "<div class='thumbnails thumbnail-style thumbnail-kenburn'>";
				html4 += "	<div class='thumbnail-img'>";
				html4 += "		<div class='overflow-hidden'>";
				html4 += "			<img class='img-responsive' src='http://lorempixel.com/218/180/city/"+(i+1)+"'>";
				html4 += "		</div>";
				html4 += "			<a class='btn-more hover-effect' href='#'>자세히</a>";
				html4 += "	</div>";
				html4 += "	<div class='caption'>";
				html4 += "		<h3>";
				html4 += "			<a class='hover-effect' href='#'>"+ data.info +"</a>";
				html4 += "		</h3>";
				html4 += "		<p>"+ data.title +"</p>";
				html4 += "</div>";
				html4 += "</div>";
				html4 += "</div>";
				benefitList.html(html4);
			}
			
		},
		err: function() {
			alert("에러");
		}	
	});
		
	// 광관지, 맛집, 숙소 ajax
	
	var touristList = $("#touristList");
	var foodList = $("#foodList");
	var lodegeList = $("#lodegeList");
	var html1 = "";
	var html2 = "";
	var html3 = "";
	$.ajax({
		url : "http://localhost:8081/main/touristList",
		dataType : "json",
		type : "GET",
		success : function(result) {
		//	console.log("result :"); 확인완료
		//	console.log(result);    확인완료
		//	html += "<h2 class='title-v4'>관광지</h2>";
			for(var i = 0; i < result.length; i++) {
				var data = result[i];
		//		console.log(data);
				if(data.contenttypeid == 12){
				//	console.log(data.contenttypeid);
					if(data.status == 'on'){
					//	console.log(data);
						html1 += "<div class='blog-thumb margin-bottom-20'>";
						html1 += "	<div class='blog-thumb-hover'>";
						html1 += "		<img src="+ data.firstimage +" style='width: 160px; height: 150px;'>";
						html1 += "		<a class='hover-grad' href='#'>";
						html1 += "			<i class='fa fa-photo'></i>";
						html1 += "		</a>";
						html1 += "	</div>";
						html1 += "	<div class='blog-thumb-desc'>";
						html1 += "		<h3>";
						html1 += "			<a href='#'>"+ data.addr1 +"</a>";
						html1 += "		</h3>";
						html1 += "	</div>";
						html1 += "</div>";
					}
				}
				touristList.html(html1);
				
				if(data.contenttypeid == 39){
					//	console.log(data.contenttypeid);
						if(data.status == 'on'){
					//		console.log(data);
							html2 += "<div class='blog-thumb margin-bottom-20'>";
							html2 += "	<div class='blog-thumb-hover'>";
							html2 += "		<img src="+ data.firstimage +" style='width: 160px; height: 150px;'>";
							html2 += "		<a class='hover-grad' href='#'>";
							html2 += "			<i class='fa fa-photo'></i>";
							html2 += "		</a>";
							html2 += "	</div>";
							html2 += "	<div class='blog-thumb-desc'>";
							html2 += "		<h3>";
							html2 += "			<a href='#'>"+ data.addr1 +"</a>";
							html2 += "		</h3>";
							html2 += "	</div>";
							html2 += "</div>";
						}
					}
					foodList.html(html2);
					
				if(data.contenttypeid == 32){
				//	console.log(data.contenttypeid);
						if(data.status == 'on'){
				//			console.log(data);
						html3 += "<div class='blog-thumb margin-bottom-20'>";
						html3 += "	<div class='blog-thumb-hover'>";
						html3 += "		<img src="+ data.firstimage +" style='width: 160px; height: 150px;'>";
						html3 += "		<a class='hover-grad' href='#'>";
						html3 += "			<i class='fa fa-photo'></i>";
						html3 += "		</a>";
						html3 += "	</div>";
						html3 += "	<div class='blog-thumb-desc'>";
						html3 += "		<h3>";
						html3 += "			<a href='#'>"+ data.addr1 +"</a>";
						html3 += "		</h3>";
						html3 += "	</div>";
						html3 += "</div>";
					}
				}
				lodegeList.html(html3);
			}	
		},
		err : function() {
			alert("에러");
		}
	});
	
	var tourPlanList = $("#tourPlanList");
	var html5 = "";
	$.ajax({
		url : "http://192.168.0.9:8081/tourPlan/select/tourPlanList/likeCnt",
		dataType : "json",
		type : "GET",
		success : function(result) {
//			console.log("here~~~~");
//			console.dir(result);
			for(var i = 0; i < result.length; i++) {
				var data = result[i];
				html5 += "<div class='col-md-4' style='height: 300px;'>";
				html5 += "<div class='thumbnails thumbnail-style thumbnail-kenburn'>";
				html5 += "	<div class='thumbnail-img'>";
				html5 += "		<div class='overflow-hidden'>";
				
				if (data.filePath) {
					html5 += "			<img class='img-responsive' src="+ data.filePath +" style='width: 218px; height: 180px;'>";
				} else {
					html5 += "			<img class='img-responsive' src='http://lorempixel.com/218/180/city/"+(i+1)+"' style='width: 218px; height: 180px;'>";
				}
				html5 += "		</div>";
				html5 += "			<a class='btn-more hover-effect' href='#'>자세히</a>";
				html5 += "	</div>";
				html5 += "	<div class='caption'>";
				html5 += "		<h3>";
				html5 += "			<a class='hover-effect' href='plan/detail.jsp?recordNo="+ data.recordNo +"'>"+ data.title +"</a>";
				html5 += "		</h3>";
				html5 += "		<p>"+ data.displayName +"</p>";
				html5 += "</div>";
				html5 += "</div>";
				html5 += "</div>";
				
				tourPlanList.html(html5);
			}
		},
		err : function() {
			alert("에러");
		}
	});

	// 출발역, 도착역 ajax 처리
	var projects = new Array();
	
		$.ajax({
			url : "http://localhost:8081/main/mainTrainList",
			dataType : "json",
			type : "GET",
			success: function(result) {
				console.log("기차 :")
				console.log(result);
				
				autocompleteFn(result);
			},
			err: function() {
				alert("에러");
			}
		});
	
		function autocompleteFn(obj) {
			for (var i = 0; i < obj.length; i++) {
				var item = obj[i];
				var project = new Object();
				project.value = item.trainId;
				project.label = item.stationTitle;
				projects.push(project);
			}
			
//			console.log("projects : ");
//			console.dir(projects);
		} 
		
		// 출발역 autocomplete
		$(function() {
			$("#startStation").autocomplete({
				minLength : 0,
				source : projects,
				focus : function(event, ui) {
					console.log("focus");
					$("#startStation").val(ui.item.label);
					return false;
				},
				select : function(event, ui) {
					console.log("select");
					$("#startStation").val(ui.item.label);
					$("#startStation-id").val(ui.item.value);
					return false;
				}
			}).autocomplete("instance")._renderItem = function(ul, item) {
				console.log("instance");
				return $("<li>").append(
						"<div>" + item.label + "</div>").appendTo(ul);
			};

		});
		// 도착역 autocomplete
		$(function() {
			$("#arriveStation").autocomplete({
				minLength : 0,
				source : projects,
				focus : function(event, ui) {
					console.log("focus");
					$("#arriveStation").val(ui.item.label);
					return false;
				},
				select : function(event, ui) {
					console.log("select");
					$("#arriveStation").val(ui.item.label);
					$("#arriveStation-id").val(ui.item.value);
					return false;
				}
			}).autocomplete("instance")._renderItem = function(ul, item) {
				console.log("instance");
				return $("<li>").append(
						"<div>" + item.label + "</div>").appendTo(ul);
			};

		});
	
	// 조회버튼  
	function mainTimeSearch() {
		
		var trainGradeCode = $("input[name=radio]:checked").val();
		var depPlaceId = $("input[name=depPlaceId]").val();
		var arrPlaceId = $("input[name=arrPlaceId]").val();
		var depPlandTime = $("input[name=depPlandTime]").val();
		var numOfRows = $("input[name=numofRows]").val();
		var pageNo = $("input[name=pageNo]").val();
		var startPage = $("input[name=startPage]").val();
		var pageSize = $("input[name=pageSize]").val();
		var depPlandTime = depPlandTime.split('-');
		var depPlandTime = depPlandTime[0] + depPlandTime[1]
				+ depPlandTime[2];

//		console.log(trainGradeCode);

		var obj = new Object();
		obj.trainGradeCode = trainGradeCode;
		obj.depPlaceId = depPlaceId;
		obj.arrPlaceId = arrPlaceId;
		obj.depPlandTime = depPlandTime;
		obj.numOfRows = 999;
		obj.pageNo = 1;
		obj.startPage = 1;
		obj.pageSize = 999;

//		console.dir(obj);
		
		$.ajax({
			url : "http://localhost:8081/trainTime/time",
			type : "GET",
			dataType : 'json',
			data : obj,
			err : function() {
				console.log(err);
			},
			success : function(result) {
				console.log("여기로!!!!");
				console.log(result);
				 
		//		var data = JSON.parse(data);
		//		timeList(data);

			}
		});
		
	}
		
//	function mainTimeSearch(e) {
//		
//		var params = $("form[id=mainTimeList]").serialize();
//		
//		$.ajax({
//			url: "http://localhost/rscamper-web/views/train/trainInfo.jsp",
//			type: "GET",
//			dataType: "json",
//			data: params,
//			success: function(result) {
//				console.log("여기로들어옴?");
//				console.log(result);
//			
//			},
//			err: function() {
//				alert("에러");
//			}
//		});
//	}	
		
		
		
		
		
		
		