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
	<title>Material Attributes</title>
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
			    <li><a href="#">Order Management </a></li>
			 </ul>
		</div>
		<div class="col-sm-10">
		
			<ol class="breadcrumb">
			  <li><a href="#">Home</a></li>
			  <li><a href="${pageContext.request.contextPath}/material">Material</a></li>
			  <li>Material Attributes</li>
			</ol>
			
			<h2>Material Attributes </h2><br>
			
			<p>Material ID : MA001SA</p>
			<p>Material Name : Material 1</p>
			<p>Status : New</p>
			<p>Create date: : 07/31/2016</p>
			<p>Effective Date : 08/01/2016</p>
			<p>Expiration Date : 09/20/2016</p>
			<p>Last changed date : 08/01/2016</p>
			<p>Last changed by : User1</p>
			<p>Default Quantity: : 10</p>
			<p>Material type: : Type1</p>
			<p>Storage class: : Class1 </p>
			<br>
			<a href="material" class="btn btn-default btn-sm" >
					<span class="glyphicon glyphicon-arrow-left"></span> Back
				</a>
		</div>
	</div>
</div>
</body>
</html>