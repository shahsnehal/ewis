<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<jsp:directive.include file="include_header_scripts.jsp" />
	<link href="${pageContext.request.contextPath}/resources/bootstrap-datepicker/css/bootstrap-datetimepicker.min.css" rel="stylesheet">
	<script src="${pageContext.request.contextPath}/resources/bootstrap-datepicker/js/moment.js"></script>
	<script src="${pageContext.request.contextPath}/resources/bootstrap-datepicker/js/bootstrap-datetimepicker.min.js"></script>
	<title>Order Management</title>
</head>
<body style="margin: 0">
<jsp:include page="header.jsp"></jsp:include>

	<div class="container-fluid">
	<div class="row">
	
		<jsp:include page="leftNavigation.jsp">
			<jsp:param value="orderManagementMenu" name="selectMenuItem"/>
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
			
			<h2 id="materialList">Order List </h2><br>
			
			<table class="table table-striped table-bordered table-hover" id="orderTable">
		    <thead>
		      <tr>
		      	<th>Order ID</th>
		      	<th>Order status</th>
		      	<th>Material ID</th>
		        <th>Material Name</th>
		        <th>Quantity</th>
		        <th>Begin date</th>
		        <th>End date</th>
		        <th>Created date</th>
		        <th>Order By</th>
		      </tr>
		    </thead>
		    <tbody>
		      <tr>
		      	<td>ORD001A</td>
		      	<td>New</td>
		        <td>MA001CE</td>
		        <td>Unlablled Vial</td>
		        <td>400 Unit</td>
		        <td>08/03/2016 01:00 PM</td>
		        <td>09/20/2016 12:00 AM</td>
		        <td>08/01/2016 04:50 PM</td>
		        <td>Snehal</td>
		      </tr>
		      <tr>
		      	<td>ORD002V</td>
		      	<td>Executed</td>
		        <td>MA002RA</td>
		        <td>Product lable</td>
		        <td>200 Unit</td>
		        <td>08/03/2016 01:00 PM</td>
		        <td>09/20/2016 12:00 AM</td>
		        <td>08/01/2016 04:50 PM</td>
		        <td>Kushal</td>
		      </tr>
	     	  <tr>
		      	<td>ORD003C</td>
		      	<td>Closed</td>
		        <td>MA003DA</td>
		        <td>Carton</td>
		        <td>200 Unit</td>
		        <td>08/03/2016 01:00 PM</td>
		        <td>09/20/2016 12:00 AM</td>
		        <td>08/01/2016 04:50 PM</td>
		        <td>Jignesh</td>
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
			      
			      <table class="table table-borderless">
			      <tbody>
			     		<tr>
			     			<td>Order ID :</td>
			     			<td>ORD001A</td>
			     		</tr>
			     		<tr>
			     			<td>Order status :</td>
			     			<td>New</td>
			     		</tr>
			     		<tr>
			     			<td>Material ID :</td>
			     			<td>MA001CE</td>
			     		</tr>
			     		<tr>
			     			<td>Material Name :</td>
			     			<td>Unlablled Vial</td>
			     		</tr>
			     		<tr>
			     			<td>Quantity :</td>
			     			<td>400 Unit</td>
			     		</tr>
			     		<tr>
			     			<td>Begin date :</td>
			     			<td>08/03/2016 01:00 PM</td>
			     		</tr>
			     		<tr>
			     			<td>End date :</td>
			     			<td>09/20/2016 12:00 AM</td>
			     		</tr>
			     		<tr>
			     			<td>Created date :</td>
			     			<td>08/01/2016 04:50 PM</td>
			     		</tr>
			     		<tr>
			     			<td>Order By</td>
			     			<td>Snehal</td>
			     		</tr>
			      </tbody>
			      </table>
			        
			       <!--  <label>Order ID : </label> <span>ORD001A</span><br>
				    <label>Order status : </label> <span>New</span><br>
				    <label>Material ID :</label> <span>MA001CE</span><br>
				    <label>Material Name :</label> <span>Unlablled Vial</span><br>
				    <label>Quantity :</label> <span>400 Unit </span><br>
				    <label>Begin date :</label> <span>08/03/2016 01:00 PM</span><br>
				    <label>End date :</label> <span>09/20/2016 12:00 AM	</span><br>
				    <label>Created date :</label> <span>08/01/2016 04:50 PM</span><br> -->
				    
			      </div>
			     
			      <div class="modal-footer">
			        <button type="submit" class="btn btn-primary btn-sm" data-dismiss="modal" >Close</button>
			      </div>
			      
			    </div>
			
			  </div>
			</div>
	      
	      
	      <div id="executeModal" class="modal fade" role="dialog">
			  <div class="modal-dialog">
			
			    <div class="modal-content">
			    	
			      <div class="modal-header">
			        <button type="button" class="close" data-dismiss="modal">&times;</button>
			        <h4 class="modal-title">Execute Order</h4>
			      </div>
			     
			      <div class="modal-body">
			        
			       <table class="table table-borderless">
			      <tbody>
			     		<tr>
			     			<td>Order ID :</td>
			     			<td>ORD001A</td>
			     		</tr>
			     		<tr>
			     			<td>Order status :</td>
			     			<td>New</td>
			     		</tr>
			     		<tr>
			     			<td>Material ID :</td>
			     			<td>MA001CE</td>
			     		</tr>
			     		<tr>
			     			<td>Material Name :</td>
			     			<td>Unlablled Vial</td>
			     		</tr>
			     		<tr>
			     			<td>Quantity :</td>
			     			<td>400 Unit</td>
			     		</tr>
			     		<tr>
			     			<td>Created date :</td>
			     			<td>08/01/2016 04:50 PM</td>
			     		</tr>
			     		<tr>
			     			<td>Order By</td>
			     			<td>Snehal</td>
			     		</tr>
			      </tbody>
			      </table>
			      <hr>
				    
				    <form id="executeOrder" action="equipmentCheckin">
				    	
				    	 <div class="form-group">
					      <label>Lot ID:</label>
					      <input type="text" class="form-control" id="lotId" >
					    </div>
				    
				    	<div class="form-group">
					      <label>Expiration date:</label>
					      <div class='input-group date' id='expirationDate'>
				               <input type='text' class="form-control" />
				               <span class="input-group-addon">
				                   <span class="glyphicon glyphicon-calendar"></span>
				               </span>
				           </div>
					    </div>	
				    </form>
				    
			      </div>
			     
			      <div class="modal-footer">
			        <button type="submit" class="btn btn-primary btn-sm" data-dismiss="modal" onclick="formSubmit('executeOrder')">Execute</button>
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
            	$('#executeModal').on('show.bs.modal', function (event) {
            		  var modal = $(this)
            		})
            	$('#executeModal').modal('toggle');
            	//notificationMessage = "Order " + name + " executed successfully";
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
            	window.location.href = location.href.substr(0, (location.href).lastIndexOf('/'))+"/viewEBR";
            }else if(action == "Properties"){
            	$('#myModal').on('show.bs.modal', function (event) {
          		  var modal = $(this)
          		  modal.find('.modal-title').text("Order " + action)
          		})
          		$('#myModal').modal('toggle');
            }
            
            showNotification(notificationMessage)
            
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
	 $('#expirationDate').datetimepicker({
			format: 'MM/DD/YYYY'
	 });
} );
</script>
<jsp:directive.include file="include_body_scripts.jsp" />
</body>
</html>