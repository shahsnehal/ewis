<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<jsp:directive.include file="include_header_scripts.jsp" />
	<title>Material Checkin</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>

<div class="container-fluid">
	<div class="row">
	
		<jsp:include page="leftNavigation.jsp">
			<jsp:param value="orderManagementMenu" name="selectMenuItem"/>
		</jsp:include>
	
		<div class="col-sm-10">
		
			<ol class="breadcrumb">
			  <li><a href="#">Home</a></li>
			  <li><a href="${pageContext.request.contextPath}/order">Order</a></li>
			  <li><a href="${pageContext.request.contextPath}/equipmentCheckin">Equipment Checkin</a></li>
			  <li>Material Checkin</li>
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
			
			<div class="panel panel-primary">
				
				<div class="panel-heading">Add Material </div>
				
				<div class="panel-body">
				<form action="doubleVerification" class="form-inline" method="post">
				
				<table class="table table-borderless" id="materialLotTable">
				  <thead>
				    <tr>
			    		<th>Yield Calculation</th>
				      <th>Lot</th>
				      <th>Existing Quantity</th>
				      <th>Quantity</th>
				      <th></th>
				    </tr>
				  </thead>
				  <tbody>
				    <tr >
				    <td><input type="radio" name="yield"></td>
				      <td>
			      		<select class="form-control" name="lot[]">
							<option value="">Lot 1</option>
							<option value="">Lot 2</option>
							<option value="">Lot 3</option>
							<option value="">Lot 4</option>
						</select></td>
				      <td>50</td>
				      <td><input type="number"  min="0" class="form-control" id="quantity" ></td>
				      <td><button type="button" class="removeMaterialForm btn btn-danger btn-sm " style="display: none;"><span class="glyphicon glyphicon-remove"></span></button></td>
				    </tr>
				    <tr class="materialChildDiv">
				    <td><input type="radio" name="yield"></td>
				      <td>
			      		<select class="form-control" name="lot[]">
							<option value="">Lot 1</option>
							<option value="">Lot 2</option>
							<option value="">Lot 3</option>
							<option value="">Lot 4</option>
						</select></td>
				      <td>50</td>
				      <td><input type="number"  min="0" class="form-control" id="quantity" ></td>
				      <td><button type="button" class="removeMaterialForm btn btn-danger btn-sm " style="visibility: hidden;"><span class="glyphicon glyphicon-remove"></span></button></td>
				    </tr>
				   			     	
				   </tbody>
				</table>
				
				<div class="col-sm-12">
			    <div align="right">
			    	<br>
		    		<button type="button" class="btn btn-default" onclick="addRow('materialLotTable')">Add Material</button>
		    		<button type="submit" class="btn btn-primary" >Next</button>
	    		</div>
	    		
	    		</div>
	    		
		   		</form>
		   		
				<br>
				</div>
			</div>
							
			<div class="panel panel-default">
				  <div class="panel-heading">Lot Detail</div>
				  <div class="panel-body">
				  
				  <table class="table table-borderless">
					  <thead>
					    <tr>
				      	<th>Lot ID</th>
				     	<th>Expiration date</th>
			     		</tr>
					  </thead>
					  <tbody>
					    <tr >
					      <td>Lot003TA</td>
					      <td>12/20/2016</td>
					    </tr>
					   </tbody>
					  </table>
				  </div>
				</div>
				
				
				<div class="panel panel-default">
				  <div class="panel-heading">Order Detail</div>
				  <div class="panel-body">
				  
				  <table class="table table-borderless">
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
					    </tr>
					  </thead>
					  <tbody>
					    <tr >
					      <td>ORD001A</td>
					      <td>New</td>
					      <td>MA001CE</td>
					      <td>Material 1</td>
					      <td>400 Unit</td>
					      <td>08/03/2016 01:00 PM</td>
					      <td>09/20/2016 12:00 AM </td>
					      <td>08/01/2016 04:50 PM</td>
					    </tr>
					   </tbody>
					  </table>
				  </div>
				</div>
				
			 	 		
		</div>
	</div>
</div>
<script type="text/javascript">
$(document).ready(function() {
	$("#materialLotTable").on('click', '.removeMaterialForm', function () {
	    $(this).closest('tr').remove();
	});
});

</script>
<jsp:directive.include file="include_body_scripts.jsp" />

</body>
</html>