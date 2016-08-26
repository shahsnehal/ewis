<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page session="false"%>
<html>
<head>
	<jsp:directive.include file="include_header_scripts.jsp" />
	<title>Home</title>
</head>
<body style="margin: 0">
	<jsp:include page="header.jsp"></jsp:include>
	<div class="container-fluid">
		<div class="row">
			<jsp:include page="leftNavigation.jsp">
			<jsp:param value="homemenu" name="selectMenuItem"/>
		</jsp:include>
		<div class="col-sm-10">
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
			<h2>My Tasks</h2><br>
			<table border="0">
				<thead>
			      <tr>
			      	<td><div class="dropdown">
					    <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">View By Workflow Type
					    	<span class="caret"></span>
				    	</button>
					    <ul class="dropdown-menu">
					      <li><a href="#">Type1</a></li>
					      <li><a href="#">Type2</a></li>
					      <li><a href="#">Type3</a></li>
					    </ul>
				    	</div>
			    	</td>
			    	<td>&nbsp;</td>
			      	<td><div class="dropdown">
					    <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">View By Status
					    	<span class="caret"></span>
				    	</button>
					    <ul class="dropdown-menu">
					      <li><a href="#">Group Review Completed</a></li>
					      <li><a href="#">Scoping</a></li>
					      <li><a href="#">Group Review</a></li>
					    </ul>
			    	</div>
		    	</td>
			      </tr>
			    </thead>
			</table>
			<br>
			<table class="table table-striped table-bordered table-hover" id="workflowTable">
				<thead>
			      <tr>
			      	<th>#</th>
			        <th>Order Id</th>
			        <th>Author</th>
			        <th>Status</th>
			        <th>Last Updated Date</th>
			        <th>Action</th>
			      </tr>
			    </thead>
			    <tbody>
			      <tr>
			        <td>1</td>
			        <td>ORD001A</td>
			        <td>Snehal</td>
			        <td>Group Review Completed</td>
			        <td>28/07/2016 08:45 AM</td>
			        <td><a href="#">Execute</a></td>
			      </tr>
			      <tr>
			        <td>2</td>
			        <td>ORD002S</td>
			        <td>Kushal</td>
			        <td>Scoping</td>
			        <td>15/07/2016 06:15 PM</td>
			        <td><a href="#">Execute</a></td>
			      </tr>
			      <tr>  
			        <td>3</td>
			        <td>ORD003V</td>
			        <td>Snehal</td>
			        <td>Group Review</td>
			        <td>20/06/2016 11:00 AM</td>
			        <td><a href="#">Execute</a></td>
			      </tr>
			      <tr>  
			        <td>4</td>
			        <td>ORD004C</td>
			        <td>Snehal</td>
			        <td>Group Review</td>
			        <td>01/06/2016 04:00 PM</td>
			        <td><a href="#">Execute</a></td>
			      </tr>
		    	</tbody>
				</table>
				<div id="context-menu">
		      		<ul class="dropdown-menu" role="menu">
	            		<li><a tabindex="-1">Test1</a></li>
	          			<li><a tabindex="-1">Test2</a></li>
		           		<li class="divider"></li>
	           			<li><a tabindex="-1">Test3</a></li>
		           		<li><a tabindex="-1">Test4</a></li>
		      		</ul>
	      		</div>
      		</div>
		</div>
	</div>
	<script>
$(document).ready(function() {
	$('#workflowTable').DataTable({
        dom: 'l<"toolbar">frtip',
        initComplete: function(){
			$("#workflowTable_length").css("float","left");
        }
     });
});
</script>
	<jsp:directive.include file="include_body_scripts.jsp" />
</body>
</html>

