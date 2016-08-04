<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css"	rel="stylesheet">
	<%-- <link href="${pageContext.request.contextPath}/resources/css/customized.css"	rel="stylesheet"> --%>
	<script	src="${pageContext.request.contextPath}/resources/js/jquery-1.9.1.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/bootstrap-contextmenu.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/alert.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
	<script type="text/javascript">
		function addLocationSubmit(){
			document.getElementById("addLocationForm").submit();
		}
		function updateLocationSubmit(){
			document.getElementById("updateLocationForm").submit();
		}
	</script>
	<title>location</title>
</head>
<body>

<jsp:include page="header.jsp"></jsp:include>

	<div class="container-fluid">
	<div class="row">
	
		<div class="col-sm-2">
			<ul class="nav nav-pills nav-stacked">
			    <li><a href="#">Home</a></li>
			    <li><a href="${pageContext.request.contextPath}/material">Material </a></li>
			    <li><a href="${pageContext.request.contextPath}/inventory">Inventory </a></li>
			    <li><a href="${pageContext.request.contextPath}/order">Order Management </a></li>
			    <li class="active"><a href="${pageContext.request.contextPath}/areaManagement">Area Management </a></li>
			 </ul>
		</div>
	
		<div class="col-sm-10">
		
			<ol class="breadcrumb">
			  <li><a href="#">Home</a></li>
			  <li class="active"><a href="${pageContext.request.contextPath}/areaManagement">Area management </a></li>
			  <li>Locations</li>
			  
			</ol>
			
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
			
			<h2> Location List </h2><br>
			<h3> Area name : ${areaName} </h3>
			
			<div align="right">
			    <button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#addLocationModal" >
					<span class="glyphicon glyphicon-plus" ></span> Add
				</button>
			</div>
			
			<table class="table table-hover" id="materialTable">
		    <thead>
		      <tr>
		      	<th>Location ID</th>
		      	<th>Location Name</th>
		      </tr>
		    </thead>
		    <tbody>
		      <tr>
		      	<td>LA001</td>
		      	<td>Location 1</td>
		      </tr>
		     <tr>
		      	<td>LA002</td>
		      	<td>Location 2</td>
		      </tr>
	     	 <tr>
		      	<td>LA003</td>
		      	<td>Location 3</td>
		      </tr>
		    </tbody>
		  </table>
		  
		 <div id="context-menu">
	      	<ul class="dropdown-menu" role="menu">
	           <li><a tabindex="-1">Edit</a></li>
	           <li><a tabindex="-1">Remove</a></li>
	      	</ul>
	      </div>
	      
	      
	      <div id="addLocationModal" class="modal fade" role="dialog">
			  <div class="modal-dialog">
			    <div class="modal-content">
			      <div class="modal-header">
			        <button type="button" class="close" data-dismiss="modal">&times;</button>
			        <h4 class="modal-title">Modal Header</h4>
			      </div>
			     
			     <form action="addLocation" method="post" id="addLocationForm">
			     
			      <div class="modal-body">
			        
			        <div class="form-group">
				      <label >Location ID :</label>
				      <input type="text" class="form-control" id="locationId" placeholder="Location ID">
				    </div>
				    
			        <div class="form-group">
				      <label >Location Name :</label>
				      <input type="text" class="form-control" id="locationName" placeholder="Location name">
				    </div>
				    
			      </div>
			     
			      <div class="modal-footer">
			        <button type="submit" class="btn btn-primary" onclick="addLocationSubmit()" data-dismiss="modal" id="addBtn" >Add</button>
			      </div>
			      </form>
			    </div>
			  </div>
			</div>
	      
	      <div id="updateLocationModal" class="modal fade" role="dialog">
			  <div class="modal-dialog">
			    <div class="modal-content">
			      <div class="modal-header">
			        <button type="button" class="close" data-dismiss="modal">&times;</button>
			        <h4 class="modal-title">Modal Header</h4>
			      </div>
			     
			     <form action="updateLocation" method="post" id="updateLocationForm">
			     
			      <div class="modal-body">
			        
			        <div class="form-group">
				      <label >Location ID :</label>
				      <input type="text" class="form-control" id="locationId" placeholder="Location ID">
				    </div>
				    
			        <div class="form-group">
				      <label >Location Name :</label>
				      <input type="text" class="form-control" id="locationName" placeholder="Location name">
				    </div>
				    
			      </div>
			     
			      <div class="modal-footer">
			        <button type="submit" class="btn btn-primary" onclick="updateLocationSubmit()" data-dismiss="modal" >Update</button>
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

	$('#materialTable').contextmenu({
        target: '#context-menu',
        scopes: 'tbody > tr',
        onItem: function (row, e) {
            var name = $(row.children('*')[1]).text();
            var action = $(e.target).text();
        	
        	var notificationMessage = "";
        	
            if(action == "Edit"){
            	$('#updateLocationModal').on('show.bs.modal', function (event) {
            		var modal = $(this)
            		modal.find('.modal-title').text("Edit Location")
            		modal.find('.modal-body #locationId').val($(row.children('*')[0]).text())
          		  	modal.find('.modal-body #locationName').val($(row.children('*')[1]).text())
          		  	modal.find('.modal-body #actionValue').val("updateLocation")
           		 	modal.find('.modal-footer button').html("Update")
            	})
            	$('#updateLocationModal').modal('toggle');
            }else if(action == "Remove"){
            	notificationMessage = name + " removed successfully";
            }
            showNotification(notificationMessage)
            
            //alert('You right clicked on ' + name + '\'s row and selected menu item "' + action  + '".');
        }
    });
});

function showNotification(notificationMessage){
	
	//Remove Existing Notification
    var notification = document.getElementById("notification");
	if (notification != null) {
		notification.parentNode.removeChild(notification);
	}
	
	if(notificationMessage != ""){
    	
        var div = document.createElement("div");
        div.id = "notification"
        div.innerHTML = '<div class="alert alert-success" >'
		  	+ '<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>'
		  	+ notificationMessage
			+ '</div>';
        
        document.getElementById("notificationArea").appendChild(div);
    }
}
</script>

</body>
</html>