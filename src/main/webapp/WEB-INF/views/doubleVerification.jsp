<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<jsp:directive.include file="include_header_scripts.jsp" />
	<link href="${pageContext.request.contextPath}/resources/css/customized.css"	rel="stylesheet">
	<title>Double Varification</title>
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
			  <li><a href="${pageContext.request.contextPath}/materialCheckin">Material Checkin</a></li>
			  <li>Confirmation</li>
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
			<div class="row" align="right">
			<div class="col-sm-12">
					<a href="${pageContext.request.contextPath}/pallete" class="btn btn-primary"> Confirm </a>
				</div>
			</div>
			 <br>
			<div class="panel panel-default">
				  <div class="panel-heading">Assigned Material</div>
				  <div class="panel-body">
				  
				  <table class="table table-borderless" id="materialLotTable">
					  <thead>
					    <tr>
					      <th>Lot</th>
					      <th>Existing Quantity</th>
					      <th>Assigned Quantity</th>
					      <th></th>
					    </tr>
					  </thead>
					  <tbody>
					    <tr >
					      <td>Lot 1</td>
					      <td>500</td>
					      <td>20</td>
					      <td></td>
					    </tr>
					    <tr >
					      <td>Lot 2</td>
					      <td>300</td>
					      <td>20</td>
					      <td></td>
					    </tr>
					    <tr >
					      <td>Lot 5</td>
					      <td>450</td>
					      <td>20</td>
					      <td></td>
					    </tr>
					    <tr >
					      <td>Lot 13</td>
					      <td>350</td>
					      <td>20</td>
					      <td></td>
					    </tr>
					   </tbody>
					  </table>
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
			
			<div class="row" align="right">
			<div class="col-sm-12">
					<a href="${pageContext.request.contextPath}/pallete" class="btn btn-primary"> Confirm </a>
				</div>
			</div>
			 <br>
			 <br>	 		
		</div>
	</div>
</div>
<jsp:directive.include file="include_body_scripts.jsp" />

</body>
</html>