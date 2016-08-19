<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<jsp:directive.include file="include_header_scripts.jsp" />
	<title>Material Attributes</title>
</head>
<body style="margin: 0">
<jsp:include page="header.jsp"></jsp:include>

	<div class="container-fluid">
	<div class="row">
		
		<jsp:include page="leftNavigation.jsp">
			<jsp:param value="materialMenu" name="selectMenuItem"/>
		</jsp:include>
		
		<div class="col-sm-10">
		
			<ol class="breadcrumb">
			  <li><a href="${pageContext.request.contextPath}/home">Home</a></li>
			  <li><a href="${pageContext.request.contextPath}/material">Material</a></li>
			  <li>Material Attributes</li>
			</ol>
			
			<h2>Material Attributes </h2><br>
			
			<p>Material ID : MA001SA</p>
			<p>Material Name : Unlablled Vial</p>
			<p>Detail : This is material detail.</p>
			<p>Material type: : End Item</p>
			<p>Default Quantity: : 10</p>
			<p>Status : New</p>
			<p>Recipe/Version : 3.02</p>
			<p>Storage class: : Class1 </p>
			<p>Effective Date : 08/01/2016</p>
			<p>Expiration Date : 09/20/2016</p>
			<p>Create date : 07/31/2016</p>
			<p>Last changed date : 08/01/2016</p>
			<p>Last changed by : Snehal</p>
			<br>
			<a href="material" class="btn btn-primary btn-sm" >
					<span class="glyphicon glyphicon-arrow-left"></span> Back
				</a>
		</div>
	</div>
</div>
</body>
</html>