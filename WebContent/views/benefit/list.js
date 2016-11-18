		
		function benefitList(e) {
			console.log("in benefitList")
 			console.log(e);
 			console.dir(e);
 			
 			var obj = new Object();
 			obj.page = e;
 			
 			$.ajax({
				type : "GET",
				url : "http://localhost:8081/benefit/list",
				dataType : 'json',
				data : obj,
				error : function (err) {
					alert("에러");
				},
				success : function(result) {
					console.dir(result);
					listPrint(result);
				}
 			})
		}

		
		
		function listPrint(data) {
			console.log("in listPrint");
			console.dir(data);
			
			var item = data.page;
			var pageMaker = data.pageMaker;
 			page = pageMaker.endPage;
			console.log("item.length : " + item.length);
			console.log("page : " + page);
						
			var list = $("#list");
			var html = "";
			for (var i = 0; i < item.length; i++) {
				var v = item[i];
				if (i % 4 == 0) {
					console.log(i);
					html += "<ul class='list-unstyled row'>";
				}
			
				html += "<li class='col-sm-3 col-xs-6 md-margin-bottom-30'>";
				html += "<div class='team-img'>";
				html += "<a href='#' onclick='goDetail(this)' data-value='" + v.benefitNo + "'>";
				html += "<img class='img-responsive' src='" + v.imageUrl + "' alt=''  style='width:263px; height:174px'>";
				html += "</a>";
				html += "</div>";
				html += "<dl>";
				html += "<dt>" + v.title + "</dt>";
				html += "<dd>";
				html += "<span>" + v.sapceText + "</span>";
				html += "</dd>";
				html += "</li>";
				html += "</dl>";
				
				if (i % 4 == 3) { html += "</ul>";}
			}
			
			list.html(html);
		}
		
		
		function goDetail(e) {
			console.log(e.getAttribute("data-value"));
			
			var benefitno = e.getAttribute("data-value");
						
			var url = "http://localhost:80/rscamper-web/views/benefit/detail.jsp?benefitno=" + benefitno;
			$(e).attr('href', url);
		}
		
		benefitList();