	function typeChange(contenttypeid, cat1Value){
			var index =$("select[name=contenttypeid]").index(contenttypeid);
			var typeid = $(contenttypeid).val();	
		    var params = {"contenttypeid":typeid ,"langtype":"KOR"};
			
		    $.ajax({
		    	url : "http://api.visitkorea.or.kr/guide/typeServiceCodeAjax.do",
		        type: "post",
		        dataType: "json",
		        data : params,
		        success:function(data){
		    		console.dir(data);
		        	$("select[name=cat1]:eq("+index+")").empty();	        	
		        	$("select[name=cat1]:eq("+index+")").append("<option value=''>대분류</option>");
		        	
		        	for(var  i = 0;  i < data.list.length; i ++){	        		
		        		if(cat1Value == data.list[i].cat1){
		        			$("select[name=cat1]:eq("+index+")").append("<option value='"+data.list[i].cat1+"' selected>"+ data.list[i].catname1 +"</option>");
		        		}else{
		        			$("select[name=cat1]:eq("+index+")").append("<option value='"+data.list[i].cat1+"'>"+ data.list[i].catname1 +"</option>");
		        		}
		        	}
		        },
				error:function(args){
					alert("dateserviceCodeAjax:error:"+request+"status:"+status+"error:"+error);
				}
		    });
		}
		
		
		
		function getCat2List(cat1 , initFlag, cat2Value, cat3Value){
			var index = $("select[name=cat1]").index(cat1);		
		    var params = {"cat1":$(cat1).val() ,"langtype":"KOR"};	    
		    
		    if( $(cat1).val() == ""){
		    	$("select[name=cat2]:eq("+index+")").empty();	        	
	        	$("select[name=cat2]:eq("+index+")").append("<option value=''>중분류</option>");
	        	
	        	$("select[name=cat3]:eq("+index+")").empty();
	        	$("select[name=cat3]:eq("+index+")").append("<option value=''>소분류</option>");
		    	return;
		    }
		    
		    $.ajax({
		    	url : "http://api.visitkorea.or.kr/guide/serviceCodeAjax.do",
		        type: "post",
		        dataType: "json",
		        data : params,
		        success:function(data){	        	
		        	$("select[name=cat2]:eq("+index+")").empty();	        	
		        	$("select[name=cat2]:eq("+index+")").append("<option value=''>중분류</option>");
		        	
		        	$("select[name=cat3]:eq("+index+")").empty();
		        	$("select[name=cat3]:eq("+index+")").append("<option value=''>소분류</option>");
		        	
		        	
		        	for(var  i = 0;  i < data.list.length; i ++){	        		
		        		if(cat2Value == data.list[i].cat2){
		        			$("select[name=cat2]:eq("+index+")").append("<option value='"+data.list[i].cat2+"' selected>"+ data.list[i].catname2 +"</option>");
		        		}else{
		        			$("select[name=cat2]:eq("+index+")").append("<option value='"+data.list[i].cat2+"'>"+ data.list[i].catname2 +"</option>");
		        		}
		        	}
		        		    
		        	if( initFlag == "N") {	        		
			    		getCat3List(	$("select[name=cat2]:eq("+index+")") , initFlag, cat3Value);
		        	}else{
		        		getCat3List(	$("select[name=cat2]:eq("+index+")") , initFlag, cat3Value);
		        	}
		        },
				error:function(args){
					   alert("serviceCodeAjax:error:"+request+"status:"+status+"error:"+error);
				}
		    });
		}
		
		
		// 서비스 분류 소분류
		function getCat3List(cat2, initFlag, selectedValue){
			var index = $("select[name=cat2]").index(cat2);
		    var params = {"cat2":$(cat2).val() ,"langtype":"KOR"};	    		
		    
		    if( $(cat2).val() == ""){        	
	        	$("select[name=cat3]:eq("+index+")").empty();
	        	$("select[name=cat3]:eq("+index+")").append("<option value=''>소분류</option>");
		    	return;
		    }
		    
		    $.ajax({
		    	url : "http://api.visitkorea.or.kr/guide/serviceCodeAjax.do",
		        type: "post",
		        dataType: "json",
		        data : params,
		        success:function(data){
		        	$("select[name=cat3]:eq("+index+")").empty();	        	
		        	$("select[name=cat3]:eq("+index+")").append("<option value=''>소분류</option>");
		        	
		        	for(var  i = 0;  i < data.list.length; i ++){	        		
		        		if (selectedValue == data.list[i].cat3) {
		        			$("select[name=cat3]:eq("+index+")").append("<option value='"+data.list[i].cat3+"' selected>"+ data.list[i].catname3 +"</option>");
		        		} else {
		        			$("select[name=cat3]:eq("+index+")").append("<option value='"+data.list[i].cat3+"'>"+ data.list[i].catname3 +"</option>");
		        		}
		        	}
		        	
		        	if( initFlag == "N") {
		        	}else{
		        		$("select[name=cat3]:eq("+index+") > option").each(function(){	    				
		    				if( $(this).val() == selectedValue){
		    					$(this).attr("selected","selected");	    	
		    				}
		    			});	
		        	}	        	
		        },
				error:function(args){
					alert("serviceCodeAjax2:error:"+request+"status:"+status+"error:"+error);
				}
		    });
		}		
		
		
		function tourList(e) {
			var contenttypeid = '32';
			var areaCode = $("select[name=areacode]").val();
			var sigunguCode = $("select[name=sigungucode]").val();
			var cat1 = 'B02';
			var cat2 = 'B0201';
			var cat3 = $("select[name=cat3]").val();
			var pageNo = e;
			
			console.log(areaCode);
			console.log(sigunguCode);
			
			
			var params = new Object();
			params.contentTypeid = contenttypeid;
			params.areaCode = areaCode;
			params.sigunguCode = sigunguCode;
			params.cat1 = cat1;
			params.cat2 = cat2;
			params.cat3 = cat3;
			params.pageNo = pageNo;
			
		    $.ajax({
		    	url : "http://localhost:8081/tour/api/list",
		        type: "get",
		        dataType: "json",
		        data : params,
		        success:function(data){
		        	console.dir(data);
		        	
		        	var data = JSON.parse(data);
		        	listPrint(data)
		        	
		        	pageing(data);
		        },
				error:function(args){
					alert("serviceCodeAjax2:error:"+request+"status:"+status+"error:"+error);
				}
		    });
		};
		
		
		function pageing(data) {
			var body = data.response.body;
			var totalCount = body.totalCount;
			console.log("totalCount : " + totalCount);
			
			var displayPageNum = 10;
			var page = body.pageNo;
			var numOfRows = body.numOfRows;
			var endPage = Math.ceil(page / displayPageNum) * displayPageNum;
			var startPage = (endPage - displayPageNum) + 1;
			
			var tempEndPage = Math.ceil(totalCount / numOfRows);
			
			if (endPage > tempEndPage) {
				endPage = tempEndPage;
			}
			
			var prev = startPage == 1? false : true;
			var next = endPage * numOfRows >= totalCount ? false : true;
			console.log("displayPageNum : " + displayPageNum);
			console.log("page : " + page);
			console.log("endPage : " + endPage);
			console.log("prev : " + prev);
			console.log("next : " + next);
			
			html = "";
			var pageination = $(".pagination");
			
 			if (prev) {
				html += "<li class='page-item'>";
				html += "<a class='page-link' href='#' aria-label='Previous'>";
				html += "<span aria-hidden='true' onclick=previousNextFn('P') >&laquo;</span>";
				html += "<span class='sr-only'>Previous</span>";
				html += "</a>";
				html += "</li>";
			}

			for (var i = startPage; i <= endPage; i++) {
				html += "<li class='page-item'>";
				html += "<a href='#' onclick= tourList(this.text)>" + i + "</a>";
				html += "</li>";
			}

			if (next && endPage > 0) {
				html += "<li class='page-item'>";
				html += "<a class='page-link' href='#' aria-label='Next'>";
				html += "<span aria-hidden='true' onclick=previousNextFn('N') >&raquo;</span>";
				html += "<span class='sr-only'>Next</span>";
				html += "</a>";
				html += "</li>";
			}
			pageination.html(html);
		} 
		
		
		// 지역 
		function getSigunguList(areacode){    
			console.log(areacode);
			initFlag = 'N';
			var langtype = 'KOR';			
		    var params = {"areacode":areacode,"langtype":langtype};
		    	    
		    $.ajax({
		    	url : "http://api.visitkorea.or.kr/search/signguCodeAjax.do",
		        type: "post",
		        dataType: "json",
		        data : params,
		        success:function(data){
		        	console.dir(data);
		        	$("select[name=sigungucode]").empty();	        	
		        	$("select[name=sigungucode]").append("<option value=''>시군구 선택</option>");
		        	
		        	for(var  i = 0;  i < data.list.length; i ++){	        		
		        		$("select[name=sigungucode]").append("<option value="+data.list[i].signguCode+">"+ data.list[i].signguNm +"</option>");
		        	}
		        	
		        	if( initFlag == "N") {
		        		// 시군구 selected	        	
			    		$("select[name=sigungucode] > option").each(function(){
			    			if( $(this).val() == ""){
			    				$(this).attr("selected","selected");
			    			}	    			
			    		});
		        	}
		        	
		        },
				error:function(args){
					//alert('error' + args);
				}
		    });
		}
		
		
		function listPrint(data) {
			console.log("in listPrint");
			console.dir(data);
			
			var item = data.response.body.items.item;
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
				html += "<a href='#' onclick='goDetail(this)' data-value1='" + v.contentid + "' data-value2='" + v.contenttypeid + "'>";
				html += "<img class='img-responsive' src='" + v.firstimage2 + "' alt=''  style='width:263px; height:174px'>";
				html += "</a>";
				html += "</div>";
				html += "<h3>" + v.title + "</h3>";
				html += "<h4>" + v.addr1 + "</h4>";
				html += "</li>";
				
				if (i % 4 == 3) { html += "</ul>";}
			}
			
			list.html(html);
		}


		function goDetail(e) {
			console.log(e.getAttribute("data-value1"));
			console.log(e.getAttribute("data-value2"));
			
			var url = "http://localhost:80/rscamper-web/views/tour/detail.jsp?contentid=" + e.getAttribute("data-value1") + "&contenttypeid=" + e.getAttribute("data-value2");
			$(e).attr('href', url);
		}