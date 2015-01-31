
var document_ready = function() {
	$("#item_type_action").change(function(event) {
		if ($(this).val() == "activity") {
			$("#item_false_id").parent(".form-group").hide();
			$("[for=item_true]").text("Next");
		}else{
			$("#item_false_id").parent(".form-group").show();
			$("[for=item_true]").text("True");
		};
	});
};

$(document).ready(document_ready);
