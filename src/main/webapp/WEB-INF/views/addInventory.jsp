<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css"	rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/bootstrap-datepicker/css/bootstrap-datepicker3.css" rel="stylesheet">
	<script	src="${pageContext.request.contextPath}/resources/js/jquery-1.9.1.min.js"></script> 
	<script src="${pageContext.request.contextPath}/resources/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
	<script	src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
	<title>Add Inventory</title>
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
			    <li><a href="${pageContext.request.contextPath}/order">Order Management </a></li>
			    <li><a href="${pageContext.request.contextPath}/areaManagement">Area Management </a></li>
			 </ul>
		</div>
		<div class="col-sm-10">
			<ol class="breadcrumb">
			  <li><a href="#">Home</a></li>
			  <li><a href="${pageContext.request.contextPath}/inventory">Inventory </a></li>
			  <li>Add inventory</li>
			</ol>
			
			<h2>Add inventory </h2><br>
			
			<form action="addInventoryData" method="post">
			
			<div class="row">
				<div class="col-sm-6">

					<div class="form-group">
				      <label>Lot ID:</label>
				      <input type="text" class="form-control" id="lotID"  value="${lotId}" placeholder="Lot ID">
				    </div>
				    
					<div class="form-group">
				      <label >Material:</label>
				      <select class="form-control" name="status">
							<option value="">Material 1</option>
							<option value="">Material 2</option>
							<option value="">Material 3</option>
							<option value="">Material 4</option>
						</select>
				    </div>
				    
				    <div class="form-group">
				      <label>Area:</label>
				      <select class="form-control" name="area" id="area">
						<option value="Area 1" >Area 1</option>
						<option value="Area 2" >Area 2</option>
						<option value="Area 3" >Area 3</option>
						<option value="Area 4" >Area 4</option>
						<option value="Area 5" >Area 5</option>
						<option value="Area 6" >Area 6</option>
					  </select>
				    </div>
				   
				   	<div class="form-group">
				      <label>Location:</label>
				      <select class="form-control" name="location" id="location">
						<option value="location 1" >Location 1</option>
						<option value="location 2" >Location 2</option>
						<option value="location 3" >Location 3</option>
						<option value="location 4" >Location 4</option>
						<option value="location 5" >Location 5</option>
						<option value="location 6" >Location 6</option>
					  </select>
				    </div>
				    
			    </div>
			    
			    <div class="col-sm-6">
				    
				    <div class="form-group">
				      <label>Quantity:</label>
				      <input type="number"  min="0" class="form-control" value="${quantity}" id="quantity" >
				    </div>
				    
				    <div class="form-group">
				      <label >UOM:</label>
				      <select class="form-control" name="status">
							<option value="">Measure 1 </option>
							<option value="">Measure 2 </option>
							<option value="">Measure 3 </option>
							<option value="">Measure 4 </option>
						</select>
				    </div>
				    
				    <div class="form-group">
				      <label>QC Status:</label>
				      <select class="form-control" name="status">
							<option value="">Status 1 </option>
							<option value="">Status 2 </option>
							<option value="">Status 3 </option>
							<option value="">Status 4 </option>
						</select>
				    </div>
				</div>
				
				</div>
				
				<button type="submit" class="btn btn-primary ">Add</button>
				</form>
				
			</div>
		</div>
	</div>
</body>
</html>