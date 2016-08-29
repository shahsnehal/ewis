<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page session="false"%>
<html>
<head>
	<jsp:directive.include file="include_header_scripts.jsp" />
	<title>View EBR</title>
</head>
<body style="margin: 0">
	<jsp:include page="header.jsp"></jsp:include>
	<div class="container-fluid">
		<div class="row">
			<jsp:include page="leftNavigation.jsp">
				<jsp:param value="orderManagementMenu" name="selectMenuItem"/>
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
				<h2>View EBR - ORD001A</h2><br>
				
				<div class="panel panel-primary">
					<!-- <div class="panel-heading">Material Report</div> -->
					
					<div class="panel-body">
 					 		<fieldset class="scheduler-border">
						    <legend class="scheduler-border">Revision 3 ( Current Version )</legend>
						    <div class="control-group">
						        <div class="panel-body">
					  			<table class="table table-striped table-bordered table-hover" id="revisonThreeTable">
								    <tbody>
								    	<tr>
								      		<td>Order ID &nbsp;&emsp;&emsp;: ORD001A <br>
								      			Order Status &nbsp;: Executed<br>
								      			Material ID&nbsp;&emsp;: MA001SA
								      		</td>
									      	<td>Material Name &nbsp;&emsp;: Unlablled Vial<br>
								      			Quantity &emsp;&emsp;&emsp;&emsp;: 350 Unit<br>
								      			Begin Date &emsp;&emsp;&nbsp;&nbsp;&nbsp;: 08/03/2016 01:00 PM
								      		</td>
									      	<td>End Date&emsp;&emsp;&emsp;: 09/20/2016 12:00 AM<br>
												Created Date &emsp;: 08/01/2016 04:50 PM<br>
												Created By &emsp;&emsp;: Snehal
								      		</td>
								      	</tr>
								    </tbody>
							    </table>
								</div>
						    </div>
						</fieldset>
						<fieldset class="scheduler-border">
						    <legend class="scheduler-border">Revision 2</legend>
						    <div class="control-group">
						        <div class="panel-body">
					  			<table class="table table-striped table-bordered table-hover" id="revisonTwoTable">
								    <tbody>
								    	<tr>
								      		<td>Order ID &nbsp;&emsp;&emsp;: ORD001A <br>
								      			Order Status &nbsp;: Executed<br>
								      			Material ID&nbsp;&emsp;: MA001SA
								      		</td>
									      	<td>Material Name &nbsp;&emsp;: Unlablled Vial<br>
								      			Quantity &emsp;&emsp;&emsp;&emsp;: 300 Unit<br>
								      			Begin Date &emsp;&emsp;&nbsp;&nbsp;&nbsp;: 08/03/2016 01:00 PM
								      		</td>
									      	<td>End Date&emsp;&emsp;&emsp;: 09/20/2016 12:00 AM<br>
												Created Date &emsp;: 08/01/2016 04:50 PM<br>
												Created By &emsp;&emsp;: Snehal
								      		</td>
								      	</tr>
								    </tbody>
							    </table>
					  		</div>
						    </div>
						</fieldset>
						<fieldset class="scheduler-border">
						    <legend class="scheduler-border">Revision 1</legend>
						    <div class="control-group">
						        <div class="panel-body">
					  			<table class="table table-striped table-bordered table-hover" id="revisonOneTable">
								    <tbody>
								    	<tr>
								      		<td>Order ID &nbsp;&emsp;&emsp;: ORD001A <br>
								      			Order Status &nbsp;: New<br>
								      			Material ID&nbsp;&emsp;: MA001SA
								      		</td>
									      	<td>Material Name &nbsp;&emsp;: Unlablled Vial<br>
								      			Quantity &emsp;&emsp;&emsp;&emsp;: 400 Unit<br>
								      			Begin Date &emsp;&emsp;&nbsp;&nbsp;&nbsp;: 08/03/2016 01:00 PM
								      		</td>
									      	<td>End Date&emsp;&emsp;&emsp;: 09/20/2016 12:00 AM<br>
												Created Date &emsp;: 08/01/2016 04:50 PM<br>
												Created By &emsp;&emsp;: Snehal
								      		</td>
								      	</tr>
								    </tbody>
							    </table>
					  		</div>
						    </div>
						</fieldset>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>