<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<jsp:directive.include file="include_header_scripts.jsp" />
	<title>Supervisor Verification</title>
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
			  <li><a href="${pageContext.request.contextPath}/home">Home</a></li>
			  <li><a href="${pageContext.request.contextPath}/order">Order</a></li>
			  <li><a href="${pageContext.request.contextPath}/equipmentCheckin">Equipment Checkin</a></li>
			  <li><a href="${pageContext.request.contextPath}/materialCheckin">Material Checkin</a></li>
			  <li><a href="${pageContext.request.contextPath}/doubleVerification">Confirmation</a></li>
			  <li><a href="${pageContext.request.contextPath}/pallete">Pallet</a></li>
			  <li>Verification</li>
			  
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
			
			<div class="row">
			<div class="col-sm-12" align="right">
				<a href="${pageContext.request.contextPath}/order" class="btn btn-primary"> Confirm </a>
				<br>&nbsp
			</div>
			
			<div class="col-sm-4">
			
			<div class="panel panel-default">
				  <div class="panel-heading">Overall Detail</div>
				  <div class="panel-body">
				  
				  <table class="table table-borderless" id="materialLotTable">
					  <thead>
					    <tr>
					      <th>Total Quantity</th>
					      <th>Yield</th>
					    </tr>
					  </thead>
					  <tbody>
					    <tr >
					      <td>120 Unit</td>
					      <td>80%</td>
					    </tr>
					   </tbody>
					  </table>
				  </div>
				</div>
			</div>
			
			<div class="col-sm-12">
				
				<div class="panel panel-default">
				  <div class="panel-heading">List of Pallet</div>
				  <div class="panel-body">
				  
				  <table class="table table-borderless" id="materialLotTable">
					  <thead>
					    <tr>
					      <th>Pallet</th>
					      <th>Quantity</th>
					      <th>Created Date</th>
					      <th>Created By</th>
					    </tr>
					  </thead>
					  <tbody>
					    <tr >
					      <td>Pallet 1</td>
					      <td>30</td>
					      <td>08/06/2016 11:30 PM</td>
					      <td>Kushal</td>
					    </tr>
					    <tr >
					      <td>Pallet 2</td>
					      <td>30</td>
					      <td>08/06/2016 11:30 PM</td>
					      <td>Kushal</td>
					    </tr>
					    <tr >
					      <td>Pallet 4</td>
					      <td>30</td>
					      <td>08/06/2016 11:30 PM</td>
					      <td>Kushal</td>
					    </tr>
					    <tr >
					      <td>Pallet 5</td>
					      <td>30</td>
					      <td>08/06/2016 11:30 PM</td>
					      <td>Kushal</td>
					    </tr>
					    
					   </tbody>
					  </table>
				  </div>
				</div>
							
			</div>
			
			<div class="col-sm-12">
				
				<div class="panel panel-default">
				  <div class="panel-heading">Assigned Material</div>
				  <div class="panel-body">
				  
				  <table class="table table-borderless" id="materialLotTable">
					  <thead>
					    <tr>
					    	<th>Material</th> 	
					      	<th>Lot</th>
					      	<th>Existing Quantity</th>
					      	<th>Assigned Quantity</th>
					      	<th>Assigned Date</th>
					      	<th>Assigned By</th>
					    </tr>
					  </thead>
					  <tbody>
					    <tr>
					    	<td>Unlablled Vial</td>
							<td>345678</td>
					      	<td>50</td>
					      	<td>20</td>
					      	<td>08/05/2016 03:00 PM</td>
					      	<td>Jignesh</td>
					    </tr>
					    <tr>
					    	<td></td>
							<td>345689</td>
					      	<td>80</td>
					      	<td>10</td>
					      	<td>08/05/2016 03:00 PM</td>
					      	<td>Jignesh</td>
					    </tr>
					    <tr>
					    	<td></td>
							<td>348812</td>
					      	<td>30</td>
					      	<td>15</td>
					      	<td>08/05/2016 03:00 PM</td>
					      	<td>Jignesh</td>
					    </tr>
					    <tr>
					    	<td>Carton</td>
							<td>456789</td>
					      	<td>43</td>
					      	<td>27</td>
					      	<td>08/05/2016 03:00 PM</td>
					      	<td>Jignesh</td>
					    </tr>
					    <tr>
					    	<td></td>
							<td>456699</td>
					      	<td>48</td>
					      	<td>12</td>
					      	<td>08/05/2016 03:00 PM</td>
					      	<td>Jignesh</td>
					    </tr>
					     <tr>
					    	<td>Product Lable</td>
							<td>56789</td>
					      	<td>125</td>
					      	<td>96</td>
					      	<td>08/05/2016 03:00 PM</td>
					      	<td>Jignesh</td>
					    </tr>
					    <tr>
					    	<td></td>
							<td>56770</td>
					      	<td>38</td>
					      	<td>30</td>
					      	<td>08/05/2016 03:00 PM</td>
					      	<td>Jignesh</td>
					    </tr>
					    <tr>
					    	<td></td>
							<td>56119</td>
					      	<td>65</td>
					      	<td>32</td>
					      	<td>08/05/2016 03:00 PM</td>
					      	<td>Jignesh</td>
					    </tr>
					   </tbody>
					  </table>
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
				
				<div class="col-sm-12" align="right">
					<a href="${pageContext.request.contextPath}/order" class="btn btn-primary"> Confirm </a>
				</div>
				
			
			</div>
			<br>	 		
		</div>
	</div>
</div>
<jsp:directive.include file="include_body_scripts.jsp" />

</body>
</html>