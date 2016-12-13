		function contentCreate(obj) {
			
			$.ajax({
				type : "GET",
				url : myConfig.homeUrl + "/benefit/detail",
				dataType : 'json',
				data : obj,
				error : function(err) {
					alert("에러");
				},
				success : function(result) {
					console.log(result);
					console.dir(result);
					
					var content = $(".content");
					
					content.html(result.content);
				}
			});
		}
		
		