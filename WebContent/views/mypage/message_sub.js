console.log(myConfig.imsiServerUrl);
var user = sessionStorageService.getObject("user");
    

function note_list(e) {
	console.dir(user);
	var obj = new Object();
	obj.uid = user.userUid;
	obj.page = e;
	
	$.ajax({
		url : myConfig.imsiServerUrl + '/note/list',
		method : 'GET',
		dataType : 'json',
		data : obj,
		success : function(result) {
			console.dir(result);
			listCreate(result);
			
			$.ajax({
				url : myConfig.imsiServerUrl + '/note/sent-list',
				method : 'GET',
				dataType : 'json',
				data : obj,
				success : function(result) {
					console.dir(result);
					sentListCreate(result);
				}
			})
		}
	})
}

function sentListCreate(data) {
	console.log("in sentListCreate");
	console.dir(data);
	
	var p = data.page;
	var pageMaker = data.pageMaker;
	page = pageMaker.endPage;
	var html = "";
	
	for (var i = 0; i < p.length; i++) {
		var item = p[i];
	
		html += "<tr id=note-list-" + item.notesNo + " style='border-top:1px solid gray;'>";
		html += "<td style='padding: 10px;'>";
		html += "<input type='checkbox'>";
		
		if (item.recvRead == 'N') {
			html += "<span class='glyphicon glyphicon-envelope' aria-hidden='true' style='margin-left: 30px;'></span>";
		} else {
			html += "<span class='glyphicon glyphicon-ok' aria-hidden='true' style='margin-left: 30px;'></span>";
		}
		
		html += "<img src='" + item.photoUrl + "'";
		html += "alt='...' class='img-thumbnail' style='width: 70px; height: 70px; margin-left: 10px;'>";
		html += "</td>";
		html += "<td style='padding: 10px;'>";
		html += "<a title='displayName' href='#''>";
		html += "<span class='spr l8'>";
		html += "<span class='blind'>" + item.displayName + "</span>";
		html += "</span>";
		html += "</a>";
		html += "<br>";
		html += "<span>" + item.dateSent + "</span>";
		html += "</td>";
		html += "<td style='padding: 10px;'>";
		html += "<span><strong>" + item.title + "</strong></span>";
		html += "<br>";
		html += "<div style='display: inline-block; width: 350px; white-space: nowrap; overflow: hidden; text-overflow: ellipsis;'>" + item.content + "</div>";
		html += "</td>";
		html += "</tr>";
	
	}	
	$("#sent-tbody").html(html);
}



function listCreate(data) {
	console.log("in listCreate");
	console.dir(data);
	var p = data.page;
	var pageMaker = data.pageMaker;
	page = pageMaker.endPage;
	var html = "";
	
	for (var i = 0; i < p.length; i++) {
		var item = p[i];
		html += "<tr id=note-list-" + item.notesNo + " style='border-top:1px solid gray;'>";
		html += "<td style='padding: 10px;'>";
		html += "<input type='checkbox'>";
		
		if (item.recvRead == 'N') {
			html += "<span class='glyphicon glyphicon-envelope' aria-hidden='true' style='margin-left: 30px;'></span>";
		} else {
			html += "<span class='glyphicon glyphicon-ok' aria-hidden='true' style='margin-left: 30px;'></span>";
		}
		
		html += "<img src='" + item.photoUrl + "'";
		html += "alt='...' class='img-thumbnail' style='width: 70px; height: 70px; margin-left: 10px;'>";
		html += "</td>";
		html += "<td style='padding: 10px;'>";
		html += "<a title='displayName' href='#''>";
		html += "<span class='spr l8'>";
		html += "<span class='blind'>" + item.displayName + "</span>";
		html += "</span>";
		html += "</a>";
		html += "<br>";
		html += "<span>" + item.dateSent + "</span>";
		html += "</td>";
		html += "<td style='padding: 10px;'>";
		html += "<span><strong>" + item.title + "</strong></span>";
		html += "<br>";
		html += "<div style='display: inline-block; width: 350px; white-space: nowrap; overflow: hidden; text-overflow: ellipsis;'>" + item.content + "</div>";
		html += "</td>";
		html += "</tr>";
	}
	$("#recv-tbody").html(html);
	
	html = "";
	
		var pageination = $(".pagination");
		console.dir(pageMaker.prev);
		if (pageMaker.prev) {
		html += "<li class='page-item'>";
		html += "<a class='page-link' href='#' aria-label='Previous'>";
		html += "<span aria-hidden='true' onclick=previousNextFn('P') >&laquo;</span>";
		html += "<span class='sr-only'>Previous</span>";
		html += "</a>";
		html += "</li>";
	}

	for (var i = pageMaker.startPage; i <= pageMaker.endPage; i++) {
		html += "<li class='page-item'>";
		html += "<a href='#' onclick= note_list(this.text)>" + i + "</a>";
		html += "</li>";
	}

	if (pageMaker.next && pageMaker.endPage > 0) {
		html += "<li class='page-item'>";
		html += "<a class='page-link' href='#' aria-label='Next'>";
		html += "<span aria-hidden='true' onclick=previousNextFn('N') >&raquo;</span>";
		html += "<span class='sr-only'>Next</span>";
		html += "</a>";
		html += "</li>";
	}
	pageination.html(html);
	

}


