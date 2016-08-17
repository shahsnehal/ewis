<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<jsp:directive.include file="include_header_scripts.jsp" />
	<title>Equipment Checkin</title>
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
			  <li>Equipment Checkin</li>
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
			
			
			<div class="panel panel-primary">
				
				<div class="panel-heading">Add Equipment </div>
				
				<div class="panel-body">
				
				<form action="materialCheckin" class="form-horizontal" method="post">
				
					<div class="equipmentParentDiv">
						<div class="equipmentChildDiv"> 
				
							<div class="form-group">
						      <label class="control-label col-sm-2" >Equipment :</label>
						      <div class="col-sm-8">
							  		<select class="form-control" name="Material[]">
										<option value="">Equipment 1</option>
										<option value="">Equipment 2</option>
										<option value="">Equipment 3</option>
										<option value="">Equipment 4</option>
									</select>
							  </div>
							  <div class="col-sm-1">
							  <button type="button" class="removeEqupForm btn btn-danger btn-sm " style="display: none;"><span class="glyphicon glyphicon-remove"></span></button>
							  </div>
							</div>
					        
					        
					    </div>
					 </div>   
					 <div class="equipmentExtraDiv"></div>
					    
				    
				    <div align="right">
			    		<button type="button" class="btn btn-default" id="addNewEqupBtn">New Equipment</button>
			    		<button type="submit" class="btn btn-primary" >Next</button>
		    		</div>
		   		</form>
				<br>
				</div>
				
			</div>
			
			<div class="row">
			
			<div class="col-sm-12">
			
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
				
			</div>
			</div>
			 	 		
		</div>
	</div>
</div>
<script type="text/javascript">
$(document).ready(function() {
	
	var equipmentChildDiv = $(".equipmentParentDiv").children();
	
	$("#addNewEqupBtn").click(function(){
		
		equipmentChildDiv.clone(true,true).appendTo(".equipmentExtraDiv");	
		$(".equipmentExtraDiv .equipmentChildDiv:last-child .removeEqupForm").css("display","inline-block");
		
	});
	
	$(".removeEqupForm").click(function(){
  		$(this).closest('.equipmentChildDiv').remove();
     });
	
});

</script>
<jsp:directive.include file="include_body_scripts.jsp" />
</body>
</html>