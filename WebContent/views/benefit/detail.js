		function contentCreate(obj) {
			
			$.ajax({
				type : "GET",
				url : "http://localhost:8081/benefit/detail",
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
		
		