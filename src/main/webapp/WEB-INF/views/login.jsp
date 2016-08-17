<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<jsp:directive.include file="include_header_scripts.jsp" />
	<title>Login</title>
</head>
<body>
<div class="container-fluid">
	<div class="row">
		<nav class="navbar navbar-inverse">
			<div class="container-fluid">
		    	<div class="navbar-header">
		      		<a class="navbar-brand" href="#">eWis</a>
		    	</div>
		   </div>
		</nav>
		
		<div class="login-page" >
		  	<div class="login-container" >
		  		<h1 align="left">Login</h1>
		  		<hr>
	    	 	<form role="form" action="loginVarification">
					<div class="form-group">
				    	<input type="email" class="form-control" id="email" placeholder="User Name">
					</div>
				 	<div class="form-group">
					    <input type="password" class="form-control" id="pwd" placeholder="Password">
				  	</div>
				  	<div class="checkbox" align="left">
				    	<label><input type="checkbox"> Remember me</label>
				  	</div>
				  	<button type="submit" class="btn btn-default" style="width: 100%">Login</button>
				</form>
		  	</div>
		</div>
	</div>
</div>	
</body>
</html>