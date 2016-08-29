<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page session="false"%>
<html>
<head>
	<jsp:directive.include file="include_header_scripts.jsp" />
	<title>Inventory History</title>
</head>
<body style="margin: 0">
	<jsp:include page="header.jsp"></jsp:include>
	<div class="container-fluid">
		<div class="row">
			<jsp:include page="leftNavigation.jsp">
				<jsp:param value="inventoryMenu" name="selectMenuItem"/>
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
				<h2>Inventory History - 12345</h2><br>
				
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
								      		<td>Lot ID &emsp;&emsp;&nbsp;&nbsp;&nbsp;: 12345 <br>
								      			Material ID &nbsp;&nbsp;: MA001SA
								      		</td>
									      	<td>Quantity &nbsp;&nbsp;&emsp;: 210<br>
								      			Area &emsp;&emsp;&emsp;: Area 1
								      		</td>
									      	<td>Location&emsp;&emsp;&emsp;: Location 1<br>
												QC Status &emsp;&emsp;: Status 3
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
								      		<td>Lot ID &emsp;&emsp;&nbsp;&nbsp;&nbsp;: 12345 <br>
								      			Material ID &nbsp;&nbsp;: MA001SA
								      		</td>
									      	<td>Quantity &nbsp;&nbsp;&emsp;: 150<br>
								      			Area &emsp;&emsp;&emsp;: Area 1
								      		</td>
									      	<td>Location&emsp;&emsp;&emsp;: Location 1<br>
												QC Status &emsp;&emsp;: Status 2
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
								      		<td>Lot ID &emsp;&emsp;&nbsp;&nbsp;&nbsp;: 12345 <br>
								      			Material ID &nbsp;&nbsp;: MA001SA
								      		</td>
									      	<td>Quantity &nbsp;&nbsp;&emsp;: 200<br>
								      			Area &emsp;&emsp;&emsp;: Area 1
								      		</td>
									      	<td>Location&emsp;&emsp;&emsp;: Location 1<br>
												QC Status &emsp;&emsp;: Status 1
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