function prependZero(num, len) {
	while (num.toString().length < len) {
		num = "0" + num;
	}
	return num;
}

function previousNextFn(val) {
	console.log(val);
	console.log("page : " + page);

	if (val == 'N') {
		page = page + 1;
	} else {
		page = page - 19;
	}

	note_list(page);
}

note_list();


$('#new_note').on('click', function(){
	$('#note_send').modal('show');
});



function noteCheck(e) {
	console.dir(e);
	console.log(e.dataset.val);
	
	var v = e.dataset.val;
	var tbody = $("tbody");
	
	switch (v) {
	case 'Y': 
		for (var i = 0; i < tbody[0].children.length; i++) {
			var item = tbody[0].children[i];
			item.children[0].children[0].checked = true; 
		}
		
		break;
	case 'N': break;
	case 'E': 
		for (var i = 0; i < tbody[0].children.length; i++) {
			var item = tbody[0].children[i];
			item.children[0].children[0].checked = false; 
		}
		break;
	}
};



$('#uploadNote').on('click', function(){
	var recUid = $("#project-id").val();
	var title = $("#inputNoteSendTitle").val();
	var content = $("#inputNoteSendContent").val();
	var sendUid = user.userUid;
	
	var obj = new Object();
	obj.recvUserUid = recUid;
	obj.title = title;
	obj.content = content;
	obj.sentUserUid = sendUid;
	
	$.ajax({
		url : myConfig.imsiServerUrl + '/note/send',
		method : 'POST',
		data : obj,
		success : function(result) {
			$('#note_send').modal('hide');
		}
	})
});


console.log("user-list");
var projects = new Array();
$.ajax({
	url : myConfig.imsiServerUrl + '/note/user-list',
	method : 'GET',
	success : function(result) {
		console.log("user-list success");
		console.dir(result);
		console.log(result.length);
		
		var obj = jQuery.parseJSON(result);
		console.dir(obj);			
		
		for (var i = 0; i < obj.length; i++) {
			var item = obj[i];
			var project = new Object();
			project.value = item.userUid;
			project.label = item.email;
			project.desc = item.displayName;
			project.icon = item.photoUrl;
			
			projects.push(project);
		}
		
		console.log("projects : ");
		console.dir(projects);
	}
});





$(function() {
//	projects = [ {
//		value : "jquery",
//		label : "jQuery",
//		desc : "the write less, do more, JavaScript library",
//		icon : "jquery_32x32.png"
//	}, {
//		value : "jquery-ui",
//		label : "jQuery UI",
//		desc : "the official user interface library for jQuery",
//		icon : "jqueryui_32x32.png"
//	}, {
//		value : "sizzlejs",
//		label : "Sizzle JS",
//		desc : "a pure-JavaScript CSS selector engine",
//		icon : "sizzlejs_32x32.png"
//	} ];

//	console.log("projects : ");
//	console.dir(projects);
	$("#project").autocomplete({
		minLength : 0,
		source : projects,
		focus : function(event, ui) {
			$("#project").val(ui.item.label);
			return false;
		},
		select : function(event, ui) {
			$("#project").val(ui.item.label);
			$("#project-id").val(ui.item.value);
			$("#project-description").html(ui.item.desc);
			$("#project-icon").attr("src", ui.item.icon);

			return false;
		}
	}).autocomplete("instance")._renderItem = function(ul, item) {
		return $("<li>").append(
				"<div>" + item.label + "<br>" + item.desc + "</div>").appendTo(
				ul);
	};
});    






//
// $("#inputNoteSendUid").keyup(function(e) {
// console.dir(e);
//	
// var obj = new Object();
// obj.uid = $("#inputNoteSendUid").val();
//
// $.ajax({
// url : myConfig.imsiServerUrl + '/note/search-modal',
//		method : 'GET',
//		data : obj,
//		success : function(result) {
//			console.log("success");
//			console.log(result);
//			console.dir(result);
//			console.log(result.length);
//			  
//		
//		}
//	})
//});



