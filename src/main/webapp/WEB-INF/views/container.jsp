<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<jsp:directive.include file="include_header_scripts.jsp" />
	<title>container</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>

<div class="container-fluid">
	<div class="row">
	
		<jsp:include page="leftNavigation.jsp">
			<jsp:param value="inventoryMenu" name="selectMenuItem"/>
		</jsp:include>
		
		<div class="col-sm-10">
		
			<ol class="breadcrumb">
			  <li><a href="#">Home</a></li>
			  <li><a href="${pageContext.request.contextPath}/inventory">Inventory </a></li>
			  <li>Container</li>
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
			
			<h2>Container list </h2>
			<h3>Lot Id : ${ lotId } </h3> <br>
			
			<table class="table table-striped table-bordered table-hover" id="containerTable">
		    <thead>
		      <tr>
		      	<th>Lot ID</th>
		      	<th>Container ID</th>
		      	<th>Material ID</th>
		      	<th>Quantity</th>
		      	<th>QOM</th>
		      	<th>Area</th>
		        <th>Location</th>
		        <th>QC Status</th>
		      </tr>
		    </thead>
		    <tbody>
		    	<tr>
		    		<td>${ lotId }</td>
			      	<td>CON001</td>
			      	<td>MA002SA</td>
			      	<td>100</td>
			      	<td>kg</td>
			        <td>Area1</td>
			        <td>Location1</td>
			        <td>Status 1</td>
			  	</tr>
		      	<tr>
		      		<td>${ lotId }</td>
			      	<td>CON002</td>
			      	<td>MA002SA</td>
			      	<td>50</td>
			      	<td>kg</td>
			        <td>Area3</td>
			        <td>Location3</td>
			        <td>Status 1</td>
			  	</tr>
		      	<tr>
		      		<td>${ lotId }</td>
			      	<td>CON003</td>
			      	<td>MA002SA</td>
			      	<td>130</td>
			      	<td>kg</td>
			        <td>Area5</td>
			        <td>Location5</td>
			        <td>Status 2</td>
		      	</tr>
		      	<tr>
		      		<td>${ lotId }</td>
			      	<td>CON004</td>
			      	<td>MA002SA</td>
			      	<td>30</td>
			      	<td>kg</td>
			        <td>Area8</td>
			        <td>Location8</td>
			        <td>Status 3</td>
		      	</tr>
		      	<tr>
		      		<td>${ lotId }</td>
			      	<td>CON005</td>
			      	<td>MA002SA</td>
			      	<td>70</td>
			      	<td>kg</td>
			        <td>Area9</td>
			        <td>Location9</td>
			        <td>Status 3</td>
		      	</tr>
	    	</tbody>
		  </table>
		  
		 	<div id="context-menu">
	      	<ul class="dropdown-menu" role="menu">
	           <li><a tabindex="-1">Adjust Quantity</a></li>
	           <li><a tabindex="-1">Waste Quantity</a></li>
	           <li class="divider"></li>
	           <li><a tabindex="-1">Move Container</a></li>
	          <!--  <li class="divider"></li>
	           <li><a tabindex="-1">View</a></li> -->
	      	</ul>
	      </div>
	      
	      <!-- Adjust Inventory Modal -->
			<div id="adjustQuantityModal" class="modal fade" role="dialog">
			  <div class="modal-dialog">
			    <div class="modal-content">
			    	
			    	<form action="#" id="adjustInventoryForm" method="get">
			    	
				      <div class="modal-header">
				        <button type="button" class="close" data-dismiss="modal">&times;</button>
				        <h4 class="modal-title">Adjust quantity</h4>
				      </div>
				     
				      <div class="modal-body">
				        
				        <label>Container ID : </label> <span id="adjustContainerIdLabel"></span><br>
				        <label>Material ID : </label> <span id="adjustMaterialIdLabel"></span><br>
				        <label>Quantity : </label> <span id="quantityLabel"></span>
				        <hr>
				        
				        <div class="form-group">
					      <label>New Quantity:</label>
					      <input type="number"  min="0" id="adjustedQuantity" class="form-control" >
					    </div>
				        
				      </div>
				     
				      <div class="modal-footer">
				        <button type="submit" class="btn btn-primary btn-sm" data-dismiss="modal" 
				        onclick='showNotification(document.getElementById("adjustedQuantity").value + " quantity set for container " + $("span#adjustContainerIdLabel").text())'>
				        Update</button>
				      </div>
			      
			      </form>
			    
			    </div>
			  </div>
			</div>
	      
	      
	      <!-- waste quantity Modal -->
			<div id="wasteQuantityModal" class="modal fade" role="dialog">
			  <div class="modal-dialog">
			    <div class="modal-content">
			    	
			    	<form action="#" id="wasteQuantityForm" method="get">
			    	
				      <div class="modal-header">
				        <button type="button" class="close" data-dismiss="modal">&times;</button>
				        <h4 class="modal-title">Waste quantity</h4>
				      </div>
				     
				      <div class="modal-body">
				        
				        <label>Container ID : </label> <span id="westedContainerIdLabel"></span><br>
				        <label>Material ID : </label> <span id="wastedMaterialIdLabel"></span><br>
				        <label>Quantity : </label> <span id="quantityLabel"></span>
				        <hr>
				        
				        <div class="form-group">
					      <label>Wasted Quantity:</label>
					      <input type="number"  min="0" id="wastedQuantity" class="form-control" >
					    </div>
				        
				      </div>
				     
				      <div class="modal-footer">
				        <button type="submit" class="btn btn-primary btn-sm" data-dismiss="modal"
				         onclick='showNotification(document.getElementById("wastedQuantity").value + " quantity wasted from container " + $("span#westedContainerIdLabel").text())'>
				         Update</button>
				      </div>
			      
			      </form>
			    
			    </div>
			  </div>
			</div>
			
			<!-- Move lot Modal -->
			<div id="moveContainerModal" class="modal fade" role="dialog">
			  <div class="modal-dialog">
			    <div class="modal-content">
			    	
			    	<form action="moveContainerData" id="moveContainerForm" method="get">
			    	
				      <div class="modal-header">
				        <button type="button" class="close" data-dismiss="modal">&times;</button>
				        <h4 class="modal-title">Move container</h4>
				      </div>
				     
				      <div class="modal-body">
				        
				        <label>Container ID : </label> <span id="moveContainerIdLabel"></span><br>
				        <label>Material ID : </label> <span id="moveMaterialIdLabel"></span><br>
				        <label>Quantity : </label> <span id="quantityLabel"></span><br>
				        <label>Current area : </label> <span id="areaLabel"></span><br>
				        <label>Current location : </label> <span id="locationLabel"></span>
				        <hr>
				        
				        <div class="form-group">
					      <label>Target area : </label>
					      <select class="form-control" name="targetArea" id="targetArea">
							<option value="Area 1" >Area 1</option>
							<option value="Area 2" >Area 2</option>
							<option value="Area 3" >Area 3</option>
							<option value="Area 4" >Area 4</option>
							<option value="Area 5" >Area 5</option>
							<option value="Area 6" >Area 6</option>
						  </select>
					    </div>
					    
					     <div class="form-group">
					      <label>Target location : </label>
					      <select class="form-control" name="targetLocation" id="targetLocation">
							<option value="location 1" >Location 1</option>
							<option value="location 2" >Location 2</option>
							<option value="location 3" >Location 3</option>
							<option value="location 4" >Location 4</option>
							<option value="location 5" >Location 5</option>
							<option value="location 6" >Location 6</option>
						  </select>
					    </div>
				        
				      </div>
				     
				      <div class="modal-footer">
				        <button type="submit" class="btn btn-primary btn-sm" data-dismiss="modal"
				         onclick='showNotification( "Container " + $("span#moveContainerIdLabel").text() + " moved from " + $("span#locationLabel").text() + " to " + document.getElementById("targetLocation").value + "" )'>
				         Move </button>
				      </div>
			      
			      </form>
			    
			    </div>
			  </div>
			</div>
	      
	      
	      <!-- Container Detail Modal -->
			<div id="containerDetailModal" class="modal fade" role="dialog">
			  <div class="modal-dialog">
			    <div class="modal-content">
			    	
				      <div class="modal-header">
				        <button type="button" class="close" data-dismiss="modal">&times;</button>
				        <h4 class="modal-title">Container detail</h4>
				      </div>
				     
				      <div class="modal-body">
				      
				        <label>Lot ID : </label> <span id="detailLotID"></span><br>
				        <label>Container ID : </label> <span id="detailContainerID"></span><br>
				        <label>Quantity : </label> <span id="detailQuantity"></span>
				        <label>UOM : </label> <span id="detailUOM"></span>
				        <label>QC Status : </label> <span id="detailQCStatus"></span>
				        <label>Area : </label> <span id="detailArea"></span>
				        <label>Location : </label> <span id="detailLocation"></span>
				        
				      </div>
				     
				      <div class="modal-footer">
				        <button type="submit" class="btn btn-primary btn-sm" data-dismiss="modal">Close</button>
				      </div>

			    </div>
			  </div>
			</div>
	      
		 </div>
	</div>
	</div>
