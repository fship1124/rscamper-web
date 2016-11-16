jQuery(document).ready(function() {
	App.init();
	
	$(function() {
		$("#day-range").slider({
			range : true,
			min : 1,
			max : 30,
			values : [ 1, 30 ],
			slide : function(event, ui) {
				$("#day-range-value").val(ui.values[0] + "일 - " + ui.values[1] + "일");
			}
		});
		$("#day-range-value").val($("#day-range").slider("values", 0) + "일 - " + $("#day-range").slider("values", 1) + "일");
	});
});

