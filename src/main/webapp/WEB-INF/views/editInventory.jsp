<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<jsp:directive.include file="include_header_scripts.jsp" />
	<link href="${pageContext.request.contextPath}/resources/bootstrap-datepicker/css/bootstrap-datepicker3.css" rel="stylesheet">
	<script src="${pageContext.request.contextPath}/resources/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
	<title>Adjust Inventory</title>
</head>

<body style="margin: 0">
<jsp:include page="header.jsp"></jsp:include>
	 
	<div class="container-fluid">
	<div class="row">
	
		<jsp:include page="leftNavigation.jsp">
			<jsp:param value="inventoryMenu" name="selectMenuItem"/>
		</jsp:include>
	
		<div class="col-sm-10">
			<ol class="breadcrumb">
			  <li><a href="#">Home</a></li>
			  <li><a href="${pageContext.request.contextPath}/inventory">Inventory </a></li>
			  <li>Adjust inventory</li>
			</ol>
			
			<h2>Adjust inventory </h2><br>
			
			<form action="adjustInventoryData" method="post">
			
			<div class="row">
				<div class="col-sm-6">

					<div class="form-group">
				      <label >Material:</label>
				      <select class="form-control" name="status">
							<option value="" selected="selected">Material 1</option>
							<option value="">Material 2</option>
							<option value="">Material 3</option>
							<option value="">Material 4</option>
						</select>
				    </div>
				    
				    <div class="form-group">
				      <label>Lot ID:</label>
				      <input type="text" class="form-control" id="lotID" placeholder="Lot ID" value="LOT001">
				    </div>
				    
				    <div class="form-group">
				      <label>Area </label>
				      <textarea class="form-control" name="area" placeholder='Area' >Area Detail</textarea>
				    </div>
				   
				   	<div class="form-group">
				      <label>Location </label>
				      <textarea class="form-control" name="Location" placeholder='Location'>Location Detail</textarea>
				    </div>
				    
			    </div>
			    
			    <div class="col-sm-6">
				    
				    <div class="form-group">
				      <label>Quantity:</label>
				      <input type="number"  min="0" class="form-control" id="quantity" value="200">
				    </div>
				    
				    <div class="form-group">
				      <label >UOM:</label>
				      <select class="form-control" name="status">
							<option value="" >Measure 1 </option>
							<option value="">Measure 2 </option>
							<option value="" selected="selected">Measure 3 </option>
							<option value="">Measure 4 </option>
						</select>
				    </div>
				    
				    <div class="form-group">
				      <label>QC Status:</label>
				      <select class="form-control" name="status">
							<option value="" >Status 1 </option>
							<option value="">Status 2 </option>
							<option value="">Status 3 </option>
							<option value="" selected="selected">Status 4 </option>
						</select>
				    </div>
				</div>
				
				</div>
				
				<button type="submit" class="btn btn-primary ">Update</button>
				</form>
				
			</div>
		</div>
	</div>
</body>
</html>