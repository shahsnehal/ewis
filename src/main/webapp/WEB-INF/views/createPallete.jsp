<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<jsp:directive.include file="include_header_scripts.jsp" />
	<title>Create Pallet</title>
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
			  <li><a href="${pageContext.request.contextPath}/doubleVerification">Confirmation</a></li>
			  <li><a href="${pageContext.request.contextPath}/pallete">Pallet</a></li>
			  <li>Create Pallet</li>
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
			
			<form action="addPallete" class="form-inline" method="post">
			
			<div class="row">
			
			<div class="col-sm-8">
				
				<div class="panel panel-primary">
				  <div class="panel-heading">Create Pallet</div>
				  <div class="panel-body">
				  
				  
				
					<table class="table table-borderless" id="materialLotTable">
					  <thead>
					    <tr>
					      <th>Lot</th>
					      <th>Existing Quantity</th>
					      <th>Quantity</th>
					      <th></th>
					    </tr>
					  </thead>
					  <tbody>
					    <tr >
					      <td>Lot1</td>
					      <td>20</td>
					      <td><input type="number"  min="0" class="form-control" id="quantity" ></td>
					    </tr>
					    <tr >
					      <td>Lot2</td>
					      <td>30</td>
					      <td><input type="number"  min="0" class="form-control" id="quantity" ></td>
					    </tr>
					    <tr >
					      <td>Lot3</td>
					      <td>35</td>
					      <td><input type="number"  min="0" class="form-control" id="quantity" ></td>
					    </tr>
					    <tr >
					      <td>Lot4</td>
					      <td>40</td>
					      <td><input type="number"  min="0" class="form-control" id="quantity" ></td>
					    </tr>
					    <tr >
					      <td>Lot5</td>
					      <td>45</td>
					      <td><input type="number"  min="0" class="form-control" id="quantity" ></td>
					    </tr>
					   			     	
					   </tbody>
					</table>
				  </div>
				</div>
							
			</div>
			
			<div class="col-sm-4">
				
				<div class="panel panel-primary">
			  <div class="panel-heading">Pallet Quantity</div>
				  <div class="panel-body">
				  
				  
				
					<table class="table table-borderless" id="materialLotTable">
					  <thead>
					    <tr>
					      <th>Quantity</th>
					    </tr>
					  </thead>
					  <tbody>
					    <tr >
					      <td><input type="number"  min="0" class="form-control" id="quantity" ></td>
					    </tr>
					   </tbody>
					</table>
				  </div>
				</div>
							
			</div>
			
			<div class="col-sm-12"> 
				<button type="submit" class="btn btn-primary" >Create Pallet</button>
				<a href="${pageContext.request.contextPath}/pallete" class="btn btn-primary" >Cancel</a>
			</div>
			 
		
			</div>
			</form>
			
		</div>
	</div>
</div>
<jsp:directive.include file="include_body_scripts.jsp" />
</body>
</html>