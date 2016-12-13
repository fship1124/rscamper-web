		
	function apiAjax(obj) {
//		var obj = new Object();
//		obj.contentid = ${param.contentid};
//		obj.contenttypeid = ${param.contenttypeid};
		$.ajax({
			type : "GET",
			url : myConfig.homeUrl + "/tour/api/detail",
			dataType : 'json',
			data : obj,
			error : function(err) {
				alert("에러");
			},
			success : function(result) {
				console.log("apiAjax");
				console.log(result);
				
					var data = JSON.parse(result);
				console.dir(data);
				contentCreate(data);
			}
		});
	}
	
	
	function contentCreate(data) {
		console.log("contentCreate");
		var data1 = JSON.parse(data[0]);
		var data2 = JSON.parse(data[1]);
		var data3 = JSON.parse(data[2]);
		var data4 = JSON.parse(data[3]);
		
		console.dir(data1);
		console.dir(data2);
		console.dir(data3);
		console.dir(data4);
		
		var item1 = data1.response.body.items.item;
		var item2 = data2.response.body.items.item;
		var item3 = data3.response.body.items.item;
		var item4 = data4.response.body.items.item;
		
		var content = $(".content");
		content.find("h4").html(item1.title);
		
		var tab1 = $(".tab1");
		var tab2 = $(".tab2");
		var tab3 = $(".tab3");
		var tab4 = $(".tab4");
		var content2 = $(".content2");
		
		var html = "";
		html += "<li><strong>우편번호 : </strong>" + item1.zipcode + "</li>";
		html += "<li><strong>주소 : </strong>" + item1.addr1 + " " + item1.addr2 + "</li>";
		tab1.html(html);
		
		html = "";
		html += "<li>" + item2.expguide + "</li>";
		html += "<li>" + item2.infocenter + "</li>";
		tab2.html(html);
		
		html = "";
		html += "<li>" + item1.homepage + "</li>";
		tab3.html(html);
		
		html = "";
		html += "<li>" + item3.infoname + "</li>";
		html += "<li>" + item3.infotext + "</li>";
		tab4.html(html);
		content2.find("h2").html(item1.title);
		content2.find("p").html(item1.overview);
		content2.find(".panel-body").html(item1.overview);
		
		// 이미지 동적 생성
		imageProcess(item4);
		
	}
	
	var endpage = 0;
	
	function imageProcess(item) {
		var mainImg = $(".ms-brd");
		var panel = $(".bottom_slider_panel");
		var html = "";
		
		var widthPx = item.length * 120;
		panel.css("width", widthPx + "px");
		
		for (var i = 0; i < item.length; i++) {
			var m = item[i];
			if (i == 0) { mainImg.attr("src", m.originimgurl); }
			
			html += "<img src='" + m.originimgurl + "' class='bottom_slider_image' onclick='imageFnc(this)' style='width: 100px; height: 75px; float: left; margin: 5px 5px'>";
		}
		
		var portion = parseInt(item.length / 4);
		
		if (item.length % 4 != 0) {
			portion += 1;
		}
		
		endpage = portion;
		panel.html(html);
	}
	
	
	var locationVal = 1;
	
	function bottomMove(flag) {
		var w = 0;
		if (flag == 1) {
			if (locationVal == 1) {
				locationVal = 1;
			} else {
				locationVal -= 1;
			}
			w = - (locationVal - 1) * 440; 
		} else {
			if (locationVal == endpage) {
				locationVal = endpage;
			} else {
				locationVal += 1;
			}
			w = - (locationVal - 1) * 440; 
		}
		
		$('.bottom_slider_panel').animate({ left: w}, 'slow');
	}
	
	function imageFnc(e) {
		 $(".ms-brd").attr("src", e.src); 
	}
	
	
