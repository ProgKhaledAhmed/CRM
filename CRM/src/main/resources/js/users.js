console.log("Hello", "World");
$(document).ready(function() {
	$('table tbody tr #editBtnId').on('click', function() {
		$("#firstname").val($(this).closest('tr').children()[0].textContent);
		$("#lastname").val($(this).closest('tr').children()[1].textContent);
		$("#username").val($(this).closest('tr').children()[2].textContent);
		$("#email").val($(this).closest('tr').children()[3].textContent);
		$("#gender").val($(this).closest('tr').children()[4].textContent);
		$("#lastname").val($(this).closest('tr').children()[1].textContent);
		$("#firstname").val($(this).closest('tr').children()[0].textContent);
		$("#lastname").val($(this).closest('tr').children()[1].textContent);
		$("#firstname").val($(this).closest('tr').children()[0].textContent);
		$("#lastname").val($(this).closest('tr').children()[1].textContent);
		$("#firstname").val($(this).closest('tr').children()[0].textContent);
		$("#editModalDialog").modal("show");
	});
}
/*
 * function(){ $('table tbody tr #editBtnId').on('click', function (e) { var
 * userId = $(e.relatedTarget).data('${user.id}'); $.ajax({ type : "GET", url :
 * "/editUser/"+ userId, contentType : 'application/json', success :
 * function(data) { if (data.status==200){ //I have to pass to modal the
 * data.body alert('--- success ---'); } else { //show error alert('--- failure
 * ---'); } }, error : function(data) {
 *  } }); $("#editModalDialog").modal("show"); }); }
 */
);