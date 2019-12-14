<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<script type="text/javascript">
<script>
$(document).ready(
    function () 
    {
	    $('table tbody tr  td').on('click', function () {
        $("#myModal").modal("show");
        $("#txtfname").val($(this).closest('tr').children()[0].textContent);
        $("#txtlname").val($(this).closest('tr').children()[1].textContent);
	});
});
</script>
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<table id="example" class="table table-condensed table-hover table-bordered" width="100%">
			<thead>
				<tr>
					<th>Name</th>
					<th>Position</th>
					<th>Office</th>
					<th>Age</th>
					<th>Salary</th>
				</tr>
			</thead>

			<tfoot>
				<tr>
					<th>Name</th>
					<th>Position</th>
					<th>Office</th>
					<th>Age</th>
					<th>Salary</th>
				</tr>
			</tfoot>

			<tbody>
				<tr>
					<td>Tiger Nixon</td>
					<td>System Architect</td>
					<td>Edinburgh</td>
					<td>61</td>
					<td>$3,120</td>
				</tr>
				<tr>
					<td>Nixon Tiger</td>
					<td>System Architect</td>
					<td>London</td>
					<td>61</td>
					<td>$3,120</td>
				</tr>
			</tbody>
		</table>
				<div class="modal fade" id="myModal">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						<h4 class="modal-title">EDIT</h4>
					</div>
					<div class="modal-body">
						<p>
							<input type="text" class="input-sm" id="txtfname" />
						</p>
						<p>
							<input type="text" class="input-sm" id="txtlname" />
						</p>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
						<button type="button" class="btn btn-primary">Save changes</button>
					</div>
				</div>
				<!-- /.modal-content -->
			</div>
			<!-- /.modal-dialog -->
		</div>
	</div>
</body>
</html>