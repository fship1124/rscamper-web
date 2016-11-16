function commentList() {
			$.ajax({
				url : 'http://localhost:8081/main/all',
				method : 'GET',
				dataType : 'json',
				success : function(result) {
					commentFn(result);
				}
			});
		}
		
		
		$("#commentBtn").click(function() {
			var uid = firebase.auth().currentUser.uid;
			var comment = $("#inputComment").val();

			$.ajax({
				url : 'http://localhost:8081/main/' + uid + '/' + comment,
				method : 'PUT',
				dataType : 'json',
				success : function(result) {
					$("#inputComment").val("");					
					commentFn(result);
				}
			});
		});
		

		function commentFn(data) {
			var cList = $("#comment-list");
			console.dir(data);
			
			cList.html("");
			for (var i = 0; i < data.length; i++) {
				var m = data[i];
				var html = "";
				html += "<div style='margin: 10px;'>";
				html += "<img src='../assets/img/user.jpg' style='width:40px; height:40px'>";
				html += "<span style='margin-left: 20px;'>";
				html += m.mainContent;
				html += "</span>";
				html += "</div>"	
				cList.append(html);
			}
		}
		
		
		commentList();