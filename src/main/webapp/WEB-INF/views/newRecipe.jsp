<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<jsp:directive.include file="include_header_scripts.jsp" />
	<title>New Recipe</title>
</head>
<body style="margin: 0">
<jsp:include page="header.jsp"></jsp:include>
	 
	<div class="container-fluid">
	<div class="row">
		
		<jsp:include page="leftNavigation.jsp">
			<jsp:param value="recipeManagementMenu" name="selectMenuItem"/>
		</jsp:include>
		
		<div class="col-sm-10">
		<div id="notificationArea">
				<div id="notification">
					<c:if test="${not empty message}">
						<div class="alert alert-success" >
						  <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
						  ${message}
						</div>
					</c:if>
				</div>
			</div>
				<h2>Steps List</h2><br>
				<button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#stepModel" >
				<span class="glyphicon glyphicon-plus" ></span> Add Step</button>
			<table class="table table-striped table-bordered table-hover" id="newRecipeTable">
		    <thead>
		      <tr>
		      	<th>Step #</th>
		      	<th>Type</th>
		        <th>Action</th>
		      </tr>
		    </thead>
		    <tbody>
		      <tr>
		      	<td>1</td>
		        <td>Equipement Selection</td>
		        <td>
		        	<p><a href="#">Edit</a>&nbsp;/&nbsp;<a href="#">Delete</a></p>
		        </td>
		      </tr>
		      <tr>
		      	<td>2</td>
		        <td>Material Selection</td>
		        <td>
		        	<p><a href="#">Edit</a>&nbsp;/&nbsp;<a href="#">Delete</a></p>
		        </td>
		      </tr>
	     	  <tr>
		      	<td>3</td>
		        <td>Verification Instruction</td>
		        <td>
		        	<p><a href="#">Edit</a>&nbsp;/&nbsp;<a href="#">Delete</a></p>
		        </td>
		      </tr>
		      <tr>
		      	<td>4</td>
		        <td>Standing Instruction</td>
		        <td>
		        	<p><a href="#">Edit</a>&nbsp;/&nbsp;<a href="#">Delete</a></p>
		        </td>
		      </tr>
		    </tbody>
		  </table>
			  <div id="stepModel" class="modal fade" role="dialog">
				  <div class="modal-dialog">
				    <div class="modal-content">
				      <div class="modal-header">
				        <button type="button" class="close" data-dismiss="modal">&times;</button>
				        <h4 class="modal-title">Add Step</h4>
				      </div>
				     
			     		<form action="addStep" method="post" id="stepForm">
				     
					      <div class="modal-body">
					        <div class="form-group">
						      <label >Step Library:</label>
					      <select id="selectedStep" class="form-control" name="Recipe">
					      		<option value=""></option>
								<option value="Equipement Selection">Equipement Selection</option>
								<option value="Material Selection">Material Selection</option>
								<option value="Standing Instruction">Standing Instruction</option>
								<option value="Verification Instruction">Verification Instruction</option>
							</select>
						    </div>
					      </div>
					      <div class="modal-footer">
					        <button type="submit" class="btn btn-primary btn-sm" onclick="formSubmit('stepForm')" data-dismiss="modal" id="nextBtn" >Next</button>
					      </div>
				      
				      </form>
				    </div>
				  </div>
				</div>
		</div>
	</div>
</div>
<script>

$(function () {
	$('#newRecipeTable').contextmenu({
        target: '#context-menu',
        scopes: 'tbody > tr',
        onItem: function (row, e) {
            var name = $(row.children('*')[0]).text();
            var action = $(e.target).text();
        	var notificationMessage = "";
            showNotification(notificationMessage)
        }
    });
});

$(document).ready(function() {
	$('#newRecipeTable').DataTable({
		 "paging":   false,
		 "searching": false,
        initComplete: function(){
        	$("#newRecipeTable_filter").append('&nbsp '); 
			$("#newRecipeTable_length").css("float","left");
        }
     });
});
</script>
<jsp:directive.include file="include_body_scripts.jsp" />
</body>
</html>