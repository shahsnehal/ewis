<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page session="false"%>
<html>
<head>
	<jsp:directive.include file="include_header_scripts.jsp" />
	<title>Material Report</title>
</head>
<body style="margin: 0">
	<jsp:include page="header.jsp"></jsp:include>
	<div class="container-fluid">
		<div class="row">
			<jsp:include page="leftNavigation.jsp">
				<jsp:param value="materialMenu" name="selectMenuItem"/>
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
				<h2>Material Report - MA001SA</h2><br>
				<div class="container">
   
				<div class="panel panel-primary">
					<div class="panel-body">
						<fieldset class="scheduler-border">
						    <legend class="scheduler-border">Revision 3 ( Current Version )</legend>
						    <div class="control-group">
						        <div class="panel-body">
						  			<table class="table table-striped table-bordered table-hover" id="revisonThreeTable">
									    <tbody>
									    	<tr>
									      		<td>Material ID &emsp;&emsp;&nbsp;&emsp;&emsp;: MA001SA <br>
									      			Material Name &nbsp;&nbsp;&emsp;&emsp;: Unlablled Vial <br>
									      			Detail &emsp;&emsp;&emsp;&emsp;&nbsp;&nbsp;&emsp;&emsp;: This is material detail.<br>
									      			Material Type &emsp;&emsp;&emsp;: End Item<br>
									      		</td>
										      	<td>Default Quantity&emsp;&emsp;: 13<br>
													Status &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;: New<br>
													Recipe/Version &emsp;&emsp;: 3.03<br>
													Storage class&emsp;&emsp;&emsp;: Class1<br>
									      		</td>
										      	<td>Effective Date&emsp;&emsp;&emsp;: 21/01/2016<br>
										      		Expiration Date &emsp;&emsp;: 20/09/2016<br>
													Create date&emsp;&emsp;&emsp;&emsp;: 31/07/2016<br>
													Last changed date&nbsp;&nbsp;&nbsp;: 21/01/2016<br>
													Last changed by&emsp;&emsp;: Snehal
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
												<td>Material ID &emsp;&emsp;&nbsp;&emsp;&emsp;: MA001SA <br>
													Material Name &nbsp;&nbsp;&emsp;&emsp;: Unlablled Vial <br>
													Detail &emsp;&emsp;&emsp;&emsp;&nbsp;&nbsp;&emsp;&emsp;: This is material detail.<br>
													Material Type &emsp;&emsp;&emsp;: End Item<br>
												</td>
												<td>Default Quantity&emsp;&emsp;: 15<br>
													Status &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;: New<br>
													Recipe/Version &emsp;&emsp;: 3.02<br>
													Storage class&emsp;&emsp;&emsp;: Class1<br>
												</td>
												<td>Effective Date&emsp;&emsp;&emsp;: 16/01/2016<br>
													Expiration Date &emsp;&emsp;: 20/09/2016<br>
													Create date&emsp;&emsp;&emsp;&emsp;: 31/07/2016<br>
													Last changed date&nbsp;&nbsp;&nbsp;: 16/01/2016<br>
													Last changed by&emsp;&emsp;: Snehal
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
									      		<td>Material ID &emsp;&emsp;&nbsp;&emsp;&emsp;: MA001SA <br>
									      			Material Name &nbsp;&nbsp;&emsp;&emsp;: Unlablled Vial <br>
									      			Detail &emsp;&emsp;&emsp;&emsp;&nbsp;&nbsp;&emsp;&emsp;: This is material detail.<br>
									      			Material Type &emsp;&emsp;&emsp;: End Item<br>
									      		</td>
										      	<td>Default Quantity&emsp;&emsp;: 10<br>
													Status &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;: New<br>
													Recipe/Version &emsp;&emsp;: 3.02<br>
													Storage class&emsp;&emsp;&emsp;: Class1<br>
									      		</td>
										      	<td>Effective Date&emsp;&emsp;&emsp;: 08/01/2016<br>
										      		Expiration Date &emsp;&emsp;: 20/09/2016<br>
													Create date&emsp;&emsp;&emsp;&emsp;: 31/07/2016<br>
													Last changed date&nbsp;&nbsp;&nbsp;: 08/01/2016<br>
													Last changed by&emsp;&emsp;: Snehal
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
	</div>
</body>
</html>