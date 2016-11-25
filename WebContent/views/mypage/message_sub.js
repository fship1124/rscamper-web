

function note_list_create() {
	alert("1");
	
	$.ajax({
		url : myConfig.imsiServerUrl + '/note/list_note',
		method : 'GET',
		dataType : 'json',
		success : function(result) {
			
			alert("success");
			
			
			
		}
	})
}






note_list_create();