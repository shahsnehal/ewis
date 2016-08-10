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
	
		<div class="col-sm-2">
			<ul class="nav nav-pills nav-stacked">
			    <li><a href="#">Home</a></li>
			    <li class="active"><a href="${pageContext.request.contextPath}/material">Material </a></li>
			    <li><a href="${pageContext.request.contextPath}/inventory">Inventory </a></li>
			    <li><a href="${pageContext.request.contextPath}/order">Order Management </a></li>
			    <li><a href="${pageContext.request.contextPath}/areaManagement">Area Management </a></li>
			 </ul>
		</div>
	
		<div class="col-sm-10">
		
			<ol class="breadcrumb">
			  <li><a href="#">Home</a></li>
			  <li>Material</li>
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
			
			<h2>Material List </h2><br>
			
			<table class="table table-striped table-bordered table-hover" id="materialTable">
		    <thead>
		      <tr>
		      	<th>Material ID</th>
		        <th>Material Name</th>
		        <th>Material Type</th>
		        <th>Status</th>
		        <th>Expiration  Date</th>
		        <th>Last changed date</th>
		        <th>Last changed by</th>
		      </tr>
		    </thead>
		    <tbody>
		      <tr>
		        <td>MA001SA</td>
		        <td>Material 1</td>
		        <td>Type1</td>
		        <td>New</td>
		        <td>09/20/2016</td>
		        <td>08/01/2016</td>
		        <td>User1</td>
		      </tr>
		      <tr>
		        <td>MA002SA</td>
		        <td>Material 2</td>
		        <td>Type2</td>
		        <td>New</td>
		        <td>04/30/2017</td>
		        <td>08/04/2016</td>
		        <td>User2</td>
		      </tr>
		      <tr>  
		        <td>MA003SA</td>
		        <td>Material 3</td>
		        <td>Type1</td>
		        <td>Obsolete</td>
		        <td>02/01/2017</td>
		        <td>08/01/2016</td>
		        <td>User3</td>
		      </tr>
		    </tbody>
		  </table>
		  
		 	<div id="context-menu">
	      	<ul class="dropdown-menu" role="menu">
            <li><a tabindex="-1">Open attributes/Properties</a></li>
	           <li><a tabindex="-1">Copy</a></li>
	           <li class="divider"></li>
	           <li><a tabindex="-1">Where used</a></li>
	           <li><a tabindex="-1">Check out</a></li>
	           <li class="divider"></li>
	           <li><a tabindex="-1">Export</a></li>
	           <li class="divider"></li>
	           <li><a tabindex="-1">Report</a></li>
	           <li><a tabindex="-1">Obsolete</a></li>
	           <li><a tabindex="-1">Delete</a></li>
	      	</ul>
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
            var name = $(row.children('*')[1]).text();
            var action = $(e.target).text();
        	
        	var notificationMessage = "";
        	
            if(action == "Copy"){
            	window.location.href = location.href.substr(0, (location.href).lastIndexOf('/'))+"/editMaterial";
            }else if(action == "Obsolete"){
            	var response = confirm("Are you sure? You want obsolate " + name + "!");
            	if (response == true) {
            		notificationMessage = name + " obsolated successfully"
            	}
            }else if(action == "Delete"){
            	var response = confirm("Are you sure? You want delete " + name + "!");
            	if (response == true) {
            		notificationMessage = name + " deleted successfully"
            	}
            }else if(action == "Open attributes/Properties"){
            	window.location.href = location.href.substr(0, (location.href).lastIndexOf('/'))+"/materialAttributes";
            }else if(action == "Export"){
            	window.open(location.href.substr(0, (location.href).lastIndexOf('/'))+'/resources/exportMaterial.xml', '_blank');
            }else if (action == "Check out"){
            	window.location.href = location.href.substr(0, (location.href).lastIndexOf('/'))+"/editMaterial";
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
