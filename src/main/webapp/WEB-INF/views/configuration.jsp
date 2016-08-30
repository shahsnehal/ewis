<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page session="false"%>
<html>
<head>
	<jsp:directive.include file="include_header_scripts.jsp" />
	<title>Configuration</title>
</head>
<body style="margin: 0">
	<jsp:include page="header.jsp"></jsp:include>
	<div class="container-fluid">
		<div class="row">
			<jsp:include page="leftNavigation.jsp">
				<jsp:param value="configuration" name="selectMenuItem"/>
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
				<h2>Configurations</h2><br>
				<form action="saveConfiguration" id="saveConfigurationForm" method="get">
					<table class="table table-striped table-bordered table-hover" border="2" id="custom-table">
					  <thead>
					    <tr>
					      <th>CODE</th>
					      <th>VALUE</th>
					    </tr>
					  </thead>
					  <tbody>
					    <tr class="active">
					      <td data-editable="false">MATERIAL_TYPE</td>
					      <td>TYPE1; TYPE2; TYPE3;</td>
					    </tr>
					    <tr class="active">
					      <td data-editable="false">STORAGE_CLASS</td>
					      <td>CLASS1; CLASS2;</td>
					    </tr>
					    <tr class="active">
					      <td data-editable="false">FROM_EMAIL</td>
					      <td>test@yahoo.com</td>
					    </tr>
					    <tr class="active">
					      <td data-editable="false">TO_EMAIL</td>
					      <td>abc@xyz.com</td>
					    </tr>
					  </tbody>
					</table>
					<button type="submit" class="btn btn-primary ">Save</button>
				</form>
			</div>
		</div>
	</div>
	<script>
	$('#custom-table').datagrid({
		  inputs: {
		      select: {
		        el : $('<select class="form-control datagrid-input">'),
		        onShow:function(cell) {
		          // Set the options
		          var inputPadding = parseInt(cell.data('padding'))-1
		          $(this).val(cell.data('value'))
		        },
		        onChange:function(cell) {
		          cell.data('value', $(this).val())
		          cell.text($(this).find('option[value='+$(this).val()+']').text())
		        },
		        isChanged:function(cell) {
		          return $(this).val() != cell.data('value')
		        }
		      }
		    }
		  })
	</script>
</body>
</html>