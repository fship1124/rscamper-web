
function contentCreate(no) {
	var obj = new Object();
	obj.no = no;

	$.ajax({
		type : "POST",
		url : myConfig.homeUrl + "/together/detail",
		dataType : 'json',
		data : obj,
		error : function(err) {
			alert("에러");
		},
		success : function(result) {
			console.log(result);
			if (!result) {
				alert("비밀글입니다.");
				javascript: history.back(-1);
			}

			var d = new Date(result.regDate);
			var mon = d.getMonth() + 1;

//			var html = "";
//			html += "<th colspan='2'>";
//			html += result.title2;
//			html += "</th>";
//			html += "<th>";
//			html += d.getFullYear() + "-" + prependZero(mon, 2) + "-"
//					+ prependZero(d.getDate(), 2);
//			html += "</th>";
//
//			$("thead").html(html);
//
//			html = "";
//			html += "<td colspan='3' style='height:300px;'>";
//			html += result.content;
//			html += "</td>";
//			$("tbody").html(html);
			
			
			/////////////////////////////////////////////////////
			$("#together-title").html("<h2>" + result.title2 + "</h2>");
			$("#together-regdate").html("작성일 : " + d.getFullYear() + "-" + prependZero(mon, 2) + "-" + prependZero(d.getDate(), 2));
			$("#together-content").html(result.content);
			/////////////////////////////////////////////////////
		}
	});
}

function prependZero(num, len) {
	while (num.toString().length < len) {
		num = "0" + num;
	}
	return num;
}

