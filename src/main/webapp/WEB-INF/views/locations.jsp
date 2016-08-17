<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<jsp:directive.include file="include_header_scripts.jsp" />
	<title>location</title>
</head>
<body>

<jsp:include page="header.jsp"></jsp:include>

	<div class="container-fluid">
	<div class="row">
	
		<jsp:include page="leftNavigation.jsp">
			<jsp:param value="areaManagementMenu" name="selectMenuItem"/>
		</jsp:include>
	
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
			
			<h2> Location List </h2>
			<h3> Area name : ${areaName} </h3> <br>
			
			<table class="table able-striped table-bordered table-hover" id="locationTable">
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
			        <button type="submit" class="btn btn-primary btn-sm" onclick="formSubmit('addLocationForm')" data-dismiss="modal" id="addBtn" >Add</button>
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
			        <button type="submit" class="btn btn-primary btn-sm" onclick="formSubmit('updateLocationForm')" data-dismiss="modal" >Update</button>
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

	$('#locationTable').contextmenu({
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

$(document).ready(function() {
    
	$('#locationTable').DataTable({
        dom: 'l<"toolbar">frtip',
        initComplete: function(){
           $("#locationTable_filter").append('&nbsp <button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#addLocationModal" >'+
					'<span class="glyphicon glyphicon-plus" ></span> Add </button>'); 
			$("#locationTable_length").css("float","left");
        }
     });
    
    var importFile = document.getElementById("import");
	importFile.onclick = function () {
	    this.value = null;
	};
	
	importFile.onchange = function () {
	    var notificationMessage = this.value.substr((this.value).lastIndexOf('\\')+1)+" imported successfully"
	    showNotification(notificationMessage)
	};
} );
</script>
<jsp:directive.include file="include_body_scripts.jsp" />
</body>
</html>