
function changThanhPho(tinhThanhPho){
	$.ajax({
		type : "POST",
		url : "change-tp",
		data : {thanhpho:tinhThanhPho.value},
		dataType : 'html',
		timeout : 100000,
		success : function(data) {
			$("#quanHuyen").html(data);
		},
		error : function(e) {
			console.log("ERROR: ", e);
		}
	});
}

