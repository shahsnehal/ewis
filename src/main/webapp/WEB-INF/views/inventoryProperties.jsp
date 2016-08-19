<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<jsp:directive.include file="include_header_scripts.jsp" />
	<link href="${pageContext.request.contextPath}/resources/bootstrap-datepicker/css/bootstrap-datepicker3.css" rel="stylesheet">
	<script src="${pageContext.request.contextPath}/resources/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
	<title>Inventory Properties</title>
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
			  <li><a href="${pageContext.request.contextPath}/home">Home</a></li>
			  <li><a href="${pageContext.request.contextPath}/inventory">Inventory </a></li>
			  <li>Inventory Properties</li>
			</ol>
			
			<h2>Inventory Properties </h2><br>
			
			<p>Lot ID : LOT001</p>
			<p>Material ID : MA001SA</p>
			<p>Quantity : 200</p>
			<p>UOM : Measure 1</p>
			<p>QC Status : Status 1</p>
			<p>Area : Area Detail</p>
			<p>Location : Location Detail</p>
			
			<br>
			<a href="inventory" class="btn btn-default btn-sm" >
					<span class="glyphicon glyphicon-arrow-left"></span> Back
				</a>
		</div>
	</div>
</div>
</body>
</html>