<script>

$(function () {

	$('#containerTable').contextmenu({
        target: '#context-menu',
        scopes: 'tbody > tr',
        onItem: function (row, e) {
            var name = $(row.children('*')[0]).text();
            var action = $(e.target).text();
           
            var lotId = $(row.children('*')[0]).text();
            var containerId = $(row.children('*')[1]).text();
            var materialId = $(row.children('*')[2]).text();
            var quantity = $(row.children('*')[3]).text();
            var qom = $(row.children('*')[4]).text();
            var containerArea = $(row.children('*')[5]).text();
            var containerLocation = $(row.children('*')[6]).text();
            var qcStatus = $(row.children('*')[7]).text(); 
            
            
            
            
        	var notificationMessage = "";
        	
            if(action == "Waste Quantity"){
            	
            	$('#wasteQuantityModal').on('show.bs.modal', function (event) {
          		  var modal = $(this)

          		  modal.find('.modal-body #westedContainerIdLabel').html(containerId)
          		  modal.find('.modal-body #wastedMaterialIdLabel').html(materialId)
           		  modal.find('.modal-body #quantityLabel').html(quantity)
           		  
          		})
          		$('#wasteQuantityModal').modal('toggle');
            	
            }else if(action == "Adjust Quantity"){

            	$('#adjustQuantityModal').on('show.bs.modal', function (event) {
            		  var modal = $(this)
            		  modal.find('.modal-body #adjustContainerIdLabel').html(containerId)
            		  modal.find('.modal-body #adjustMaterialIdLabel').html(materialId)
             		  modal.find('.modal-body #quantityLabel').html(quantity)

            	})
            	$('#adjustQuantityModal').modal('toggle');
            	
            }else if(action == "Move Container"){
            	$('#moveContainerModal').on('show.bs.modal', function (event) {
            		  var modal = $(this)
            		  modal.find('.modal-body #moveContainerIdLabel').html(containerId)
            		  modal.find('.modal-body #moveMaterialIdLabel').html(materialId)
             		  modal.find('.modal-body #quantityLabel').html(quantity)
             		  modal.find('.modal-body #areaLabel').html(containerArea)
             		  modal.find('.modal-body #locationLabel').html(containerLocation)
            		})
            	$('#moveContainerModal').modal('toggle');
            	
            }else if(action == "View"){
            	
            	$('#containerDetailModal').on('show.bs.modal', function (event) {
          		  var modal = $(this)
          		  modal.find('.modal-body #detailContainerIdLabel').html(containerId)
          		  modal.find('.modal-body #detailMaterialIdLabel').html(materialId)
           		  modal.find('.modal-body #quantityLabel').html(quantity)
           		  modal.find('.modal-body #areaLabel').html(containerArea)
           		  modal.find('.modal-body #locationLabel').html(containerLocation)
          		})
          		$('#containerDetailModal').modal('toggle');
            	
          	}
            
            showNotification(notificationMessage)
            
            //alert('You right clicked on ' + name + '\'s row and selected menu item "' + action  + '".');
        }
    });
});

$(document).ready(function() {
    
	$('#containerTable').DataTable();
});

</script>
<jsp:directive.include file="include_body_scripts.jsp" />	
</body>
</html>