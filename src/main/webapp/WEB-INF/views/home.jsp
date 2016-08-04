<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page session="false"%>
<html>
<head>

	<link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css"	rel="stylesheet">
	<%-- <link href="${pageContext.request.contextPath}/resources/css/customized.css"	rel="stylesheet"> --%>
	<title>Home</title>
	<style type="text/css">
	#contextMenu{
	    position: absolute;
	    display:none;
	}
	</style>
	<script	src="${pageContext.request.contextPath}/resources/js/jquery-1.9.1.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/bootstrap-contextmenu.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/alert.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
	<script>
		$(document).ready(function(){
			var importFile = document.getElementById("import");
			importFile.onclick = function () {
			    this.value = null;
			};
			importFile.onchange = function () {
			  //  alert(this.value);
			    var notificationMessage = this.value.substr((this.value).lastIndexOf('\\')+1)+" imported successfully"
			    showNotification(notificationMessage)
			    
			};
			/* $("button").click(function(){
		    	alert("The button was clicked.");
		    }); */
		});
	</script> 

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
			
			<h2 id="materialList">Material List </h2><br>
			
			<div align="right">
			    <label class="btn btn-primary btn-sm">
			        <span class="glyphicon glyphicon-import"></span> Import <input type="file" id="import" style="display: none;">
			    </label>
			    <a href="addMaterial" class="btn btn-primary btn-sm" >
					<span class="glyphicon glyphicon-plus"></span> Add
				</a>
			</div>
			
			<table class="table table-hover" id="materialTable">
		    <thead>
		      <tr>
		      	<th>Material ID</th>
		        <th>Material Name</th>
		        <th>Status</th>
		        <th>Effective Date</th>
		        <th>Expiration  Date</th>
		        <th>Last changed date</th>
		        <th>Last changed by</th>
		      </tr>
		    </thead>
		    <tbody>
		      <tr>
		        <td>MA001SA</td>
		        <td>Material 1</td>
		        <td>New</td>
		        <td>08/01/2016</td>
		        <td>09/20/2016</td>
		        <td>08/01/2016</td>
		        <td>User1</td>
		      </tr>
		      <tr>
		        <td>MA002SA</td>
		        <td>Material 2</td>
		        <td>New</td>
		        <td>08/01/2016</td>
		        <td>04/30/2017</td>
		        <td>08/04/2016</td>
		        <td>User2</td>
		      </tr>
		      <tr>  <!-- data-toggle="context" data-target="#context-menu" -->
		        <td>MA003SA</td>
		        <td>Material 3</td>
		        <td>Obsolete</td>
		        <td>08/01/2016</td>
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
            	notificationMessage = name + " copied successfully";
            }else if(action == "Obsolete"){
            	notificationMessage = name + " obsolated successfully";
            }else if(action == "Delete"){
            	notificationMessage = name + " deleted successfully";
            }else if(action == "Open attributes/Properties"){
            	window.location.href = location.href.substr(0, (location.href).lastIndexOf('/'))+"/materialAttributes";
            }else if(action == "Export"){
            	window.open(location.href.substr(0, (location.href).lastIndexOf('/'))+'/resources/exportMaterial.xml', '_blank');
            }
            
            showNotification(notificationMessage)
            
            //alert('You right clicked on ' + name + '\'s row and selected menu item "' + action  + '".');
        }
    });
});

function showNotification(notificationMessage){
	
	//Remove Existing Notification
    var notification = document.getElementById("notification");
	if (notification != null) {
		notification.parentNode.removeChild(notification);
	}
	
	if(notificationMessage != ""){
    	
        var div = document.createElement("div");
        div.id = "notification"
        div.innerHTML = '<div class="alert alert-success" >'
		  	+ '<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>'
		  	+ notificationMessage
			+ '</div>';
        
        document.getElementById("notificationArea").appendChild(div);
    }
}
</script>




</body>
</html>
