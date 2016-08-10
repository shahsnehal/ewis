<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css"	rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/bootstrap-datepicker/css/bootstrap-datepicker3.css" rel="stylesheet">
	<script	src="${pageContext.request.contextPath}/resources/js/jquery-1.9.1.min.js"></script> 
	<script src="${pageContext.request.contextPath}/resources/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
	<script	src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
	
	<script type="text/javascript">
	$(document).ready(function(){
		$('#effectiveDate').datepicker({format: "mm/dd/yyyy",autoclose: true});
		$('#expirationDate').datepicker({format: "mm/dd/yyyy",autoclose: true});
	});
	
	</script>
	
	<title>Add material</title>
</head>

<body style="margin: 0">
<jsp:include page="header.jsp"></jsp:include>
	 
	<div class="container-fluid">
	<div class="row">
		<div class="col-sm-2">
			<ul class="nav nav-pills nav-stacked">
			    <li><a href="#">Home</a></li>
			    <li class="active"><a href="${pageContext.request.contextPath}/material">Material </a></li>
			    <li><a href="${pageContext.request.contextPath}/inventory">Inventory </a></li>
			    <li><a href="${pageContext.request.contextPath}/order">Order Management </a></li>
			    <li><a href="${pageContext.request.contextPath}/areaManagement">Area Management </a></li>
			 </ul>
		</div>
		<div class="col-sm-10">
			<ol class="breadcrumb">
			  <li><a href="#">Home</a></li>
			  <li><a href="${pageContext.request.contextPath}/material">Material</a></li>
			  <li>Add material</li>
			</ol>
			
			<h2>Add material </h2><br>
			
			<form action="addMaterialData" method="post">
			
			<div class="row">
				<div class="col-sm-6">

				    <div class="form-group">
				      <label >Material Name:</label>
				      <input type="text" name="name" class="form-control" id="materialName" value="${material.name}" placeholder="Material name">
				    </div>
				    
				    <div class="form-group">
				      <label>Description:</label>
				      <textarea class="form-control" name="discription"  placeholder='Material Discription'>${material.discription}</textarea>
				    </div>
				   
				    <div class="form-group">
				      <label >Status:</label>
				      <select class="form-control" name="status">
							<option value="new" >New</option>
							<option value="absolute">Absolute</option>
						</select>
				    </div>
				   
				    <div class="form-group">
				      <label >Effective Date:</label>
				      <div class="input-append date" id="dp3" data-date-format="mm/dd/yyyy">
				      	<input type="text" class="form-control" name="effactiveDate" value="${material.effactiveDate}" id="effectiveDate">
				      </div>
				    </div>
				    
				    <div class="form-group">
				      <label >Expiration Date:</label>
				      <div class="input-append date " id="dp3" data-date-format="mm/dd/yyyy">
				      	<input type="text" class="form-control" name="expirationDate" value="${material.expirationDate}" id="expirationDate">
				      </div>
				    </div>
				</div>
				<div class="col-sm-6">
				 			 
				     <div class="form-group">
				      <label>Default Quantity:</label>
				      <input type="number" name="quantity" min="0" class="form-control" value="${material.quantity}" id="quantity" >
				    </div>
				    
				    <div class="form-group">
				      <label>Material type:</label>
				      <select class="form-control" name="type">
							<option value="Type1">Type1</option>
							<option value="type2">type2</option>
							<option value="type3">type3</option>
						</select>
				    </div>
				    
				    <div class="form-group">
				      <label>Storage class:</label>
				      <select class="form-control" name="storageClass">
							<option value="Class1">Storage Class 1</option>
							<option value="Class2">Storage Class 2</option>
							<option value="Class3">Storage Class 3</option>
							<option value="Class4">Storage Class 4</option>
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