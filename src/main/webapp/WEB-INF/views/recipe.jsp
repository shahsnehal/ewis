<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page session="false"%>
<html>
<head>
	<jsp:directive.include file="include_header_scripts.jsp" />
	<title>Recipe</title>
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
			<h2>Recipe List</h2><br>
			<table class="table table-striped table-bordered table-hover" id="recipeTable">
		    <thead>
		      <tr>
		      	<th>Recipe ID</th>
		      	<th>Version</th>
		      	<th>Material ID</th>
		        <th>Action</th>
		      </tr>
		    </thead>
		    <tbody>
		      <tr>
		      	<td>REC001</td>
		      	<td>v2.0.2</td>
		        <td>MA001CE</td>
		        <td>
		        	<p><a href="#">Edit</a>&nbsp;/&nbsp;<a href="#">Inactive</a></p>
		        </td>
		      </tr>
		      <tr>
		      	<td>REC002</td>
		      	<td>v2.0.0</td>
		        <td>MA002RA</td>
		        <td>
		        	<p><a href="#">Edit</a>&nbsp;/&nbsp;<a href="#">Inactive</a></p>
		        </td>
		      </tr>
	     	  <tr>
		      	<td>REC003</td>
		      	<td>v1.8</td>
		        <td>MA003DA</td>
		        <td>
		        	<p><a href="#">Edit</a>&nbsp;/&nbsp;<a href="#">Inactive</a></p>
		        </td>
		      </tr>
		    </tbody>
		  </table>
			
		</div>
		</div>
	</div>
	<script>

$(function () {

	$('#recipeTable').contextmenu({
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
	$('#recipeTable').DataTable({
        dom: 'l<"toolbar">frtip',
        initComplete: function(){
        	$("#recipeTable_filter").append('&nbsp <a href="newRecipe" class="btn btn-primary btn-sm">'+
    				'<span class="glyphicon glyphicon-plus"></span> New Recipe'+
    				'</a>'); 
			$("#recipeTable_length").css("float","left");
        }
     });
});
</script>
<jsp:directive.include file="include_body_scripts.jsp" />
</body>
</html>