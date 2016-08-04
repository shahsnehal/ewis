<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css"	rel="stylesheet">
	<%-- <link href="${pageContext.request.contextPath}/resources/css/customized.css"	rel="stylesheet"> --%>
	<title>Inventory</title>
	<style type="text/css">
	#contextMenu{
	    position: absolute;
	    display:none;
	}
	</style>
	<script	src="${pageContext.request.contextPath}/resources/js/jquery-1.9.1.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/bootstrap-contextmenu.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/alert.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
	<script type="text/javascript">
		function form_submit() {
	    document.getElementById("modalForm").submit();
	   }    
	</script>
</head>

<body style="margin: 0">
<jsp:include page="header.jsp"></jsp:include>

	<div class="container-fluid">
	<div class="row">
	
		<div class="col-sm-2">
			<ul class="nav nav-pills nav-stacked">
			    <li><a href="#">Home</a></li>
			    <li><a href="${pageContext.request.contextPath}/material">Material </a></li>
			    <li class="active"><a href="${pageContext.request.contextPath}/inventory">Inventory </a></li>
			    <li><a href="#">Order Management </a></li>
			 </ul>
		</div>
	
		<div class="col-sm-10">
		
			<ol class="breadcrumb">
			  <li><a href="#">Home</a></li>
			  <li>Inventory</li>
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
			
			<h2 id="materialList">Inventory List </h2><br>
			
			<div align="right">
			    <a href="addInventory" class="btn btn-primary btn-sm" >
					<span class="glyphicon glyphicon-plus"></span> Add
				</a>
			</div>
			
			<table class="table table-hover" id="inventoryTable">
		    <thead>
		      <tr>
		      	<th>Material ID</th>
		        <th>Lot ID</th>
		        <th>Area</th>
		        <th>Location</th>
		        <th>Quantity</th>
		        <th>UOM</th>
		        <th>QC Status</th>
		      </tr>
		    </thead>
		    <tbody>
		      <tr>
		        <td>MA001SA</td>
		        <td>LOT001</td>
		        <td>Area Detail</td>
		        <td>Location detail</td>
		        <td>200</td>
		      	<td>Measure 1</td>
		        <td>Status 1</td>
		      </tr>
		      <tr>
		        <td>MA002SA</td>
		        <td>LOT002</td>
		        <td>Area Detail</td>
		        <td>Location detail</td>
		        <td>300</td>
		      	<td>Measure 3</td>
		        <td>Status 2</td>
		      </tr>
		      <tr>
		        <td>MA003SA</td>
		        <td>LOT003</td>
		        <td>Area Detail</td>
		        <td>Location detail</td>
		        <td>800</td>
		      	<td>Measure 5</td>
		        <td>Status 3</td>
		      </tr>
		    </tbody>
		  </table>
		  
		 	<div id="context-menu">
	      	<ul class="dropdown-menu" role="menu">
	           <li><a tabindex="-1">Split</a></li>
	           <li><a tabindex="-1">Copy</a></li>
	           <li class="divider"></li>
	           <li><a tabindex="-1">Where used</a></li>
	           <li><a tabindex="-1">Check out</a></li>
	           <li class="divider"></li>
	           <li><a tabindex="-1">Move Lot</a></li>
	           <li><a tabindex="-1">Waste Quantity</a></li>
	           <li><a tabindex="-1">Adjust Quantity</a></li>
	           <li class="divider"></li>
	           <li><a tabindex="-1">History</a></li>
	           <li><a tabindex="-1">Properties</a></li>
	      	</ul>
	      </div>
	      
			<div id="myModal" class="modal fade" role="dialog">
			  <div class="modal-dialog">
			
			    <div class="modal-content">
			    	
			    	<form action="adjustInventoryData" id="modalForm" method="get">
			    	
				      <div class="modal-header">
				        <button type="button" class="close" data-dismiss="modal">&times;</button>
				        <h4 class="modal-title">Modal Header</h4>
				      </div>
				     
				      <div class="modal-body">
				        
				        <div class="form-group">
					      <label>Quantity:</label>
					      <input type="number"  min="0" id="quantity" class="form-control" id="quantity" >
					    </div>
				        
				        <div class="form-group">
					      <label>Container ID:</label>
					      <input type="text" class="form-control" id="containerID" placeholder="Container ID">
					    </div>
				        
						<div class="form-group">
					      <label>Area </label>
					      <textarea class="form-control" name="area" id="area" placeholder='Area'></textarea>
					    </div>
					   
					   	<div class="form-group">
					      <label>Location </label>
					      <textarea class="form-control" name="Location" id="location" placeholder='Location'></textarea>
					    </div>
					    
				      </div>
				     
				      <div class="modal-footer">
				        <button type="submit" class="btn btn-default" data-dismiss="modal" onclick="form_submit()">Submit</button>
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

	$('#inventoryTable').contextmenu({
        target: '#context-menu',
        scopes: 'tbody > tr',
        onItem: function (row, e) {
            var name = $(row.children('*')[1]).text();
            var action = $(e.target).text();
           
        	var notificationMessage = "";
        	
            if(action == "Copy"){
            	notificationMessage = name + " copied successfully";
            }else if(action == "Waste Quantity"){
            	notificationMessage = name + " wasted";
            }else if(action == "Delete"){
            	notificationMessage = name + " deleted successfully";
            }else if(action == "Adjust Quantity"){
            	window.location.href = location.href.substr(0, (location.href).lastIndexOf('/'))+'/adjustInventory';
            }else if(action == "Properties"){
            	window.location.href = location.href.substr(0, (location.href).lastIndexOf('/'))+'/inventoryProperties';
            }else if(action == "Split"){
            	$('#myModal').on('show.bs.modal', function (event) {
          		  var modal = $(this)
          		  modal.find('.modal-title').text(action + ' inventory')
          		  modal.find('.modal-body #area').val($(row.children('*')[2]).text())
           		  modal.find('.modal-body #location').val($(row.children('*')[3]).text())
           		  modal.find('.modal-body #quantity').val($(row.children('*')[5]).text())
          		})
          	$('#myModal').modal('toggle');
            }else if(action == "Move Lot"){
            	$('#myModal').on('show.bs.modal', function (event) {
            		  var modal = $(this)
            		  modal.find('.modal-title').text(action)
            		  modal.find('.modal-body #area').val($(row.children('*')[2]).text())
            		  modal.find('.modal-body #location').val($(row.children('*')[3]).text())
            		  modal.find('.modal-body #quantity').val($(row.children('*')[5]).text())
            		})
            	$('#myModal').modal('toggle');
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