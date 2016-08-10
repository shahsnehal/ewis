<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<jsp:directive.include file="include_header_scripts.jsp" />
	<title>Order Management</title>
</head>
<body style="margin: 0">
<jsp:include page="header.jsp"></jsp:include>

	<div class="container-fluid">
	<div class="row">
	
		<div class="col-sm-2">
			<ul class="nav nav-pills nav-stacked">
			    <li><a href="#">Home</a></li>
			    <li><a href="${pageContext.request.contextPath}/material">Material </a></li>
			    <li><a href="${pageContext.request.contextPath}/inventory">Inventory </a></li>
			    <li class="active"><a href="${pageContext.request.contextPath}/order">Order Management </a></li>
			    <li><a href="${pageContext.request.contextPath}/areaManagement">Area Management </a></li>
			 </ul>
		</div>
	
		<div class="col-sm-10">
		
			<ol class="breadcrumb">
			  <li><a href="#">Home</a></li>
			  <li>Order</li>
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
			
			<h2 id="materialList">Order List </h2><br>
			
			<table class="table table-striped table-bordered table-hover" id="orderTable">
		    <thead>
		      <tr>
		      	<th>Order ID</th>
		      	<th>Order status</th>
		      	<th>Material ID</th>
		        <th>Material Name</th>
		        <th>Recipe/Version</th>
		        <th>Quantity</th>
		        <th>Begin date</th>
		        <th>End date</th>
		        <th>Created date</th>
		      </tr>
		    </thead>
		    <tbody>
		      <tr>
		      	<td>ORD001A</td>
		      	<td>New</td>
		        <td>MA001CE</td>
		        <td>Material 1</td>
		        <td>1.0</td>
		        <td>400 ml</td>
		        <td>08/03/2016 01:00 PM</td>
		        <td>09/20/2016 12:00 AM</td>
		        <td>08/01/2016 04:50 PM</td>
		      </tr>
		      <tr>
		      	<td>ORD002V</td>
		      	<td>Executed</td>
		        <td>MA002RA</td>
		        <td>Material 2</td>
		        <td>2.5</td>
		        <td>200 kg</td>
		        <td>08/03/2016 01:00 PM</td>
		        <td>09/20/2016 12:00 AM</td>
		        <td>08/01/2016 04:50 PM</td>
		      </tr>
	     	  <tr>
		      	<td>ORD003C</td>
		      	<td>Closed</td>
		        <td>MA003DA</td>
		        <td>Material 3</td>
		        <td>1.7</td>
		        <td>200 kg</td>
		        <td>08/03/2016 01:00 PM</td>
		        <td>09/20/2016 12:00 AM</td>
		        <td>08/01/2016 04:50 PM</td>
		      </tr>
		    </tbody>
		  </table>
		  
		 	<div id="context-menu">
	      	<ul class="dropdown-menu" role="menu">
            <li><a tabindex="-1">Execute</a></li>
	           <li class="divider"></li>
	           <li><a tabindex="-1">Hold Order</a></li>
	           <li><a tabindex="-1">Resume Order</a></li>
	           <li><a tabindex="-1">Close Order</a></li>
	           <li><a tabindex="-1">Delete Order</a></li>
	           <li class="divider"></li>
	           <li><a tabindex="-1">View Exception</a></li>
	           <li><a tabindex="-1">View EBR</a></li>
	           <li><a tabindex="-1">Properties</a></li>
	      	</ul>
	      </div>
	      
	      
	      <div id="myModal" class="modal fade" role="dialog">
			  <div class="modal-dialog">
			
			    <div class="modal-content">
			    	
			      <div class="modal-header">
			        <button type="button" class="close" data-dismiss="modal">&times;</button>
			        <h4 class="modal-title">Modal Header</h4>
			      </div>
			     
			      <div class="modal-body">
			        
			        <label>Order ID : </label> <span>ORD001A</span><br>
				    <label>Order status : </label> <span>New</span><br>
				    <label>Material ID :</label> <span>MA001CE</span><br>
				    <label>Material Name :</label> <span>	Material 1</span><br>
				    <label>Recipe/Version :</label> <span>ancdf</span><br>
				    <label>Quantity :</label> <span>400 ml</span><br>
				    <label>Begin date :</label> <span>08/03/2016 01:00 PM</span><br>
				    <label>End date :</label> <span>09/20/2016 12:00 AM	</span><br>
				    <label>Created date :</label> <span>08/01/2016 04:50 PM</span><br>
				    
			      </div>
			     
			      <div class="modal-footer">
			        <button type="submit" class="btn btn-primary btn-sm" data-dismiss="modal" >Close</button>
			      </div>
			      
			    </div>
			
			  </div>
			</div>
	      
		 </div>
	</div>
	</div>
	
	
<script>

$(function () {

	$('#orderTable').contextmenu({
        target: '#context-menu',
        scopes: 'tbody > tr',
        onItem: function (row, e) {
            var name = $(row.children('*')[0]).text();
            var action = $(e.target).text();
        	
        	var notificationMessage = "";
        	
            if(action == "Execute"){
            	notificationMessage = "Order " + name + " executed successfully";
            }else if(action == "Hold Order"){
            	notificationMessage = "Order " + name + " Kept on hold";
            }else if(action == "Resume Order"){
            	notificationMessage = "Order " +  name + " resumed successfully";
            }else if(action == "Close Order"){
            	notificationMessage = "Order " +  name + " closed successfully";
            }else if(action == "Delete Order"){
            	notificationMessage = "Order " +  name + " deleted successfully";
            }else if(action == "View Exception"){
            	//window.location.href = location.href.substr(0, (location.href).lastIndexOf('/'))+"/#";
            }else if(action == "View EBR"){
            	//window.location.href = location.href.substr(0, (location.href).lastIndexOf('/'))+"/#";
            }else if(action == "Properties"){
            	$('#myModal').on('show.bs.modal', function (event) {
          		  var modal = $(this)
          		  modal.find('.modal-title').text("Order " + action)
          		})
          	$('#myModal').modal('toggle');
            }
            
            showNotification(notificationMessage)
            
            //alert('You right clicked on ' + name + '\'s row and selected menu item "' + action  + '".');
        }
    });
});

$(document).ready(function() {
    
	$('#orderTable').DataTable({
        dom: 'l<"toolbar">frtip',
        initComplete: function(){
           $("#orderTable_filter").append('&nbsp <a href="newOrder" class="btn btn-primary btn-sm">'+
				'<span class="glyphicon glyphicon-plus"></span> New order'+
				'</a>'); 
			$("#orderTable_length").css("float","left");
        }
     });
} );
</script>
<jsp:directive.include file="include_body_scripts.jsp" />
</body>
</html>