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
			
			<h2>Material List </h2><br>
			
			<table class="table table-striped table-bordered table-hover" id="materialTable">
		    <thead>
		      <tr>
		      	<th>Material ID</th>
		        <th>Material Name</th>
		        <th>Material Type</th>
		        <th>Recipe/Version</th>
		        <th>Status</th>
		        <th>Expiration  Date</th>
		        <th>Last changed date</th>
		        <th>Last changed by</th>
		      </tr>
		    </thead>
		    <tbody>
		      <tr>
		        <td>MA001SA</td>
		        <td>Unlablled Vial</td>
		        <td>End Item</td>
		        <td>1.2</td>
		        <td>New</td>
		        <td>09/20/2016</td>
		        <td>08/01/2016</td>
		        <td>Snehal</td>
		      </tr>
		      <tr>
		        <td>MA002SA</td>
		        <td>Product lable</td>
		        <td>Raw Material</td>
		        <td></td>
		        <td>New</td>
		        <td>04/30/2017</td>
		        <td>08/04/2016</td>
		        <td>Kushal</td>
		      </tr>
		      <tr>  
		        <td>MA003SA</td>
		        <td>Carton</td>
		        <td>Intermediate</td>
		        <td>3.04</td>
		        <td>Obsolete</td>
		        <td>02/01/2017</td>
		        <td>08/01/2016</td>
		        <td>Snehal</td>
		      </tr>
		    </tbody>
		  </table>
		  
		 	<div id="context-menu">
	      	<ul class="dropdown-menu" role="menu">
            <li><a tabindex="-1">Attributes/Properties</a></li>
	           <li><a tabindex="-1">Copy</a></li>
	           <li class="divider"></li>
	           <li><a tabindex="-1">Where used</a></li>
	           <li><a tabindex="-1">Check out</a></li>
	           <li><a tabindex="-1">Set Recipe/Version</a></li>
	           <li class="divider"></li>
	           <li><a tabindex="-1">Export</a></li>
	           <li class="divider"></li>
	           <li><a tabindex="-1">Report</a></li>
	           <li><a tabindex="-1">Obsolete</a></li>
	           <li><a tabindex="-1">Delete</a></li>
	      	</ul>
	      </div>
	      
	      <div id="addRecepiModal" class="modal fade" role="dialog">
			  <div class="modal-dialog">
			    <div class="modal-content">
			    	
			    	<form action="addRecepiData" id="addRecepiForm" method="get">
			    	
				      <div class="modal-header">
				        <button type="button" class="close" data-dismiss="modal">&times;</button>
				        <h4 class="modal-title">Set Recepi/Version</h4>
				      </div>
				     
				      <div class="modal-body">
				        
				        <label>Material ID : </label> <span id="materialIdLabel"></span><br>
				        <label>Material Name : </label> <span id="materialNameLabel"></span><br>
				        <label>Material Status : </label> <span id="materialStatusLabel"></span>
				        <hr>
				        
				        <div class="form-group">
					      <label>Recipe\Version</label>
					      <input type="text" id="recipe" class="form-control">
					    </div>
				        
				      </div>
				     
				      <div class="modal-footer">
				        <button type="submit" class="btn btn-primary btn-sm" data-dismiss="modal"
				         onclick='showNotification("Recipe/Version " + document.getElementById("recipe").value + " set on material  " + $("span#materialNameLabel").text())'>
				         Set</button>
				      </div>
			      
			      </form>
			    
			    </div>
			  </div>
			</div>
	      
		 </div>
	</div>
	</div>
	
	

<script>
$(function () {

	$('#materialTable').contextmenu({
        target: '#context-menu',
        scopes: 'tbody > tr',
        onItem: function (row, e) {
            var action = $(e.target).text();
            
            var materialId = $(row.children('*')[0]).text();
            var materilaName = $(row.children('*')[1]).text();
            var materialType = $(row.children('*')[2]).text();
            var recipe = $(row.children('*')[3]).text();
            var status = $(row.children('*')[4]).text();
        	
        	var notificationMessage = "";
        	
            if(action == "Copy"){
            	window.location.href = location.href.substr(0, (location.href).lastIndexOf('/'))+"/editMaterial";
            }else if(action == "Obsolete"){
            	var response = confirm("Are you sure? You want obsolate " + materilaName + "!");
            	if (response == true) {
            		notificationMessage = materilaName + " obsolated successfully"
            	}
            }else if(action == "Delete"){
            	var response = confirm("Are you sure? You want delete " + materilaName + "!");
            	if (response == true) {
            		notificationMessage = materilaName + " deleted successfully"
            	}
            }else if(action == "Attributes/Properties"){
            	window.location.href = location.href.substr(0, (location.href).lastIndexOf('/'))+"/materialAttributes";
            }else if(action == "Export"){
            	window.open(location.href.substr(0, (location.href).lastIndexOf('/'))+'/resources/exportMaterial.xml', '_blank');
            }else if (action == "Check out"){
            	window.location.href = location.href.substr(0, (location.href).lastIndexOf('/'))+"/editMaterial";
            }else if (action == "Set Recipe/Version"){
				
            	$('#addRecepiModal').on('show.bs.modal', function (event) {
          		  var modal = $(this)
          		  modal.find('.modal-body #materialIdLabel').html(materialId)
           		  modal.find('.modal-body #materialNameLabel').html(materilaName)
           		  modal.find('.modal-body #materialStatusLabel').html(status)
           		  modal.find('.modal-body #recipe').val(recipe)
	          	})
	          	$('#addRecepiModal').modal('toggle');
            	
            }
            showNotification(notificationMessage)
        }
    });
});

$(document).ready(function() {
    
	$('#materialTable').DataTable({
        dom: 'l<"toolbar">frtip',
        initComplete: function(){
           $("#materialTable_filter").append('&nbsp <div class="btn-group"> <label class="btn btn-primary btn-sm">'+
		        '<span class="glyphicon glyphicon-import"></span> Import <input type="file" id="import" style="display: none;">'+
			    '</label> <a href="addMaterial" class="btn btn-primary btn-sm">'+
				'<span class="glyphicon glyphicon-plus"></span> Add'+
				'</a> </div>'); 
			$("#materialTable_length").css("float","left");
        }
     });
    
    var importFile = document.getElementById("import");
	importFile.onclick = function () {
	    this.value = null;
	};
	
	importFile.onchange = function () {
	    var notificationMessage = this.value.substr((this.value).lastIndexOf('\\')+1)+" imported successfully"
	    showNotification(notificationMessage)
	};
} );
</script>
<jsp:directive.include file="include_body_scripts.jsp" />
</body>
</html>
