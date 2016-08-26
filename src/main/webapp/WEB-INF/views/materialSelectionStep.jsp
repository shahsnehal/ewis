<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page session="false"%>
<html>
<head>
	<jsp:directive.include file="include_header_scripts.jsp" />
	<title>Material Selection Step</title>
</head>
<body style="margin: 0">
	<jsp:include page="header.jsp"></jsp:include>
	<div class="container-fluid">
		<div class="row">
			<jsp:include page="leftNavigation.jsp">
				<jsp:param value="recipeManagementMenu" name="selectMenuItem"/>
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
				<div class="panel panel-primary">
				
				<div class="panel-heading">Material Selection</div>
				
				<div class="panel-body">
				
				<form action="saveMaterialStep" class="form-horizontal" method="post" id="saveMaterialStep">
					<div class="form-group">
						<label  class="control-label col-sm-2" >Instruction Text:</label>
						<div class="col-sm-8">
							<input type="text" name="instructionText" class="form-control" id="instructionText" value="${instructionText}" placeholder="Instruction Text">
						</div>
					</div>
					<div class="materialParentDiv">
						<div class="materialChildDiv"> 
							
							<div class="form-group">
						      <label class="control-label col-sm-2" >Material :</label>
						      <div class="col-sm-8">
							  		<select class="form-control" name="Material[]">
										<option value="">Material 1</option>
										<option value="">Material 2</option>
										<option value="">Material 3</option>
										<option value="">Material 4</option>
									</select>
							  </div>
							  <div class="col-sm-1">
							  <button type="button" class="removeMaterialForm btn btn-danger btn-sm " style="display: none;"><span class="glyphicon glyphicon-remove"></span></button>
							  </div>
							</div>
					    </div>
					 </div>   
					 <div class="materialExtraDiv"></div>
				    <div align="right">
			    		<button type="button" class="btn btn-default" id="addNewMaterialBtn">New Material</button>
		    		</div>
				    <div class="form-group">
						<label  class="control-label col-sm-2" >Flow Steps:</label>
						<div class="col-sm-8">
							<div class="radio">
							  <label><input type="radio" name="optradio">Next</label>
							</div>
							<div class="radio">
							  <label><input type="radio" name="optradio">Cancel</label>
							</div>
							<div class="radio">
							  <label><input type="radio" name="optradio">On Hold</label>
							</div>
							<div class="radio">
							  <label><input type="radio" name="optradio">Reject</label>
							</div>
						</div>
					</div>
					<div class="form-group">
			      		<label class="control-label col-sm-2" >Assignee :</label>
		      			<div class="col-sm-8">
					  		<select class="form-control" name="Assignee[]">
								<option value="">Snehal</option>
								<option value="">Kushal</option>
								<option value="">Group1</option>
								<option value="">Group2</option>
							</select>
					  	</div>
					</div>
					<div class="modal-footer">
			        	<button type="submit" class="btn btn-primary btn-sm" onclick="formSubmit('saveMaterialStep')" data-dismiss="modal" id="saveBtn" >Save</button>
			      	</div>
		   		</form>
				<br>
				</div>
				
			</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
$(document).ready(function() {
	
	var equipmentChildDiv = $(".materialParentDiv").children();
	
	$("#addNewMaterialBtn").click(function(){
		
		equipmentChildDiv.clone(true,true).appendTo(".materialExtraDiv");	
		$(".materialExtraDiv .materialChildDiv:last-child .removeMaterialForm").css("display","inline-block");
		
	});
	
	$(".removeMaterialForm").click(function(){
  		$(this).closest('.materialChildDiv').remove();
     });
	
});

</script>
<jsp:directive.include file="include_body_scripts.jsp" />
</body>
</html>