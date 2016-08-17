<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<jsp:directive.include file="include_header_scripts.jsp" />
	<title>Area Management</title>
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
			  <li>Area management</li>
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
			
			<h2 id="materialList">Area List </h2><br>
			
			<table class="table table-striped table-bordered table-hover" id="areaTable">
		    <thead>
		      <tr>
		      	<th>Area ID</th>
		      	<th>Area Name</th>
		      </tr>
		    </thead>
		    <tbody>
		      <tr>
		      	<td>AD001</td>
		      	<td>Area 1</td>
		      </tr>
		     <tr>
		      	<td>AD002</td>
		      	<td>Area 2</td>
		      </tr>
	     	 <tr>
		      	<td>AD003</td>
		      	<td>Area 3</td>
		      </tr>
		    </tbody>
		  </table>
		  
		 <div id="context-menu">
	      	<ul class="dropdown-menu" role="menu">
	           <li><a tabindex="-1">Edit</a></li>
	           <li><a tabindex="-1">Remove</a></li>
	           <li class="divider"></li>
	           <li><a tabindex="-1">View</a></li>
	      	</ul>
	      </div>
	      
	      
	      <div id="myModal" class="modal fade" role="dialog">
			  <div class="modal-dialog">
			    <div class="modal-content">
			      <div class="modal-header">
			        <button type="button" class="close" data-dismiss="modal">&times;</button>
			        <h4 class="modal-title">Add Area</h4>
			      </div>
			     
		     		<form action="addArea" method="post" id="areaForm">
			     
				      <div class="modal-body">
				        <div class="form-group">
					      <label >Area ID :</label>
					      <input type="text" class="form-control" id="areaId" placeholder="Area ID">
					    </div>
					    
				        <div class="form-group">
					      <label >Area Name :</label>
					      <input type="text" class="form-control" id="areaName" placeholder="Area name">
					    </div>
				      </div>
				     
				      <div class="modal-footer">
				        <button type="submit" class="btn btn-primary btn-sm" onclick="formSubmit('areaForm')" data-dismiss="modal" id="addBtn" >Add</button>
				      </div>
			      
			      </form>
			    </div>
			  </div>
			</div>
	      
	      
	      <div id="updateAreaModal" class="modal fade" role="dialog">
			  <div class="modal-dialog">
			    <div class="modal-content">
			      <div class="modal-header">
			        <button type="button" class="close" data-dismiss="modal">&times;</button>
			        <h4 class="modal-title">Edit Area</h4>
			      </div>
			     
		     		<form action="updateArea" method="post" id="updateArea">
			     
				      <div class="modal-body">
				        <div class="form-group">
					      <label >Area ID :</label>
					      <input type="text" class="form-control" id="areaId" placeholder="Area ID">
					    </div>
					    
				        <div class="form-group">
					      <label >Area Name :</label>
					      <input type="text" class="form-control" id="areaName" placeholder="Area name">
					    </div>
				      </div>
				     
				      <div class="modal-footer">
				        <button type="submit" class="btn btn-primary btn-sm" onclick="formSubmit('updateArea')" data-dismiss="modal" >Update</button>
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

	$('#areaTable').contextmenu({
        target: '#context-menu',
        scopes: 'tbody > tr',
        onItem: function (row, e) {
            var name = $(row.children('*')[1]).text();
            var action = $(e.target).text();
        	
        	var notificationMessage = "";
        	
            if(action == "Edit"){
            	$('#updateAreaModal').on('show.bs.modal', function (event) {
            		var modal = $(this)
            		modal.find('.modal-body #areaId').val($(row.children('*')[0]).text())
          		  	modal.find('.modal-body #areaName').val($(row.children('*')[1]).text())
            	})
            	$('#updateAreaModal').modal('toggle');
            }else if(action == "Remove"){
            	notificationMessage = name + " removed successfully";
            }else if(action == "View"){
            	
            	window.location.href = location.href.substr(0, (location.href).lastIndexOf('/'))+"/locations?areaName="+name;
            }            
            showNotification(notificationMessage)
            
            //alert('You right clicked on ' + name + '\'s row and selected menu item "' + action  + '".');
        }
    });
});

$(document).ready(function() {
    
	$('#areaTable').DataTable({
        dom: 'l<"toolbar">frtip',
        initComplete: function(){
          	$("#areaTable_filter").append('&nbsp <button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#myModal" >'+
					'<span class="glyphicon glyphicon-plus" ></span> Add </button>'); 
			$("#areaTable_length").css("float","left");
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