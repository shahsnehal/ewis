<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page session="false"%>
<html>
<head>
	<jsp:directive.include file="include_header_scripts.jsp" />
	<title>Equipment Selection Step</title>
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
				
				<div class="panel-heading">Equipment Selection</div>
				
				<div class="panel-body">
				
				<form action="saveEquipmentStep" class="form-horizontal" method="post" id="saveEquipmentStep">
					<div class="form-group">
						<label  class="control-label col-sm-2" >Instruction Text:</label>
						<div class="col-sm-8">
							<input type="text" name="instructionText" class="form-control" id="instructionText" value="${instructionText}" placeholder="Instruction Text">
						</div>
					</div>
					<div class="equipmentParentDiv">
						<div class="equipmentChildDiv"> 
							
							<div class="form-group">
						      <label class="control-label col-sm-2" >Equipment :</label>
						      <div class="col-sm-8">
							  		<select class="form-control" name="Equipment[]">
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
			        	<button type="submit" class="btn btn-primary btn-sm" onclick="formSubmit('saveEquipmentStep')" data-dismiss="modal" id="saveBtn" >Save</button>
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