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
			
			<div class="row">
				<div class="col-sm-12">
					
					<div class="panel panel-primary">
				
				<div class="panel-heading">Add Material </div>
				
				<div class="panel-body">
				<form action="doubleVerification" class="form-inline" method="post">
				
				<table class="table table-borderless" id="materialLotTable">
				  <thead>
				    <tr>
			    	  <th>Yield Calculation</th>
			    	  <th>Material</th>
				      <th>Lot</th>
				      <th>Existing Quantity</th>
				      <th>Assigned Quantity</th>
				      <th></th>
				    </tr>
				  </thead>
				  <tbody>
				  	<tr>
				  		<td><input type="radio" name="yield" checked="checked"></td>
				  		<td>Unlablled Vial</td>
				  		<td>345678</td>
				  		<td>50</td>
				  		<td><input type="number"  min="0" class="form-control"></td>
				  	</tr>
				  	<tr>
				  		<td></td>
				  		<td></td>
				  		<td>345689</td>
				  		<td>80</td>
				  		<td><input type="number"  min="0" class="form-control"></td>
				  	</tr>
				  	<tr>
				  		<td></td>
				  		<td></td>
				  		<td>348812</td>
				  		<td>30</td>
				  		<td><input type="number"  min="0" class="form-control"></td>
				  	</tr>
				  	<tr>
				  		<td><input type="radio" name="yield"></td>
				  		<td>Carton</td>
				  		<td>456789</td>
				  		<td>43</td>
				  		<td><input type="number"  min="0" class="form-control"></td>
				  	</tr>
				  	<tr>
				  		<td></td>
				  		<td></td>
				  		<td>456699</td>
				  		<td>48</td>
				  		<td><input type="number"  min="0" class="form-control"></td>
				  	</tr>
				  	<tr>
				  		<td><input type="radio" name="yield"></td>
				  		<td>Product Lable</td>
				  		<td>56789</td>
				  		<td>125</td>
				  		<td><input type="number"  min="0" class="form-control"></td>
				  	</tr>
				  	<tr>
				  		<td></td>
				  		<td></td>
				  		<td>56770</td>
				  		<td>38</td>
				  		<td><input type="number"  min="0" class="form-control"></td>
				  	</tr>
				  	<tr>
				  		<td></td>
				  		<td></td>
				  		<td>56119</td>
				  		<td>65</td>
				  		<td><input type="number"  min="0" class="form-control"></td>
				  	</tr>
				  
				    <tr >
					 				   			     	
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
			</div>
			
			<div class="col-sm-6">
				
				<div class="panel panel-default">
				  <div class="panel-heading">Assigned Equipments</div>
				  <div class="panel-body">
				  
				  <table class="table table-borderless">
					  <thead>
					    <tr>
				      	<th>Equipment Name</th>
				      	<th>Assigned date</th>
				   	 	<th>Assigned By</th>
			     		</tr>
					  </thead>
					  <tbody>
					    <tr >
					      <td>Equipment 1</td>
					      <td>08/05/2016 11:00 AM</td>
		      			  <td>Kushal</td>
					    </tr>
					    <tr >
					      <td>Equipment 3</td>
					      <td>08/05/2016 11:00 AM</td>
		      			  <td>Kushal</td>
					    </tr>
					    <tr >
					      <td>Equipment 7</td>
					      <td>08/05/2016 11:00 AM</td>
		      			  <td>Kushal</td>
					    </tr>
					    <tr >
					      <td>Equipment 10</td>
					      <td>08/05/2016 11:00 AM</td>
		      			  <td>Kushal</td>
					    </tr>
					   </tbody>
					  </table>
				  </div>
				</div>
				
			</div>
			
			<div class="col-sm-6">
				
				<div class="panel panel-default">
				  <div class="panel-heading">Lot Detail</div>
				  <div class="panel-body">
				  
				  <table class="table table-borderless">
				  	<thead>
					    <tr>
				      	<th>Lot ID</th>
				     	<th>Expiration date</th>
				     	<th>Execution date</th>
			   	 		<th>Execution By</th>
			     		</tr>
					  </thead>
					  <tbody>
					    <tr >
					      <td>123456</td>
					      <td>08/14/2020</td>
					      <td>08/04/2016 04:00 PM</td>
		      			  <td>Kushal</td>
					    </tr>
					   </tbody>
				  </table>
				  </div>
				</div>
			</div>
			
			<div class="col-sm-12">
				
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
					    <th>Order By</th>
					    </tr>
					  </thead>
					  <tbody>
					    <tr >
					      <td>ORD001A</td>
					      <td>New</td>
					      <td>MA001CE</td>
					      <td>Unlablled Vial</td>
					      <td>400 Unit</td>
					      <td>08/03/2016 01:00 PM</td>
					      <td>09/20/2016 12:00 AM </td>
					      <td>08/01/2016 04:50 PM</td>
					      <td>Snehal</td>
					    </tr>
					   </tbody>
					  </table>
				  </div>
				</div>
				
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